.class public final Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESPropertyImagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;,
        Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;
    }
.end annotation


# static fields
.field private static final MAX_ZOOM_FACTOR:F = 3.0f


# instance fields
.field private mImageCountTextView:Landroid/widget/TextView;

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field private mListingIndex:I

.field private mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

.field private mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

.field private mViewPagerPosition:I

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    .prologue
    .line 33
    iget v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerPosition:I

    return v0
.end method

.method static synthetic access$102(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerPosition:I

    return p1
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->updateViewPropertyImageCount()V

    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    return-object v0
.end method

.method private updateView()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->updateViewPropertyImageCount()V

    .line 139
    return-void
.end method

.method private updateViewPropertyImageCount()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewsInitialised:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 145
    .local v0, "imageValid":Z
    :goto_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mImageCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    if-eqz v0, :cond_0

    .line 147
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mImageCountTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "imageValid":Z
    :cond_2
    move v0, v2

    .line 144
    goto :goto_1

    .line 145
    .restart local v0    # "imageValid":Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    .line 148
    :cond_4
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mImageCountTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getRequestImageHeight()I
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 283
    :goto_0
    return v1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensions(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 283
    .local v0, "dimens":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method protected getRequestImageWidth()I
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 277
    :goto_0
    return v1

    .line 276
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensions(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 277
    .local v0, "dimens":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->setRetainInstance(Z)V

    .line 68
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    .line 69
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->image_count_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mImageCountTextView:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    .line 73
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListingIndex:I

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->setCurrentItem(I)V

    .line 75
    iget v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListingIndex:I

    iput v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerPosition:I

    .line 76
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)V

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 86
    iput-boolean v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewsInitialised:Z

    .line 89
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->updateView()V

    .line 90
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->notifyDataSetChanged()V

    .line 99
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->updateView()V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    sget v0, Lnz/co/realestate/android/lib/R$layout;->property_images_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 108
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_DETAILS_IMAGES:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 1
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 116
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 117
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->updateView()V

    .line 119
    return-void
.end method

.method public setListingIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 126
    iput p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListingIndex:I

    .line 127
    iget v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mListingIndex:I

    iput v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerPosition:I

    .line 128
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPager:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->setCurrentItem(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->mViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->notifyDataSetChanged()V

    .line 130
    :cond_1
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->updateView()V

    .line 131
    return-void
.end method
