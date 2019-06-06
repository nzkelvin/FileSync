.class public final Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;
.super Landroid/os/Handler;
.source "JSABackgroundJobMultiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ServiceHandler"
.end annotation


# instance fields
.field private final mStoppable:Lnz/co/jsalibrary/android/service/JSAStoppableProcess;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    iput-object p2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;->mStoppable:Lnz/co/jsalibrary/android/service/JSAStoppableProcess;

    .line 249
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 252
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .line 254
    .local v1, "info":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;->mStoppable:Lnz/co/jsalibrary/android/service/JSAStoppableProcess;

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->onHandleHandlerThreadTask(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)V

    .line 255
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->onHandlerThreadTaskHandled(Landroid/os/Looper;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->killHandlerThread(Landroid/os/Looper;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V

    goto :goto_0
.end method
