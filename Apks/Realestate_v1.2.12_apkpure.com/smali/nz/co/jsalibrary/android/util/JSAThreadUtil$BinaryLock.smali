.class public Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;
.super Ljava/lang/Object;
.source "JSAThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinaryLock"
.end annotation


# instance fields
.field private mLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized isLocked()Z
    .locals 1

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock()V
    .locals 2

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "binary lock already locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unlock()V
    .locals 2

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "binary lock not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unlockIfLocked()V
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 391
    :goto_0
    monitor-exit p0

    return-void

    .line 390
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitOnLock()V
    .locals 1

    .prologue
    .line 398
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 400
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0

    .line 403
    :cond_0
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitOnLock(J)V
    .locals 7
    .param p1, "millis"    # J

    .prologue
    .line 406
    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "negative wait time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 407
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 408
    .local v0, "startTime":J
    :goto_0
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->mLocked:Z

    if-eqz v4, :cond_1

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    sub-long v2, v4, v0

    .line 410
    .local v2, "timeElapsed":J
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    .line 415
    .end local v2    # "timeElapsed":J
    :cond_1
    monitor-exit p0

    return-void

    .line 412
    .restart local v2    # "timeElapsed":J
    :cond_2
    sub-long v4, p1, v2

    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v4

    goto :goto_0
.end method
