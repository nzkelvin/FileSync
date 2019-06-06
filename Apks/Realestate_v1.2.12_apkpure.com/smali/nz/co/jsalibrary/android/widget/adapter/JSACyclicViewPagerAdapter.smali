.class public abstract Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "JSACyclicViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter$ListCyclicViewPagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private mCurrentPageIndex:I

.field private mPageCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mPageCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public abstract createView(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public createView(II)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->createView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 100
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mPageCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    const/4 v0, 0x3

    return v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mCurrentPageIndex:I

    return v0
.end method

.method public abstract getPageCount()I
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 56
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getPageCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 63
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p1

    .line 57
    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 58
    .local v1, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->positionToPageIndex(I)I

    move-result v0

    .line 59
    .local v0, "pageIndex":I
    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->createView(II)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0, v2, v0, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->updateView(Landroid/view/View;II)V

    .line 61
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mPageCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 129
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public positionToPageIndex(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getPageCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mCurrentPageIndex:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getPageCount()I

    move-result v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->mod(II)I

    move-result v0

    goto :goto_0
.end method

.method public setCurrentPageIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 115
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getPageCount()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mCurrentPageIndex:I

    .line 116
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mPageCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 117
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 118
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mPageCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 119
    .local v3, "view":Landroid/view/View;, "TV;"
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->mPageCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 120
    .local v2, "position":I
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->positionToPageIndex(I)I

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->updateView(Landroid/view/View;II)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;, "TV;"
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->getPageCount()I

    move-result v4

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->mod(II)I

    move-result v4

    goto :goto_0

    .line 122
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public abstract updateView(Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation
.end method

.method public updateView(Landroid/view/View;II)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACyclicViewPagerAdapter;->updateView(Landroid/view/View;I)V

    .line 90
    return-void
.end method
