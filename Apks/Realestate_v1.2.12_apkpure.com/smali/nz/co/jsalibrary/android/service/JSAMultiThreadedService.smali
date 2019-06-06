.class public abstract Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
.super Landroid/app/Service;
.source "JSAMultiThreadedService.java"

# interfaces
.implements Lnz/co/jsalibrary/android/service/JSAStoppableProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;,
        Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;,
        Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;,
        Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;,
        Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;,
        Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;,
        Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_HANDLER_THREAD_TIMEOUT:J = 0x7d0L

.field private static final IGNORE_INTENT_ACTION:Ljava/lang/String; = "JSAMultiThreadedService_IgnoreIntentAction"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThreadTimeout:J

.field private mMaxQueueLength:I

.field private final mMaxThreadCount:I

.field private mMostRecentStartId:I

.field private final mName:Ljava/lang/String;

.field private mOnQueueIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;

.field private mOnRunIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;

.field private final mParkedHandlerThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueuedIntents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mRedeliver:Z

.field private final mRunningIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceLock:Ljava/lang/Object;

.field private mStopped:Z

.field private final mThreadType:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;-><init>(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxThreadCount"    # I

    .prologue
    .line 96
    sget-object v0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;-><init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxThreadCount"    # I
    .param p3, "threadType"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    .prologue
    .line 100
    const-wide/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;-><init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;J)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxThreadCount"    # I
    .param p3, "threadType"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;
    .param p4, "handlerThreadTimeout"    # J

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    const v0, 0x7fffffff

    iput v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMaxQueueLength:I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    .line 104
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mName:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mThreadType:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    .line 108
    iput p2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMaxThreadCount:I

    .line 109
    iput-wide p4, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mHandlerThreadTimeout:J

    .line 110
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mThreadType:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    sget-object v1, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mHandler:Landroid/os/Handler;

    .line 111
    return-void

    .line 110
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onIntentHandled(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .prologue
    .line 48
    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->startNextQueuedIntent()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .prologue
    .line 48
    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->stopService()V

    return-void
.end method

.method static synthetic access$700(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)J
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .prologue
    .line 48
    iget-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mHandlerThreadTimeout:J

    return-wide v0
.end method

.method static synthetic access$900(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onHandlerThreadTimeout(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;)V

    return-void
.end method

.method private onHandlerThreadTimeout(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;)V
    .locals 4
    .param p1, "thread"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;

    .prologue
    .line 449
    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 450
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 451
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 452
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onThreadEndStopSelf()Z

    move-result v1

    .line 453
    .local v1, "stop":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->stopService()V

    .line 457
    :cond_1
    return-void

    .line 453
    .end local v0    # "removed":Z
    .end local v1    # "stop":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onIntentHandled(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 471
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onThreadEndStopSelf()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startHandlerThread(Landroid/content/Intent;)Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 329
    const/4 v3, 0x0

    .line 335
    .local v3, "thread":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 336
    :try_start_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;

    move-object v3, v0

    .line 338
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->stopTimer()V

    .line 340
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-nez v3, :cond_1

    .line 346
    new-instance v3, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;

    .end local v3    # "thread":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
    invoke-direct {v3, p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;-><init>(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)V

    .line 347
    .restart local v3    # "thread":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->start()V

    .line 358
    :cond_1
    new-instance v2, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;-><init>(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Landroid/os/Looper;)V

    .line 359
    .local v2, "serviceHandler":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;
    invoke-virtual {v2, v7, p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 360
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    return-object v3

    .line 340
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "serviceHandler":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private startNextQueuedIntent()Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 538
    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 539
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v2

    .line 544
    :goto_0
    return-object v1

    .line 540
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 541
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->startThread(Landroid/content/Intent;)Ljava/lang/Thread;

    move-result-object v1

    goto :goto_0

    .line 542
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startPlainThread(Landroid/content/Intent;)Ljava/lang/Thread;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 293
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;

    invoke-direct {v1, p0, p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;-><init>(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    return-object v0
.end method

.method private startThread(Landroid/content/Intent;)Ljava/lang/Thread;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mThreadType:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    sget-object v2, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->startHandlerThread(Landroid/content/Intent;)Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;

    move-result-object v0

    .line 282
    .local v0, "thread":Ljava/lang/Thread;
    :goto_0
    return-object v0

    .line 280
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->startPlainThread(Landroid/content/Intent;)Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 489
    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 491
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;

    .line 492
    .local v0, "thread":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 493
    :cond_0
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->stopTimer()V

    goto :goto_0

    .line 499
    .end local v0    # "thread":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 496
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 497
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 498
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 499
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    iget v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMostRecentStartId:I

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->stopSelf(I)V

    .line 502
    return-void
.end method


# virtual methods
.method public getHandlerThreadTimeout()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mHandlerThreadTimeout:J

    return-wide v0
.end method

.method public getMaxQueueLength()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMaxQueueLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnQueueIntentListener()Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnQueueIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;

    return-object v0
.end method

.method public getOnRunIntentListener()Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnRunIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;

    return-object v0
.end method

.method public getParkedHandlerThreadCount()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueuedIntentCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getRunningIntentCount()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getThreadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSAMultiThreadedService ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 517
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mStopped:Z

    .line 520
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 522
    monitor-exit v1

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method protected onHandlerThreadIntentHandled(Landroid/os/Looper;Landroid/content/Intent;)V
    .locals 12
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    check-cast v5, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;

    .line 402
    .local v5, "thread":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
    invoke-virtual {v5}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->getTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    move v3, v6

    .line 405
    .local v3, "park":Z
    :goto_0
    iget-object v8, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 408
    if-eqz v3, :cond_0

    :try_start_0
    iget-object v9, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mParkedHandlerThreads:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    invoke-direct {p0, p2}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onIntentHandled(Landroid/content/Intent;)Z

    move-result v4

    .line 414
    .local v4, "stop":Z
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    move v0, v6

    .line 417
    .local v0, "isParked":Z
    :goto_1
    if-eqz v4, :cond_7

    const/4 v2, 0x0

    .line 420
    .local v2, "nextThread":Ljava/lang/Thread;
    :goto_2
    if-ne v5, v2, :cond_8

    move v1, v6

    .line 423
    .local v1, "isScheduled":Z
    :goto_3
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 426
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->startTimer()V

    .line 429
    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 430
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    if-eqz v4, :cond_4

    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->stopService()V

    .line 434
    :cond_4
    return-void

    .end local v0    # "isParked":Z
    .end local v1    # "isScheduled":Z
    .end local v2    # "nextThread":Ljava/lang/Thread;
    .end local v3    # "park":Z
    .end local v4    # "stop":Z
    :cond_5
    move v3, v7

    .line 402
    goto :goto_0

    .restart local v3    # "park":Z
    .restart local v4    # "stop":Z
    :cond_6
    move v0, v7

    .line 414
    goto :goto_1

    .line 417
    .restart local v0    # "isParked":Z
    :cond_7
    :try_start_1
    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->startNextQueuedIntent()Ljava/lang/Thread;

    move-result-object v2

    goto :goto_2

    .restart local v2    # "nextThread":Ljava/lang/Thread;
    :cond_8
    move v1, v7

    .line 420
    goto :goto_3

    .line 430
    .end local v0    # "isParked":Z
    .end local v2    # "nextThread":Ljava/lang/Thread;
    .end local v4    # "stop":Z
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 232
    iput p3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMostRecentStartId:I

    .line 233
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mStopped:Z

    .line 236
    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    :try_start_0
    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMaxThreadCount:I

    if-ge v5, v6, :cond_7

    move v2, v3

    .line 242
    .local v2, "run":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnRunIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnRunIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;

    iget-object v6, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    .line 243
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    iget-object v7, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    .line 242
    invoke-interface {v5, p1, v6, v7}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;->onRunIntent(Landroid/content/Intent;Ljava/util/Collection;Ljava/util/Collection;)Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;

    move-result-object v5

    .line 243
    invoke-static {v5}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;->access$000(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;)Z

    move-result v2

    .line 246
    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_1
    if-eqz v2, :cond_8

    .line 254
    .local v1, "queue":Z
    :cond_2
    :goto_1
    if-eqz v1, :cond_a

    if-nez p2, :cond_a

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnQueueIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnQueueIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;

    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRunningIntents:Ljava/util/List;

    .line 255
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    .line 254
    invoke-interface {v3, p1, v5, v6}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;->onQueueIntent(Landroid/content/Intent;Ljava/util/Collection;Ljava/util/Collection;)Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;

    move-result-object v0

    .line 258
    .local v0, "action":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;
    :goto_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;->access$100(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;)Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-static {v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;->access$100(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    .line 261
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;->access$200(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;)Z

    move-result v1

    .line 266
    :cond_4
    if-eqz v1, :cond_b

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_5
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->startThread(Landroid/content/Intent;)Ljava/lang/Thread;

    .line 271
    :cond_6
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRedeliver:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    :goto_4
    return v3

    .end local v0    # "action":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;
    .end local v1    # "queue":Z
    .end local v2    # "run":Z
    :cond_7
    move v2, v1

    .line 239
    goto :goto_0

    .line 250
    .restart local v2    # "run":Z
    :cond_8
    if-eqz p2, :cond_9

    move v1, v3

    goto :goto_1

    :cond_9
    :try_start_1
    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    iget v6, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMaxQueueLength:I

    if-ge v5, v6, :cond_2

    move v1, v3

    goto :goto_1

    .line 254
    .restart local v1    # "queue":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 267
    .restart local v0    # "action":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;
    :cond_b
    if-nez v2, :cond_5

    const-string v3, "JSAMultiThreadedService_IgnoreIntentAction"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 268
    .end local v0    # "action":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;
    .end local v1    # "queue":Z
    .end local v2    # "run":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 271
    .restart local v0    # "action":Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;
    .restart local v1    # "queue":Z
    .restart local v2    # "run":Z
    :cond_c
    const/4 v3, 0x2

    goto :goto_4
.end method

.method protected onThreadEndStopSelf()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mRedeliver:Z

    .line 128
    return-void
.end method

.method public setMaxQueueLength(I)V
    .locals 0
    .param p1, "maxQueueLength"    # I

    .prologue
    .line 136
    iput p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mMaxQueueLength:I

    .line 137
    return-void
.end method

.method public setOnQueueIntentListener(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnQueueIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;

    .line 165
    return-void
.end method

.method public setOnRunIntentListener(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;

    .prologue
    .line 150
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->mOnRunIntentListener:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentListener;

    .line 151
    return-void
.end method
