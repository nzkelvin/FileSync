.class public Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;
.super Ljava/lang/Object;
.source "JSAOneShotBroadcastHandler.java"

# interfaces
.implements Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InternalBroadcastReceiver"
.end annotation


# instance fields
.field protected mHandler:Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;->mHandler:Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;

    invoke-virtual {v1, p1, p2}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;->handleBroadcast(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 77
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;->mHandler:Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;->stopHandling()V

    .line 78
    :cond_0
    return-void
.end method
