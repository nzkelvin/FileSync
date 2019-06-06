.class public Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESPropertyDetailsFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$SimpleWebViewClient;,
        Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;,
        Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddressTextView:Landroid/widget/TextView;

.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mAgentDetails0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

.field private mAgentDetails1:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

.field private mEnquireButton:Landroid/widget/Button;

.field private mExpiredView:Landroid/view/View;

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

.field private mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

.field private mImageCountImageView:Landroid/widget/ImageView;

.field private mImageCountTextView:Landroid/widget/TextView;

.field private mListedDateTextView:Landroid/widget/TextView;

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field private mListingNumberTextView:Landroid/widget/TextView;

.field private mLoadingDialog:Landroid/app/Dialog;

.field private mOpenHomeMultipleListView:Landroid/widget/ListView;

.field private mOpenHomeMultipleView:Landroid/view/View;

.field private mOpenHomeSingleTimeTextView:Landroid/widget/TextView;

.field private mOpenHomeSingleView:Landroid/view/View;

.field private mOpenHomeSingleViewAllView:Landroid/widget/TextView;

.field private mOpenHomeView:Landroid/view/View;

.field private mPriceTextView:Landroid/widget/TextView;

.field private mPropertyTypeTextView:Landroid/widget/TextView;

.field private mPropertyViewPager:Landroid/support/v4/view/ViewPager;

.field private mPropertyViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

.field private mPropertyViewPagerPosition:I

.field private mProperySummaryWebView:Landroid/webkit/WebView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowOpenHomeMultipleView:Z

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->onAdvertisementImageClick()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->onEnquireClick()V

    return-void
.end method

