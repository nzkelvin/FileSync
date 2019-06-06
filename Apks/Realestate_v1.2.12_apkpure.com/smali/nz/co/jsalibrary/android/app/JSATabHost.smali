.class public Lnz/co/jsalibrary/android/app/JSATabHost;
.super Landroid/widget/TabHost;
.source "JSATabHost.java"


# static fields
.field public static final ACTION_TAB_CHANGED:Ljava/lang/String; = "tabChanged"

.field public static final NEW_INDEX:Ljava/lang/String; = "newIndex"

.field public static final NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final NEW_VIEW_ID:Ljava/lang/String; = "newViewId"

.field public static final OLD_INDEX:Ljava/lang/String; = "oldIndex"

.field public static final OLD_TAG:Ljava/lang/String; = "oldTag"

.field public static final OLD_VIEW_ID:Ljava/lang/String; = "oldViewId"

.field public static final TAB_HOST_ID:Ljava/lang/String; = "tabHostId"


# instance fields
.field protected mTabHostId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSATabHost:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSATabHost_jsaTabHostId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/app/JSATabHost;->mTabHostId:I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method


# virtual methods
.method public setCurrentTab(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const v9, 0x1020002

    .line 67
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getCurrentTab()I

    move-result v4

    .line 68
    .local v4, "oldIndex":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getCurrentView()Landroid/view/View;

    move-result-object v6

    .line 69
    .local v6, "oldView":Landroid/view/View;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "oldTag":Ljava/lang/String;
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 71
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getCurrentTab()I

    move-result v1

    .line 72
    .local v1, "newIndex":I
    if-ne v4, v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 74
    .local v3, "newView":Landroid/view/View;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "newTag":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "tabChanged"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v7, "oldIndex"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v7, "newIndex"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    if-eqz v6, :cond_1

    const-string v7, "oldViewId"

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    :cond_1
    if-eqz v3, :cond_2

    const-string v7, "newViewId"

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    :cond_2
    if-eqz v5, :cond_3

    const-string v7, "oldTag"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    :cond_3
    if-eqz v2, :cond_4

    const-string v7, "newTag"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_4
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSATabHost;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
