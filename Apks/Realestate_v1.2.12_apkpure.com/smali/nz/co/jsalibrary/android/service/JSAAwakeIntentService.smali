.class public abstract Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;
.super Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;
.source "JSAAwakeIntentService.java"


# static fields
.field protected static final MIN_LOG_RUNNING_FREQUENCY:J = 0x3e8L


# instance fields
.field private mLogFrequencyMillis:J

.field private final mServiceName:Ljava/lang/String;

.field private mStartTime:J

.field private mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLockName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "wakeLockName"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLockName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "wakeLockName"    # Ljava/lang/String;
    .param p3, "maxThreadCount"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLockName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "wakeLockName"    # Ljava/lang/String;
    .param p3, "maxThreadCount"    # I
    .param p4, "logFrequencyMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLockName:Ljava/lang/String;

    .line 59
    cmp-long v2, p4, v0

    if-gtz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mLogFrequencyMillis:J

    .line 60
    return-void

    .line 59
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "wakeLockName"    # Ljava/lang/String;
    .param p3, "maxThreadCount"    # I
    .param p4, "logFrequencyMillis"    # J
    .param p6, "handlerThreadTimeout"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p3, p6, p7}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;-><init>(Ljava/lang/String;IJ)V

    .line 64
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLockName:Ljava/lang/String;

    .line 66
    cmp-long v2, p4, v0

    if-gtz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mLogFrequencyMillis:J

    .line 67
    return-void

    .line 66
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "wakeLockName"    # Ljava/lang/String;
    .param p3, "maxThreadCount"    # I
    .param p4, "logFrequencyMillis"    # J
    .param p6, "threadType"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    .prologue
    const-wide/16 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p3, p6}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;-><init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V

    .line 71
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLockName:Ljava/lang/String;

    .line 73
    cmp-long v2, p4, v0

    if-gtz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mLogFrequencyMillis:J

    .line 74
    return-void

    .line 73
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;)J
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;

    .prologue
    .line 23
    iget-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected constructTickerRunnable()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService$1;

    iget-wide v2, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mLogFrequencyMillis:J

    invoke-direct {v0, p0, v2, v3}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService$1;-><init>(Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;J)V

    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized getWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-object v1

    .line 115
    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 116
    .local v0, "mgr":Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLockName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 118
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    .end local v0    # "mgr":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDestroy()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-super {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;->onDestroy()V

    .line 92
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 93
    :cond_0
    iget-wide v4, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mLogFrequencyMillis:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mStartTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasing wake lock ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, "currentTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service run for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mStartTime:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->humanReadableDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "message":Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 98
    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;->onStart(Landroid/content/Intent;I)V

    .line 82
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->getWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 83
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mStartTime:J

    .line 84
    iget-wide v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mLogFrequencyMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquiring wake lock ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 86
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->constructTickerRunnable()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .line 87
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->start()V

    goto :goto_0
.end method
