.class public final Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;
.super Landroid/os/Handler;
.source "JSASingleThreadedService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/service/JSASingleThreadedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/service/JSASingleThreadedService;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/service/JSASingleThreadedService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/service/JSASingleThreadedService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 118
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;->this$0:Lnz/co/jsalibrary/android/service/JSASingleThreadedService;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSASingleThreadedService$ServiceHandler;->this$0:Lnz/co/jsalibrary/android/service/JSASingleThreadedService;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/service/JSASingleThreadedService;->onHandleMessage(Landroid/os/Message;)V

    .line 124
    return-void
.end method
