.class public Lnz/co/jsalibrary/android/app/JSATabInnerMixin;
.super Ljava/lang/Object;
.source "JSATabInnerMixin.java"

# interfaces
.implements Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/app/JSATabInnerMixin$SimpleOnExtendedNavigateListener;,
        Lnz/co/jsalibrary/android/app/JSATabInnerMixin$SimpleOnNavigateListener;,
        Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;,
        Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;
    }
.end annotation


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field protected final mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

.field protected final mNavigateListener:Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "navigate listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-direct {v0, p1, p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    .line 40
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    const-string v1, "tabChanged"

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->addAction(Ljava/lang/String;)Z

    .line 41
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->startHandling()V

    .line 42
    iput-object p2, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mNavigateListener:Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;

    .line 43
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mActivity:Landroid/app/Activity;

    .line 44
    return-void
.end method


# virtual methods
.method protected getExtendedNavigateListener()Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mNavigateListener:Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;

    instance-of v0, v0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mNavigateListener:Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;

    check-cast v0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;

    goto :goto_0
.end method

.method public onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    iget-object v11, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mActivity:Landroid/app/Activity;

    const v12, 0x1020002

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 52
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v11, "tabHostId"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 55
    .local v1, "tabHostId":I
    const-string v11, "oldTag"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "oldTag":Ljava/lang/String;
    const-string v11, "newTag"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "newTag":Ljava/lang/String;
    const-string v11, "oldIndex"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 58
    .local v4, "oldIndex":I
    const-string v11, "newIndex"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 59
    .local v5, "newIndex":I
    const-string v11, "oldViewId"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 60
    .local v8, "oldViewId":I
    const-string v11, "newViewId"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 62
    .local v6, "newViewId":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->getExtendedNavigateListener()Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;

    move-result-object v0

    .line 63
    .local v0, "extended":Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;
    if-eqz v0, :cond_2

    invoke-interface/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;->onNavigate(ILjava/lang/String;Ljava/lang/String;II)V

    .line 65
    :cond_2
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, v8, :cond_6

    const/4 v9, 0x1

    .line 66
    .local v9, "oldViewMatches":Z
    :goto_1
    if-eqz v9, :cond_3

    iget-object v11, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mNavigateListener:Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;

    invoke-interface {v11, v3}, Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;->onNavigateFrom(Ljava/lang/String;)V

    .line 67
    :cond_3
    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0, v1, v3, v5}, Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;->onNavigateFrom(ILjava/lang/String;I)V

    .line 69
    :cond_4
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, v6, :cond_7

    const/4 v7, 0x1

    .line 70
    .local v7, "newViewMatches":Z
    :goto_2
    if-eqz v7, :cond_5

    iget-object v11, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mNavigateListener:Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;

    invoke-interface {v11, v2}, Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnNavigateListener;->onNavigateTo(Ljava/lang/String;)V

    .line 71
    :cond_5
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, v2, v4}, Lnz/co/jsalibrary/android/app/JSATabInnerMixin$OnExtendedNavigateListener;->onNavigateTo(ILjava/lang/String;I)V

    goto :goto_0

    .line 65
    .end local v7    # "newViewMatches":Z
    .end local v9    # "oldViewMatches":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 69
    .restart local v9    # "oldViewMatches":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public startHandling()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->startHandling()V

    .line 85
    return-void
.end method

.method public stopHandling()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSATabInnerMixin;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->stopHandling()V

    .line 89
    return-void
.end method
