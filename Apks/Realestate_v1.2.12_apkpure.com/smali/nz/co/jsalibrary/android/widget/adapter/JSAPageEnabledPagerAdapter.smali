.class public abstract Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;
.source "JSAPageEnabledPagerAdapter.java"


# static fields
.field private static final DEFAULT_MAX_ZOOM_FACTOR:F = 3.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxZoomFactor:F

.field private mViewPager:Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewPager"    # Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;

    .prologue
    .line 24
    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;F)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;F)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewPager"    # Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;
    .param p3, "maxZoomFactor"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;

    .line 30
    iput p3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mMaxZoomFactor:F

    .line 31
    return-void
.end method


# virtual methods
.method protected buildDefaultZoomImageViewListener(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;I)Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;
    .locals 1
    .param p1, "zoomImageView"    # Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    .param p2, "position"    # I

    .prologue
    .line 63
    iget v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mMaxZoomFactor:F

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->buildDefaultZoomImageViewListener(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;IF)Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    move-result-object v0

    return-object v0
.end method

.method protected buildDefaultZoomImageViewListener(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;IF)Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;
    .locals 1
    .param p1, "zoomImageView"    # Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    .param p2, "position"    # I
    .param p3, "maxZoomFactor"    # F

    .prologue
    .line 67
    new-instance v0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter$1;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;ILnz/co/jsalibrary/android/widget/JSAZoomImageView;F)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getViewPager()Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;

    return-object v0
.end method

.method protected isInProgressChangeHandler(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isInProgress"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAPageEnabledPagerAdapter;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->setPagingEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
