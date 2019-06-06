.class public abstract Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;
.super Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;
.source "JSAOneShotBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;-><init>(Landroid/content/Context;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fireUpFront"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;ZZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handleExceptions"    # Z
    .param p3, "fireUpFront"    # Z
    .param p4, "actions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;-><init>()V

    invoke-direct {p0, p1, v0, p2, p4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;->getReceiver()Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;

    iput-object p0, v0, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler$InternalBroadcastReceiver;->mHandler:Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;

    .line 55
    if-eqz p3, :cond_0

    invoke-virtual {p0, v1, v1}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;->handleBroadcast(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->startHandling()V

    .line 56
    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fireUpFront"    # Z
    .param p3, "actions"    # [Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;-><init>(Landroid/content/Context;ZZ[Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actions"    # [Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected abstract handleBroadcast(Ljava/lang/String;Landroid/content/Intent;)Z
.end method

.method public startHandling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;->mHandling:Z

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0, v1, v1}, Lnz/co/jsalibrary/android/broadcast/JSAOneShotBroadcastHandler;->handleBroadcast(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->startHandling()V

    goto :goto_0
.end method
