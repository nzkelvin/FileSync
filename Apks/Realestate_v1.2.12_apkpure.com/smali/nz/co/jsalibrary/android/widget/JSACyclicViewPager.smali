.class public Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;
.super Lnz/co/jsalibrary/android/widget/JSAViewPager;
.source "JSACyclicViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAViewPager;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setOffscreenPageLimit(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->initialise()V

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/JSAViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    return-object v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getCurrentPageIndex()I

    move-result v0

    goto :goto_0
.end method

.method protected initialise()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setOffscreenPageLimit(I)V

    .line 50
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;-><init>(Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;)V

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 51
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    .line 106
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<*>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setAdapter(Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;)V

    .line 107
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setAdapter(Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;)V

    goto :goto_0
.end method

.method public scrollToNextPage()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setCurrentItem(IZ)V

    .line 96
    return-void
.end method

.method public scrollToPreviousPage()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setCurrentItem(IZ)V

    .line 91
    return-void
.end method

.method public setAdapter(Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<*>;"
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setCurrentItem(IZ)V

    .line 61
    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->setCurrentPageIndex(I)V

    goto :goto_0
.end method