.method static synthetic access$402(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPagerPosition:I

    return p1
.end method

.method static synthetic access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateViewPropertyImageCount()V

    return-void
.end method

.method static synthetic access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

    return-object v0
.end method

.method private getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;
    .locals 2
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    const/4 v1, 0x0

    .line 348
    if-eqz p1, :cond_0

    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    sget v1, Lnz/co/realestate/android/lib/R$string;->open_at_time:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeDateTimeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 426
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 427
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v3, "listing_details"

    invoke-virtual {v0, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "section":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method private onEnquireClick()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;->onEnquireClick(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    .line 369
    :cond_0
    return-void
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 415
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 417
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "listing_details"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 419
    .local v0, "available":Z
    :goto_1
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 421
    .local v3, "width":I
    if-eqz v0, :cond_3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->tileBitmapEnds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_1
    move v0, v4

    .line 418
    goto :goto_1

    .line 419
    .restart local v0    # "available":Z
    :cond_2
    const/16 v4, 0x8

    goto :goto_2

    .line 422
    .restart local v3    # "width":I
    :cond_3
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateView()V
    .locals 23

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mViewsInitialised:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v11, 0x1

    .line 245
    .local v11, "imageValid":Z
    :goto_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v11, :cond_13

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 250
    invoke-direct/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateViewPropertyImageCount()V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mExpiredView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v8, 0x1

    .line 257
    .local v8, "addressValid":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_15

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAddressTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const-string v4, "\n"

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->setDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->isSold()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->isWithdrawn()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_4
    const/4 v13, 0x1

    .line 265
    .local v13, "isSoldOrWithdrawn":Z
    :goto_5
    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    :cond_5
    const/16 v16, 0x1

    .line 266
    .local v16, "priceValid":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPriceTextView:Landroid/widget/TextView;

    if-eqz v16, :cond_18

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v19, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    if-eqz v16, :cond_8

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->formatPrice(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_8
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPriceTextView:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mEnquireButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-boolean v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->expired:Z

    if-nez v2, :cond_19

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 281
    .local v18, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->isListingOnPromotion(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z

    move-result v12

    .line 282
    .local v12, "isOnPromotion":Z
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mEnquireButton:Landroid/widget/Button;

    sget v3, Lnz/co/realestate/android/lib/R$drawable;->bg_btn_gold:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 283
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mEnquireButton:Landroid/widget/Button;

    if-eqz v12, :cond_1a

    sget v2, Lnz/co/realestate/android/lib/R$color;->clr_txt_btn_gold:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mEnquireButton:Landroid/widget/Button;

    if-eqz v12, :cond_1b

    sget v2, Lnz/co/realestate/android/lib/R$string;->enter_competition:I

    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(I)V

    .line 287
    invoke-direct/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateViewOpenHomes()V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getListingDate()Ljava/util/Date;

    move-result-object v10

    .line 291
    .local v10, "date":Ljava/util/Date;
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 292
    .local v20, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListedDateTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lnz/co/realestate/android/lib/R$string;->listed_:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListedDateTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_1c

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_no:Ljava/lang/String;

    if-eqz v2, :cond_1d

    const/4 v14, 0x1

    .line 297
    .local v14, "listingNumberValid":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListingNumberTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_1e

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListingNumberTextView:Landroid/widget/TextView;

    sget v3, Lnz/co/realestate/android/lib/R$string;->listing_number_n:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v6, v6, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_no:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_c
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedListingTypeSubTypes()Ljava/util/List;

    move-result-object v15

    .line 302
    .local v15, "listingTypeSubTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    if-nez v15, :cond_1f

    const/16 v21, 0x0

    .line 305
    .local v21, "subType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    :goto_e
    if-eqz v21, :cond_20

    move-object/from16 v0, v21

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->name:Ljava/lang/String;

    if-eqz v2, :cond_20

    const/16 v17, 0x1

    .line 306
    .local v17, "propertyTypeValid":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyTypeTextView:Landroid/widget/TextView;

    if-eqz v17, :cond_21

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, v21

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    if-eqz v2, :cond_22

    const/16 v22, 0x1

    .line 311
    .local v22, "summaryValid":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    if-eqz v22, :cond_23

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 312
    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 316
    .local v9, "agentCount":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAgentDetails0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    if-lez v9, :cond_25

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v3, v2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setVisibility(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAgentDetails1:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    const/4 v2, 0x1

    if-le v9, v2, :cond_26

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v3, v2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setVisibility(I)V

    .line 318
    if-lez v9, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAgentDetails0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    invoke-virtual {v3, v2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setAgent(Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;)V

    .line 319
    :cond_f
    const/4 v2, 0x1

    if-le v9, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAgentDetails1:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    invoke-virtual {v3, v2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setAgent(Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;)V

    .line 322
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 325
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_0

    .line 244
    .end local v8    # "addressValid":Z
    .end local v9    # "agentCount":I
    .end local v10    # "date":Ljava/util/Date;
    .end local v11    # "imageValid":Z
    .end local v12    # "isOnPromotion":Z
    .end local v13    # "isSoldOrWithdrawn":Z
    .end local v14    # "listingNumberValid":Z
    .end local v15    # "listingTypeSubTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    .end local v16    # "priceValid":Z
    .end local v17    # "propertyTypeValid":Z
    .end local v18    # "resources":Landroid/content/res/Resources;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "subType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    .end local v22    # "summaryValid":Z
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 246
    .restart local v11    # "imageValid":Z
    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 256
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 257
    .restart local v8    # "addressValid":Z
    :cond_15
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 264
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 265
    .restart local v13    # "isSoldOrWithdrawn":Z
    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 266
    .restart local v16    # "priceValid":Z
    :cond_18
    const/16 v2, 0x8

    goto/16 :goto_7

    .line 277
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_19
    const/16 v2, 0x8

    goto/16 :goto_8

    .line 283
    .restart local v12    # "isOnPromotion":Z
    .restart local v18    # "resources":Landroid/content/res/Resources;
    :cond_1a
    sget v2, Lnz/co/realestate/android/lib/R$color;->clr_txt_btn_blue:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto/16 :goto_9

    .line 284
    :cond_1b
    sget v2, Lnz/co/realestate/android/lib/R$string;->enquire:I

    goto/16 :goto_a

    .line 293
    .restart local v10    # "date":Ljava/util/Date;
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1c
    const/16 v2, 0x8

    goto/16 :goto_b

    .line 296
    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 297
    .restart local v14    # "listingNumberValid":Z
    :cond_1e
    const/16 v2, 0x8

    goto/16 :goto_d

    .line 302
    .restart local v15    # "listingTypeSubTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    :cond_1f
    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$6;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-static {v15, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    move-object/from16 v21, v2

    goto/16 :goto_e

    .line 305
    .restart local v21    # "subType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 306
    .restart local v17    # "propertyTypeValid":Z
    :cond_21
    const/16 v2, 0x8

    goto/16 :goto_10

    .line 310
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_11

    .line 311
    .restart local v22    # "summaryValid":Z
    :cond_23
    const/16 v2, 0x8

    goto/16 :goto_12

    .line 315
    :cond_24
    const/4 v9, 0x0

    goto/16 :goto_13

    .line 316
    .restart local v9    # "agentCount":I
    :cond_25
    const/16 v2, 0x8

    goto/16 :goto_14

    .line 317
    :cond_26
    const/16 v2, 0x8

    goto/16 :goto_15
.end method

.method private updateViewOpenHomes()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 329
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mViewsInitialised:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeSingleView:Landroid/view/View;

    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mShowOpenHomeMultipleView:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeMultipleView:Landroid/view/View;

    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mShowOpenHomeMultipleView:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v1, v5

    .line 337
    .local v1, "openHomeValid":Z
    :goto_3
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeView:Landroid/view/View;

    if-eqz v1, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 338
    if-eqz v1, :cond_2

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeSingleTimeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-direct {p0, v6}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_2
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeSingleViewAllView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    if-eqz v1, :cond_3

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeSingleViewAllView:Landroid/widget/TextView;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_9

    sget v2, Lnz/co/realestate/android/lib/R$string;->view_all:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_3
    new-instance v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-direct {v0, v2, v3, v4}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    .line 344
    .local v0, "adapter":Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeMultipleListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .end local v0    # "adapter":Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;
    .end local v1    # "openHomeValid":Z
    :cond_4
    move v2, v4

    .line 332
    goto :goto_1

    :cond_5
    move v2, v4

    .line 333
    goto :goto_2

    :cond_6
    move v1, v3

    .line 336
    goto :goto_3

    .restart local v1    # "openHomeValid":Z
    :cond_7
    move v2, v4

    .line 337
    goto :goto_4

    :cond_8
    move v3, v4

    .line 339
    goto :goto_5

    .line 340
    :cond_9
    sget v2, Lnz/co/realestate/android/lib/R$string;->add:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method private updateViewPropertyImageCount()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mViewsInitialised:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 356
    .local v0, "imageValid":Z
    :goto_1
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mImageCountImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mImageCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    if-eqz v0, :cond_0

    .line 359
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mImageCountTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

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

    .line 355
    goto :goto_1

    .restart local v0    # "imageValid":Z
    :cond_3
    move v3, v4

    .line 356
    goto :goto_2

    :cond_4
    move v2, v4

    .line 357
    goto :goto_3

    .line 360
    :cond_5
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mImageCountTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPagerPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

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
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-super {p0, v4}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 111
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 112
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPager:Landroid/support/v4/view/ViewPager;

    .line 118
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->expired_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mExpiredView:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->address_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAddressTextView:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->furnishing_details:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    .line 123
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->image_count_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mImageCountImageView:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->image_count_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mImageCountTextView:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->enquire_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mEnquireButton:Landroid/widget/Button;

    .line 126
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->price_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPriceTextView:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->open_home_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeView:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->open_home_single_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeSingleView:Landroid/view/View;

    .line 131
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->open_home_single_time_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeSingleTimeTextView:Landroid/widget/TextView;

    .line 132
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->open_home_single_view_all_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeSingleViewAllView:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->open_home_multiple_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeMultipleView:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->open_home_multiple_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeMultipleListView:Landroid/widget/ListView;

    .line 135
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeMultipleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 136
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeMultipleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 139
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->listing_number_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListingNumberTextView:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->listed_date_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListedDateTextView:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->property_type_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyTypeTextView:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->property_summary_webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    .line 143
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 144
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$integer;->application_text_size_small_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 145
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$SimpleWebViewClient;

    invoke-direct {v1, p0, v6}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$SimpleWebViewClient;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 147
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mProperySummaryWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 150
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 151
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateAdvertisementImage()V

    .line 161
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->agent_details0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAgentDetails0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .line 162
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->agent_details1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mAgentDetails1:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .line 165
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mEnquireButton:Landroid/widget/Button;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$2;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mOpenHomeView:Landroid/view/View;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$3;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$string;->retrieving_details:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->please_wait:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$4;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$4;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mLoadingDialog:Landroid/app/Dialog;

    .line 187
    new-instance v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    invoke-direct {v0, p0, v6}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    .line 188
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 189
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$5;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$5;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 202
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 205
    iput-boolean v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mViewsInitialised:Z

    .line 208
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateView()V

    .line 209
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    sget v0, Lnz/co/realestate/android/lib/R$layout;->property_details_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 232
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 233
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 234
    :cond_0
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 437
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateAdvertisementImage()V

    .line 438
    :cond_0
    return-void
.end method

.method protected onOpenHomeTimesClick()V
    .locals 5

    .prologue
    .line 382
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_DETAILS_OPEN_HOMES:Ljava/lang/String;

    invoke-interface {v1, v2}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 387
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->onProperty(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$7;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$7;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 397
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnz/co/realestate/android/lib/R$string;->open_homes:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    new-instance v4, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$9;

    invoke-direct {v4, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$9;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->cancel:I

    .line 402
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$8;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$8;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onOpenHomeTimesClickExisting()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mShowOpenHomeMultipleView:Z

    .line 378
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateViewOpenHomes()V

    .line 379
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 227
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_DETAILS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

    .prologue
    .line 445
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;

    .line 446
    return-void
.end method

.method public setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 1
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 216
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 217
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->mPropertyViewPagerAdapter:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->notifyDataSetChanged()V

    .line 218
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->updateView()V

    .line 219
    return-void
.end method
