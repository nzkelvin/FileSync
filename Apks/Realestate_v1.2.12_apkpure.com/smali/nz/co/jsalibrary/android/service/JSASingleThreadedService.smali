.class public abstract Lnz/co/jsalibrary/android/service/JSASingleThreadedService;
.super Landroid/app/Service;
.source "JSASingleThreadedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mRedeliver:Z

.field private mServiceHandler:Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mName:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->getServiceThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->getServiceThreadPriority()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    .line 38
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;-><init>(Lnz/co/jsalibrary/android/service/JSASingleThreadedService;Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mServiceHandler:Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;

    .line 40
    return-void
.end method


# virtual methods
.method protected assertServiceThread()V
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->isServiceThread()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 190
    .local v0, "currentThread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected service thread but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected assertUiThread()V
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->isUiThread()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 223
    .local v0, "currentThread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected ui thread but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getServiceHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mServiceHandler:Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;

    return-object v0
.end method

.method protected getServiceThreadId()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    return v0
.end method

.method protected getServiceThreadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSASingleThreadedService ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceThreadPriority()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xa

    return v0
.end method

.method protected isServiceThread()Z
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUiThread()Z
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 307
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 308
    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->onHandleIntent(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 89
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mServiceHandler:Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 91
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mServiceHandler:Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;

    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mRedeliver:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mServiceHandler:Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 251
    .local v0, "uiThread":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mRedeliver:Z

    .line 81
    return-void
.end method

.method protected setServiceThreadName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, p1}, Landroid/os/HandlerThread;->setName(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected setServiceThreadPriority(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, p1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 63
    return-void
.end method

.method protected stopSelfOnServiceThread()V
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->assertServiceThread()V

    .line 290
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 291
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->stopSelf()V

    .line 292
    return-void
.end method
