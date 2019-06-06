.class public Lnz/co/realestate/android/lib/util/RESSupportTabManager;
.super Ljava/lang/Object;
.source "RESSupportTabManager.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/support/v7/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/util/RESSupportTabManager$ExtendedTabListener;,
        Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;,
        Lnz/co/realestate/android/lib/util/RESSupportTabManager$EmptyTabFactory;,
        Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;
    }
.end annotation


# static fields
.field protected static final ACTION_BAR_NAVIGATION_MODE_TABS:I = 0x2


# instance fields
.field protected final mActivity:Landroid/support/v7/app/AppCompatActivity;

.field protected final mFragmentContainerId:I

.field protected mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

.field protected final mTabHost:Landroid/widget/TabHost;

.field protected mTabListener:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

.field protected final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/widget/TabHost;I)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p3, "containerId"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/widget/TabHost;Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/widget/TabHost;Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;I)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p3, "tabListener"    # Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;
    .param p4, "containerId"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    .line 56
    iput-object p1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 57
    iput-object p2, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    .line 58
    iput p4, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mFragmentContainerId:I

    .line 59
    iput-object p3, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabListener:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    .line 60
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->initialiseTabHost()V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->initialiseTabbedActionBar()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;I)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "tabListener"    # Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;
    .param p3, "containerId"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/widget/TabHost;Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;I)V

    .line 53
    return-void
.end method

.method private newTab(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    .line 131
    .local v0, "tab":Landroid/support/v7/app/ActionBar$Tab;
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    .line 132
    invoke-virtual {v0, p3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    .line 133
    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Landroid/support/v7/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/app/ActionBar$Tab;",
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
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    new-instance v2, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    invoke-direct {v2, v0, p2, p3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 121
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 122
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;Landroid/content/Intent;)Z
    .locals 4
    .param p1, "spec"    # Landroid/widget/TabHost$TabSpec;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;-><init>(Ljava/lang/String;Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 102
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 103
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
    .line 85
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)Z

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
    .line 90
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$EmptyTabFactory;

    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager$EmptyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 93
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 94
    const/4 v0, 0x1

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
    .line 70
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Z

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
    .line 75
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0, v0, p1, p2}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->newTab(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Landroid/support/v7/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    .line 264
    .local v0, "info":Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 267
    :goto_0
    return-object v1

    .line 265
    :cond_0
    iget-object v1, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_1

    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 266
    :cond_1
    iget-object v1, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragmentArgs:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 267
    :cond_2
    iget-object v1, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public getSelectedTabIndex()I
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 190
    :goto_0
    return v1

    .line 189
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "tags":[Ljava/lang/Object;
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    iget-object v1, v1, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public getSelectedTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    iget-object v0, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method protected initialiseTabHost()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    .line 142
    .local v0, "manager":Landroid/app/LocalActivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 143
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 144
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 145
    return-void
.end method

.method protected initialiseTabbedActionBar()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    .line 215
    .local v0, "lastTabInfo":Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->showTab(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->updateTabListener(Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 225
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "tag":Ljava/lang/String;
    iget-object v0, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    .line 229
    .local v0, "lastTabInfo":Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;
    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->showTab(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->updateTabListener(Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 224
    return-void
.end method

.method public selectTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 170
    if-ltz p1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "tags":[Ljava/lang/Object;
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->selectTab(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectTab(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v2, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "tags":[Ljava/lang/Object;
    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 179
    .local v0, "index":I
    iget-object v2, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 180
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method public setTabListener(Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    .prologue
    .line 162
    iput-object p1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabListener:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    .line 163
    return-void
.end method

.method protected showTab(Ljava/lang/String;)V
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 275
    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    .line 276
    .local v3, "newTabInfo":Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;
    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    if-ne v6, v3, :cond_0

    .line 297
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 279
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    iget-object v6, v6, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    iget-object v6, v6, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 280
    :cond_1
    if-eqz v3, :cond_4

    iget-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    if-eqz v6, :cond_4

    .line 281
    iget-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_2

    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    iput-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 282
    :cond_2
    iget-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_3

    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    iget-object v8, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragmentArgs:Landroid/os/Bundle;

    invoke-static {v6, v8, v9}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    iput-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    .line 283
    :cond_3
    iget-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 287
    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    iget-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragmentClass:Ljava/lang/Class;

    if-eqz v6, :cond_8

    const/4 v0, 0x1

    .line 288
    .local v0, "fragment":Z
    :goto_2
    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const v8, 0x1020011

    invoke-virtual {v6, v8}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 289
    .local v4, "tabContent":Landroid/view/View;
    iget-object v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    iget v8, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mFragmentContainerId:I

    invoke-virtual {v6, v8}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, "fragmentContainer":Landroid/view/View;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v0, :cond_9

    move v6, v5

    :goto_3
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v0, :cond_a

    :goto_4
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 292
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 293
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 295
    iput-object v3, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mLastTabInfo:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    .line 296
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 284
    .end local v0    # "fragment":Z
    .end local v1    # "fragmentContainer":Landroid/view/View;
    .end local v4    # "tabContent":Landroid/view/View;
    :cond_7
    iget-object v6, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mFragmentContainerId:I

    iget-object v8, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v9, v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v6, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :cond_8
    move v0, v5

    .line 287
    goto :goto_2

    .restart local v0    # "fragment":Z
    .restart local v1    # "fragmentContainer":Landroid/view/View;
    .restart local v4    # "tabContent":Landroid/view/View;
    :cond_9
    move v6, v7

    .line 290
    goto :goto_3

    :cond_a
    move v7, v5

    .line 291
    goto :goto_4
.end method

.method public updateTabIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    iget-object v1, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;

    .line 204
    .local v0, "tabInfo":Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mTabSpec:Landroid/widget/TabHost$TabSpec;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mTabSpec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method protected updateTabListener(Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "lastTabInfo"    # Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;
    .param p2, "toTag"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v4, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabListener:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    if-nez v4, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "tags":[Ljava/lang/Object;
    if-nez p1, :cond_2

    const/4 v0, -0x1

    .line 242
    .local v0, "fromIndex":I
    :goto_1
    invoke-static {p2, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v3

    .line 243
    .local v3, "toIndex":I
    iget-object v4, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabListener:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    invoke-interface {v4, v0, v3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;->onTabChanged(II)V

    .line 244
    if-nez p1, :cond_3

    const/4 v1, 0x0

    .line 245
    .local v1, "fromTag":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabListener:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    instance-of v4, v4, Lnz/co/realestate/android/lib/util/RESSupportTabManager$ExtendedTabListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->mTabListener:Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    check-cast v4, Lnz/co/realestate/android/lib/util/RESSupportTabManager$ExtendedTabListener;

    invoke-interface {v4, v0, v3, v1, p2}, Lnz/co/realestate/android/lib/util/RESSupportTabManager$ExtendedTabListener;->onTabChanged(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v0    # "fromIndex":I
    .end local v1    # "fromTag":Ljava/lang/String;
    .end local v3    # "toIndex":I
    :cond_2
    iget-object v4, p1, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mTag:Ljava/lang/String;

    invoke-static {v4, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 244
    .restart local v0    # "fromIndex":I
    .restart local v3    # "toIndex":I
    :cond_3
    iget-object v1, p1, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabInfo;->mTag:Ljava/lang/String;

    goto :goto_2
.end method
