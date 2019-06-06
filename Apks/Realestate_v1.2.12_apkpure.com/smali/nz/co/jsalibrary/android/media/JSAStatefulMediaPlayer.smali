.class public Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "JSAStatefulMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;,
        Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_ON_BUFFERING_UPDATE_NOTIFY_PERCENT:I = 0x1


# instance fields
.field private mBufferPercent:I

.field private mBuffering:Z

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mDataSourceOrigin:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

.field private mLogStateChange:Z

.field private mNextMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnBufferingChangeListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnBufferingUpdateNotifyPercent:I

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnLoopingCompletionListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;

.field private mOnPreparedData:Ljava/lang/Object;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnStateChangeListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;

.field private mPriorToErrorState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field private mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;-><init>(Z)V

    .line 252
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "logStateChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 92
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingUpdateNotifyPercent:I

    .line 255
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 256
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 257
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 258
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 259
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 261
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mLogStateChange:Z

    .line 262
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mLogStateChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->logState()V

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mCallbackHandler:Landroid/os/Handler;

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$1000(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1100(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnLoopingCompletionListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBufferPercent:I

    return v0
.end method

.method static synthetic access$1302(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBufferPercent:I

    return p1
.end method

.method static synthetic access$1400(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingUpdateNotifyPercent:I

    return v0
.end method

.method static synthetic access$1500(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBuffering:Z

    return v0
.end method

.method static synthetic access$1602(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBuffering:Z

    return p1
.end method

.method static synthetic access$1700(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingChangeListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;

    return-object v0
.end method

.method static synthetic access$1800(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnStateChangeListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    return-object v0
.end method

.method static synthetic access$700(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setPriorToErrorState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    return-void
.end method

.method static synthetic access$800(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    return-void
.end method

.method static synthetic access$900(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method public static create(Landroid/os/Handler;Z)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "logStateChange"    # Z

    .prologue
    .line 282
    const/4 v3, 0x1

    new-array v1, v3, [Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .line 283
    .local v1, "result":[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;-><init>()V

    .line 284
    .local v0, "lock":Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->lock()V

    .line 286
    new-instance v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;

    invoke-direct {v2, v1, p1, v0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;-><init>([Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;ZLnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;)V

    .line 293
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 296
    :goto_0
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->waitOnLock()V

    .line 297
    const/4 v3, 0x0

    aget-object v3, v1, v3

    return-object v3

    .line 294
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private internalResetBufferPercent()V
    .locals 1

    .prologue
    .line 1500
    monitor-enter p0

    .line 1501
    :try_start_0
    iget v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBufferPercent:I

    if-nez v0, :cond_0

    monitor-exit p0

    .line 1511
    :goto_0
    return-void

    .line 1502
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBufferPercent:I

    .line 1503
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$5;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$5;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->runOnCallbackHandler(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1503
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private internalResetBuffering()V
    .locals 1

    .prologue
    .line 1481
    monitor-enter p0

    .line 1482
    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBuffering:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 1492
    :goto_0
    return-void

    .line 1483
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBuffering:Z

    .line 1484
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$4;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$4;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->runOnCallbackHandler(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1484
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private runOnCallbackHandler(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1538
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    .line 1539
    .local v0, "holdsLock":Z
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1541
    :goto_0
    return-void

    .line 1540
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setNextMediaPlayer(Landroid/media/MediaPlayer;ZZ)V
    .locals 9
    .param p1, "next"    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "looping"    # Z
    .param p3, "nextOverride"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1064
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    move v2, v3

    .line 1065
    .local v2, "ignoreNext":Z
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move v1, v3

    .line 1067
    .local v1, "ignoreLooping":Z
    :goto_1
    if-eqz v2, :cond_4

    const-string v6, "non-null next media player and looping were requested. next media player now requested null."

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1072
    :cond_0
    :goto_2
    if-eqz v2, :cond_5

    const/4 v4, 0x0

    .line 1073
    .local v4, "newNext":Landroid/media/MediaPlayer;
    :goto_3
    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    .line 1075
    .local v3, "newLooping":Z
    :goto_4
    monitor-enter p0

    .line 1079
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSetNextMediaPlayer()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1080
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t set next media player in state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1086
    :cond_1
    :goto_5
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSetLooping()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t set looping in state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    return-void

    .end local v1    # "ignoreLooping":Z
    .end local v2    # "ignoreNext":Z
    .end local v3    # "newLooping":Z
    .end local v4    # "newNext":Landroid/media/MediaPlayer;
    :cond_2
    move v2, v5

    .line 1064
    goto :goto_0

    .restart local v2    # "ignoreNext":Z
    :cond_3
    move v1, v5

    .line 1065
    goto :goto_1

    .line 1069
    .restart local v1    # "ignoreLooping":Z
    :cond_4
    if-eqz v1, :cond_0

    const-string v6, "non-null next media player and looping were requested. looping now requested false."

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    goto :goto_2

    :cond_5
    move-object v4, p1

    .line 1072
    goto :goto_3

    .restart local v4    # "newNext":Landroid/media/MediaPlayer;
    :cond_6
    move v3, v5

    .line 1073
    goto :goto_4

    .line 1081
    .restart local v3    # "newLooping":Z
    :cond_7
    :try_start_2
    iget-object v5, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eq v4, v5, :cond_1

    .line 1082
    invoke-super {p0, v4}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 1083
    iput-object v4, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error calling setNextMediaPlayer in state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with next: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", looping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and next override: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1095
    throw v0

    .line 1097
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1089
    :cond_8
    :try_start_4
    invoke-super {p0, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6
.end method

.method private setPriorToErrorState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V
    .locals 0
    .param p1, "state"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .prologue
    .line 1109
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mPriorToErrorState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .line 1110
    return-void
.end method

.method private setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V
    .locals 3
    .param p1, "state"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "state cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_0
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p1, v1, :cond_1

    monitor-exit p0

    .line 345
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .line 321
    .local v0, "oldState":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .line 322
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->logState()V

    .line 338
    new-instance v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;

    invoke-direct {v1, p0, v0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->runOnCallbackHandler(Ljava/lang/Runnable;)V

    .line 344
    monitor-exit p0

    goto :goto_0

    .end local v0    # "oldState":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public attachAuxEffect(I)V
    .locals 5
    .param p1, "effectId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canAttachAuxEffect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t attach aux effect in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 372
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling attachAuxEffect in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 379
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized canAttachAuxEffect()Z
    .locals 2

    .prologue
    .line 1207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canGetCurrentPosition()Z
    .locals 2

    .prologue
    .line 1211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canGetDuration()Z
    .locals 2

    .prologue
    .line 1215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canGetVideoSize()Z
    .locals 2

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canPause()Z
    .locals 2

    .prologue
    .line 1229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canPrepare()Z
    .locals 2

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSeekTo()Z
    .locals 2

    .prologue
    .line 1237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSetAudioSessionId()Z
    .locals 2

    .prologue
    .line 1241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSetAudioStreamType()Z
    .locals 2

    .prologue
    .line 1245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSetLooping()Z
    .locals 2

    .prologue
    .line 1225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSetNextMediaPlayer()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSetVolume()Z
    .locals 2

    .prologue
    .line 1249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canStart()Z
    .locals 2

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canStop()Z
    .locals 2

    .prologue
    .line 1257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBufferPercent()I
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBufferPercent:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canGetCurrentPosition()Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t get current position in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". returning zero."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 393
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :goto_0
    return v1

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling getCurrentPosition in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 400
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getDataSourceOrigin()Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mDataSourceOrigin:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    return-object v0
.end method

.method public getDuration()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canGetDuration()Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t get video duration in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". returning zero."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 414
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :goto_0
    return v1

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling getDuration in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 421
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1548
    return-object p0
.end method

.method public getLogStateChange()Z
    .locals 1

    .prologue
    .line 1270
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mLogStateChange:Z

    return v0
.end method

.method protected getNextMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getOnBufferingUpdateNotifyPercent()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingUpdateNotifyPercent:I

    return v0
.end method

.method public getOnPreparedData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnPreparedData:Ljava/lang/Object;

    return-object v0
.end method

.method public getPriorToErrorState()Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mPriorToErrorState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    return-object v0
.end method

.method public getState()Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canGetVideoSize()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t get video height in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". returning zero."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 435
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :goto_0
    return v1

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling getVideoHeight in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 442
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getVideoWidth()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canGetVideoSize()Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t get video width in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". returning zero."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 456
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :goto_0
    return v1

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling getVideoWidth in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 463
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mBuffering:Z

    return v0
.end method

.method public declared-synchronized isEnd()Z
    .locals 2

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isError()Z
    .locals 2

    .prologue
    .line 1203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 2

    .prologue
    .line 1167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 1171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPaused()Z
    .locals 2

    .prologue
    .line 1187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlaybackCompleted()Z
    .locals 2

    .prologue
    .line 1195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    return v1

    :cond_1
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling isPlaying in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 481
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized isPrepared()Z
    .locals 2

    .prologue
    .line 1179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPreparing()Z
    .locals 2

    .prologue
    .line 1175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStarted()Z
    .locals 2

    .prologue
    .line 1183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStopped()Z
    .locals 2

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected logError(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 1283
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mLogStateChange:Z

    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected logInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1288
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mLogStateChange:Z

    if-nez v0, :cond_0

    .line 1290
    :goto_0
    return-void

    .line 1289
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected logState()V
    .locals 4

    .prologue
    .line 1278
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mLogStateChange:Z

    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canPause()Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t pause in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 495
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_0
    return-void

    .line 499
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 506
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBuffering()V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling pause in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 502
    throw v0

    .line 506
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canPrepare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t prepare in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 520
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :goto_0
    return-void

    .line 524
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 531
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling prepare in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 527
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public prepareAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 559
    monitor-enter p0

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canPrepare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t prepare async in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 562
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :goto_0
    return-void

    .line 566
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 573
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling prepareAsync in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 569
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public prepareAsync(Ljava/lang/Object;)V
    .locals 0
    .param p1, "onPreparedData"    # Ljava/lang/Object;

    .prologue
    .line 549
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnPreparedData:Ljava/lang/Object;

    .line 550
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->prepareAsync()V

    .line 551
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 582
    monitor-enter p0

    .line 583
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne v1, v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :goto_0
    return-void

    .line 586
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 593
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V

    .line 594
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBuffering()V

    .line 597
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBufferPercent()V

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling release in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 589
    throw v0

    .line 594
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 606
    monitor-enter p0

    .line 607
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne v1, v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :goto_0
    return-void

    .line 610
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 617
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V

    .line 618
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBuffering()V

    .line 621
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBufferPercent()V

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling reset in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 613
    throw v0

    .line 618
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public seekTo(I)V
    .locals 5
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 630
    monitor-enter p0

    .line 631
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSeekTo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t seek in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 633
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :goto_0
    return-void

    .line 637
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling seekTo in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 640
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAudioSessionId(I)V
    .locals 5
    .param p1, "sessionId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 651
    monitor-enter p0

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSetAudioSessionId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t set session id in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 654
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_0
    return-void

    .line 658
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setAudioSessionId in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 661
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAudioStreamType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 672
    monitor-enter p0

    .line 673
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSetAudioStreamType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t set audio stream type in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 675
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :goto_0
    return-void

    .line 679
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setAudioStreamType in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 682
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v1, v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :goto_0
    return-void

    .line 698
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 705
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->URI:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V

    .line 706
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setDataSource in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 701
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 712
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 713
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v1, v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :goto_0
    return-void

    .line 716
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 723
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->URI:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V

    .line 724
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setDataSource in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 719
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v1, v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :goto_0
    return-void

    .line 733
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 740
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->FILE_DESCRIPTOR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V

    .line 741
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setDataSource in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with file descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 736
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 747
    monitor-enter p0

    .line 748
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v1, v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :goto_0
    return-void

    .line 751
    :cond_0
    :try_start_1
    invoke-super/range {p0 .. p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 758
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->FILE_DESCRIPTOR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V

    .line 759
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setDataSource in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with file descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 754
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 764
    monitor-enter p0

    .line 765
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-eq v1, v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    :goto_0
    return-void

    .line 768
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 775
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->STRING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V

    .line 776
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setDataSource in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 771
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected setDataSourceOrigin(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;)V
    .locals 1
    .param p1, "origin"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    .prologue
    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mDataSourceOrigin:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    if-ne p1, v0, :cond_0

    monitor-exit p0

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mDataSourceOrigin:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    .line 360
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLogStateChange(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1274
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mLogStateChange:Z

    .line 1275
    return-void
.end method

.method public setLooping(Z)V
    .locals 5
    .param p1, "looping"    # Z

    .prologue
    .line 795
    monitor-enter p0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSetLooping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t set looping in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 798
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    :goto_0
    return-void

    .line 802
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;ZZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 803
    :cond_1
    :try_start_3
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setLooping in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 806
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setNextMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "next"    # Landroid/media/MediaPlayer;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1010
    monitor-enter p0

    .line 1011
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSetNextMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t set next media player in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1013
    monitor-exit p0

    .line 1018
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->isLooping()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;Z)V

    .line 1017
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNextMediaPlayer(Landroid/media/MediaPlayer;Z)V
    .locals 1
    .param p1, "next"    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "looping"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1039
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;ZZ)V

    .line 1040
    return-void
.end method

.method public setOnBufferingChangeListener(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;

    .prologue
    .line 1309
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingChangeListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;

    .line 1310
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 865
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 866
    return-void
.end method

.method public setOnBufferingUpdateNotifyPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 1143
    iput p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnBufferingUpdateNotifyPercent:I

    .line 1144
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 841
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 842
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 849
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 850
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 873
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 874
    return-void
.end method

.method public setOnLoopingCompletionListener(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;

    .prologue
    .line 1346
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnLoopingCompletionListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;

    .line 1347
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 857
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 858
    return-void
.end method

.method public setOnStateChangeListener(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;

    .prologue
    .line 1297
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mOnStateChangeListener:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;

    .line 1298
    return-void
.end method

.method public setVolume(FF)V
    .locals 5
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 882
    monitor-enter p0

    .line 883
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canSetVolume()Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t set volume in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 885
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :goto_0
    return-void

    .line 889
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling setVolume in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 892
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 938
    monitor-enter p0

    .line 939
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canStart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t start in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 941
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :goto_0
    return-void

    .line 945
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 952
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 954
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBuffering()V

    goto :goto_0

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling start in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 948
    throw v0

    .line 952
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public startOnUiThread()V
    .locals 1

    .prologue
    .line 926
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$3;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$3;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 963
    monitor-enter p0

    .line 964
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->canStop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t stop in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 966
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :goto_0
    return-void

    .line 970
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    :try_start_2
    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 977
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 979
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBuffering()V

    .line 980
    invoke-direct {p0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBufferPercent()V

    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error calling stop in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->mState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 973
    throw v0

    .line 977
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
