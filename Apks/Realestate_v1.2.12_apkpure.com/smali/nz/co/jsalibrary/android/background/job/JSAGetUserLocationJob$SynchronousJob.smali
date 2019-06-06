.class public Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;
.source "JSAGetUserLocationJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronousJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Landroid/location/Location;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .param p4, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;-><init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;)V

    .line 332
    .local v0, "job":Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->setJobTerminator(Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;)V

    .line 333
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;Z)Ljava/lang/Object;

    .line 335
    :goto_0
    invoke-static {v0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->access$200(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    monitor-enter v0

    .line 338
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :goto_1
    :try_start_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 339
    :catch_0
    move-exception v6

    .line 340
    .local v6, "exception":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "error waiting on get user location job"

    invoke-static {v1, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 350
    .end local v6    # "exception":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    invoke-interface {v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 351
    :cond_1
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->getBestLocation()Landroid/location/Location;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
