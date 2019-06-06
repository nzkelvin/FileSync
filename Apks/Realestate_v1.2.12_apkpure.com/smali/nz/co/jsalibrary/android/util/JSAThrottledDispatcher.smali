.class public abstract Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;
.super Ljava/lang/Object;
.source "JSAThrottledDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$RunnableDispatcher;
    }
.end annotation


# instance fields
.field private mDispatchInFlight:Z

.field private mEarliestNextDispatchTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRunnable:Ljava/lang/Runnable;

.field private final mMaxDispatchFrequency:J

.field private mStopped:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxDispatchFrequency"    # J

    .prologue
    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;-><init>(Landroid/os/Handler;J)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "maxDispatchFrequency"    # J

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mEarliestNextDispatchTime:J

    .line 77
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mHandler:Landroid/os/Handler;

    .line 78
    iput-wide p2, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mMaxDispatchFrequency:J

    .line 79
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;-><init>(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mInFlightRunnable:Ljava/lang/Runnable;

    .line 91
    return-void
.end method

.method static synthetic access$002(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;J)J
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mEarliestNextDispatchTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)J
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    .prologue
    .line 47
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mMaxDispatchFrequency:J

    return-wide v0
.end method

.method static synthetic access$202(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mDispatchInFlight:Z

    return p1
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    .prologue
    .line 47
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->innerDispatch()V

    return-void
.end method

.method private assertHandlerThread()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throttled limited dispatcher expected handler thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mHandler:Landroid/os/Handler;

    .line 212
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    return-void
.end method

.method private innerDispatch()V
    .locals 8

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "dispatch":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 126
    .local v0, "current":J
    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mStopped:Z

    if-eqz v3, :cond_1

    monitor-exit p0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mDispatchInFlight:Z

    if-eqz v3, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 136
    :cond_2
    :try_start_1
    iget-wide v4, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mEarliestNextDispatchTime:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_3

    .line 137
    iget-wide v4, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mMaxDispatchFrequency:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mEarliestNextDispatchTime:J

    .line 138
    const/4 v2, 0x1

    .line 143
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->onDispatch()V

    goto :goto_0

    .line 140
    :cond_3
    :try_start_2
    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mInFlightRunnable:Ljava/lang/Runnable;

    iget-wide v6, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mEarliestNextDispatchTime:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mDispatchInFlight:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->assertHandlerThread()V

    .line 162
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->stop()V

    .line 163
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->restart()V

    .line 164
    return-void
.end method

.method public dispatch()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$2;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$2;-><init>(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method protected abstract onDispatch()V
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->assertHandlerThread()V

    .line 179
    monitor-enter p0

    .line 180
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mStopped:Z

    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->assertHandlerThread()V

    .line 197
    monitor-enter p0

    .line 198
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mStopped:Z

    .line 199
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mDispatchInFlight:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mInFlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->mDispatchInFlight:Z

    .line 203
    :cond_0
    monitor-exit p0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
