.class final Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;
.super Landroid/os/Handler;
.source "JSAMultiThreadedService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 370
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .line 371
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 375
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 377
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSAMultiThreadedService_IgnoreIntentAction"

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 378
    .local v0, "handle":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-virtual {v2, v1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onHandlerThreadIntentHandled(Landroid/os/Looper;Landroid/content/Intent;)V

    .line 382
    return-void

    .line 377
    .end local v0    # "handle":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onHandlerThreadIntentHandled(Landroid/os/Looper;Landroid/content/Intent;)V

    throw v2
.end method
