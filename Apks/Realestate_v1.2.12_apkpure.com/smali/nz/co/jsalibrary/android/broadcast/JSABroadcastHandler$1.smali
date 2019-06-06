.class Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "JSABroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    .prologue
    .line 117
    iput-object p1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler$1;->this$0:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler$1;->this$0:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-static {v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->access$000(Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;)Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;->onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V

    .line 120
    return-void
.end method
