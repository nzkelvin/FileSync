.class public Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;
.super Ljava/lang/Object;
.source "JSACyclicViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCyclicPageChangeListener"
.end annotation


# instance fields
.field private mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;)V
    .locals 0
    .param p1, "pager"    # Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    .line 119
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 122
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->setCurrentPageIndex(I)V

    .line 130
    :cond_2
    :goto_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager$OnCyclicPageChangeListener;->mViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->getAdapter()Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->setCurrentPageIndex(I)V

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 135
    return-void
.end method
