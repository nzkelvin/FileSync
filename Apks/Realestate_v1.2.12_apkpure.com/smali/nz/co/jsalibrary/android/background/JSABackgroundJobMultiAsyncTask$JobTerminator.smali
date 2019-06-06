.class public final Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;
.super Ljava/lang/Object;
.source "JSABackgroundJobMultiAsyncTask.java"

# interfaces
.implements Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "JobTerminator"
.end annotation


# instance fields
.field protected final mInfo:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

.field protected final mServiceThreadHandler:Landroid/os/Handler;

.field protected final mServiceThreadId:I

.field protected mTerminated:Z


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V
    .locals 1
    .param p1, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mInfo:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .line 345
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mServiceThreadId:I

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mServiceThreadHandler:Landroid/os/Handler;

    .line 347
    return-void
.end method


# virtual methods
.method public terminate()V
    .locals 3

    .prologue
    .line 350
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mTerminated:Z

    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iget v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mServiceThreadId:I

    if-eq v1, v2, :cond_1

    .line 354
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mServiceThreadHandler:Landroid/os/Handler;

    new-instance v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator$1;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator$1;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 364
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mInfo:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->killHandlerThread(Landroid/os/Looper;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->mTerminated:Z

    goto :goto_0
.end method
