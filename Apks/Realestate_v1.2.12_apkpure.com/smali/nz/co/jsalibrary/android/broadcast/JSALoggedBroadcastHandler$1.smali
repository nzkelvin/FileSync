.class Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "JSALoggedBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    .prologue
    .line 96
    iput-object p1, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;->this$0:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;->this$0:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-static {v0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->access$000(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;->this$0:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->getReceiver()Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;->onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V

    .line 100
    return-void
.end method
