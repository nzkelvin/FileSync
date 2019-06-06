.class public Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;
.super Ljava/lang/Object;
.source "JSATabManager.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$ExtendedTabListener;,
        Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;,
        Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$EmptyTabFactory;,
        Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
    }
.end annotation


# static fields
.field protected static final ACTION_BAR_NAVIGATION_MODE_TABS:I = 0x2


# instance fields
.field protected final mActivity:Landroid/support/v4/app/FragmentActivity;

.field protected final mFragmentContainerId:I

.field protected mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

.field protected final mProxiedTabListener:Ljava/lang/Object;

.field protected final mTabHost:Landroid/widget/TabHost;

.field protected mTabListener:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;

.field protected final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;I)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p3, "containerId"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Ljava/lang/Class;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Ljava/lang/Class;I)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Landroid/widget/TabHost;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    .line 98
    iput-object p1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 99
    iput-object p2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    .line 100
    iput p4, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mFragmentContainerId:I

    .line 101
    if-eqz p3, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p3, p0, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->constructProxiedActionBarTabListener(Ljava/lang/Class;Lnz/co/jsalibrary/android/sherlock/util/JSATabManagerUtil$ActionBarTabListener;Landroid/support/v4/app/FragmentActivity;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mProxiedTabListener:Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->initialiseTabHost()V

    .line 104
    :goto_1
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->initialiseTabbedActionBar()V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;I)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Ljava/lang/Class;I)V

    .line 95
    return-void
.end method

.method public static supportsActionBar(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Landroid/content/Intent;)Z
    .locals 4
    .param p1, "spec"    # Landroid/widget/TabHost$TabSpec;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;-><init>(Ljava/lang/String;Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 144
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "spec"    # Landroid/widget/TabHost$TabSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "spec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$EmptyTabFactory;

    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$EmptyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 135
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addTab(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "tab"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public addTab(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "tab"    # Ljava/lang/Object;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-static {p1}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getTabTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    new-instance v2, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    invoke-direct {v2, v0, p2, p3}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mProxiedTabListener:Ljava/lang/Object;

    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->setTabListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->addTab(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->newTab(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    .line 304
    .local v0, "info":Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 307
    :goto_0
    return-object v1

    .line 305
    :cond_0
    iget-object v1, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, p1}, Lnz/co/jsalibrary/android/util/JSAFragmentUtil;->findFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 306
    :cond_1
    iget-object v1, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentArgs:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 307
    :cond_2
    iget-object v1, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public getSelectedTabIndex()I
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 230
    :goto_0
    return v1

    .line 229
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "tags":[Ljava/lang/Object;
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    iget-object v1, v1, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public getSelectedTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    iget-object v0, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method protected initialiseTabHost()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    .line 173
    .local v0, "manager":Landroid/app/LocalActivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 174
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 175
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 176
    return-void
.end method

.method protected initialiseTabbedActionBar()V
    .locals 2

    .prologue
    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->setNavigationMode(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    .line 255
    .local v0, "lastTabInfo":Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->showTab(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->updateTabListener(Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onTabReselected(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tab"    # Ljava/lang/Object;

    .prologue
    .line 265
    return-void
.end method

.method public onTabSelected(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tab"    # Ljava/lang/Object;

    .prologue
    .line 267
    invoke-static {p1}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getTabTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "tag":Ljava/lang/String;
    iget-object v0, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    .line 269
    .local v0, "lastTabInfo":Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->showTab(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->updateTabListener(Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onTabUnselected(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tab"    # Ljava/lang/Object;

    .prologue
    .line 264
    return-void
.end method

.method public selectTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 210
    if-ltz p1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, "tags":[Ljava/lang/Object;
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->selectTab(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "tags":[Ljava/lang/Object;
    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 219
    .local v0, "index":I
    iget-object v2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->supportsActionBar(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/sherlock/util/JSAActionBarUtil;->setSelectedNavigationItem(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setTabListener(Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;

    .prologue
    .line 193
    iput-object p1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabListener:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;

    .line 194
    return-void
.end method

.method protected showTab(Ljava/lang/String;)V
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 315
    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    .line 316
    .local v3, "newTabInfo":Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    if-ne v6, v3, :cond_0

    .line 337
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 319
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    iget-object v6, v6, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    iget-object v6, v6, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 320
    :cond_1
    if-eqz v3, :cond_4

    iget-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    if-eqz v6, :cond_4

    .line 321
    iget-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_2

    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, p1}, Lnz/co/jsalibrary/android/util/JSAFragmentUtil;->findFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    iput-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 322
    :cond_2
    iget-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_3

    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v8, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentArgs:Landroid/os/Bundle;

    invoke-static {v6, v8, v9}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    iput-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 323
    :cond_3
    iget-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 327
    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    iget-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    if-eqz v6, :cond_8

    const/4 v0, 0x1

    .line 328
    .local v0, "fragment":Z
    :goto_2
    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v8, 0x1020011

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 329
    .local v4, "tabContent":Landroid/view/View;
    iget-object v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v8, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mFragmentContainerId:I

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, "fragmentContainer":Landroid/view/View;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v0, :cond_9

    move v6, v5

    :goto_3
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v0, :cond_a

    :goto_4
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 333
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 335
    iput-object v3, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mLastTabInfo:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    .line 336
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 324
    .end local v0    # "fragment":Z
    .end local v1    # "fragmentContainer":Landroid/view/View;
    .end local v4    # "tabContent":Landroid/view/View;
    :cond_7
    iget-object v6, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mFragmentContainerId:I

    iget-object v8, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v9, v3, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v6, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :cond_8
    move v0, v5

    .line 327
    goto :goto_2

    .restart local v0    # "fragment":Z
    .restart local v1    # "fragmentContainer":Landroid/view/View;
    .restart local v4    # "tabContent":Landroid/view/View;
    :cond_9
    move v6, v7

    .line 330
    goto :goto_3

    :cond_a
    move v7, v5

    .line 331
    goto :goto_4
.end method

.method public updateTabIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    iget-object v1, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;

    .line 244
    .local v0, "tabInfo":Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTabSpec:Landroid/widget/TabHost$TabSpec;

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v1, v0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTabSpec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method protected updateTabListener(Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "lastTabInfo"    # Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;
    .param p2, "toTag"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v4, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabListener:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;

    if-nez v4, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 281
    .local v2, "tags":[Ljava/lang/Object;
    if-nez p1, :cond_2

    const/4 v0, -0x1

    .line 282
    .local v0, "fromIndex":I
    :goto_1
    invoke-static {p2, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v3

    .line 283
    .local v3, "toIndex":I
    iget-object v4, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabListener:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;

    invoke-interface {v4, v0, v3}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;->onTabChanged(II)V

    .line 284
    if-nez p1, :cond_3

    const/4 v1, 0x0

    .line 285
    .local v1, "fromTag":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabListener:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;

    instance-of v4, v4, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$ExtendedTabListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->mTabListener:Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabListener;

    check-cast v4, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$ExtendedTabListener;

    invoke-interface {v4, v0, v3, v1, p2}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$ExtendedTabListener;->onTabChanged(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v0    # "fromIndex":I
    .end local v1    # "fromTag":Ljava/lang/String;
    .end local v3    # "toIndex":I
    :cond_2
    iget-object v4, p1, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTag:Ljava/lang/String;

    invoke-static {v4, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 284
    .restart local v0    # "fromIndex":I
    .restart local v3    # "toIndex":I
    :cond_3
    iget-object v1, p1, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager$TabInfo;->mTag:Ljava/lang/String;

    goto :goto_2
.end method
