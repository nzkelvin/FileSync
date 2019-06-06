.class public Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;
.super Ljava/lang/Object;
.source "JSABackgroundJobIntentService.java"

# interfaces
.implements Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "JobTerminator"
.end annotation


# instance fields
.field protected final mIntent:Landroid/content/Intent;

.field protected final mServiceThreadHandler:Landroid/os/Handler;

.field protected final mServiceThreadId:I

.field protected mTerminated:Z

.field final synthetic this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/content/Intent;)V
    .locals 1
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>.JobTerminator;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mIntent:Landroid/content/Intent;

    .line 273
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mServiceThreadId:I

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mServiceThreadHandler:Landroid/os/Handler;

    .line 275
    return-void
.end method


# virtual methods
.method public declared-synchronized terminate()V
    .locals 4

    .prologue
    .line 278
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>.JobTerminator;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iget v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mServiceThreadId:I

    if-eq v1, v2, :cond_1

    .line 282
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mServiceThreadHandler:Landroid/os/Handler;

    new-instance v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 291
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 292
    .local v0, "thread":Landroid/os/HandlerThread;
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2, v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->access$001(Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/os/Looper;Landroid/content/Intent;)V

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->mTerminated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
