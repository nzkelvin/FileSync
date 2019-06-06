.class public abstract Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;
.source "JSAFragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected final mAdapterId:I

.field protected mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field protected mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field protected final mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;I)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "adapterId"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;-><init>()V

    .line 59
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 60
    iput p2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mAdapterId:I

    .line 61
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 94
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    return-void
.end method

.method public findFragmentByIndex(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->getItemTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 130
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public getAdapterId()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mAdapterId:I

    return v0
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method protected getItemTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSAFragmentPagerAdapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mAdapterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 71
    :cond_0
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->getItemTag(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 74
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    :goto_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v2, :cond_1

    .line 81
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 82
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 85
    :cond_1
    return-object v0

    .line 76
    :cond_2
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 173
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 104
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-ne v0, v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 110
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 113
    :cond_1
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 118
    :cond_2
    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 189
    return-void
.end method
