.class public abstract Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;
.super Landroid/support/v4/app/Fragment;
.source "RESHomeFragmentBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;,
        Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;
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


# static fields
.field private static final FLIP_ANIMATION_DURATION:J = 0x3e8L


# instance fields
.field protected mAddressTextView:Landroid/widget/TextView;

.field protected mAdvertisementImageView:Landroid/widget/ImageView;

.field protected mAnimatingLayout:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

.field protected mDiscoverTextView:Landroid/widget/TextView;

.field protected mFooterLayout:Landroid/widget/LinearLayout;

.field protected mFragmentListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;

.field protected mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

.field protected mHeaderTextView:Landroid/widget/TextView;

.field protected mImageLoadListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;

.field protected mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field protected mInitialListingsUpdated:Z

.field protected mListingDetailsView:Landroid/view/View;

.field protected mListingImageProgressBar:Landroid/widget/ProgressBar;

.field protected mListingImageView:Landroid/widget/ImageView;

.field protected mMyPropertyImageView:Landroid/widget/ImageView;

.field protected mOpenHomeTextView:Landroid/widget/TextView;

.field protected mPriceTextView:Landroid/widget/TextView;

.field protected mPropertyTypeImageView:Landroid/widget/ImageView;

.field protected mPropertyTypeTextView:Landroid/widget/TextView;

.field protected mTeaserTextView:Landroid/widget/TextView;

.field protected mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private getListingDrivingDistance()V
    .locals 6

    .prologue
    .line 395
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    if-nez v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedListingDistance(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 397
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 398
    .local v0, "destination":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v1, v2, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$GetDrivingDistanceIntentService;->startService(Landroid/content/Context;ILcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method private getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;
    .locals 14
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 325
    if-eqz p1, :cond_0

    iget-object v8, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v8, v8, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 336
    :goto_0
    return-object v8

    .line 326
    :cond_1
    iget-object v8, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .line 327
    .local v5, "openHome":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v6

    .line 328
    .local v6, "startTime":Ljava/util/Date;
    if-nez v6, :cond_2

    sget v8, Lnz/co/realestate/android/lib/R$string;->open_home:I

    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 329
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "EEE d MMM"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 330
    .local v3, "f1":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mma"

    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 331
    .local v4, "f2":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "timeString":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v8

    iget v9, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-virtual {v8, v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedListingDistance(I)Ljava/lang/Integer;

    move-result-object v1

    .line 334
    .local v1, "distance":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x64

    if-ge v8, v9, :cond_4

    :cond_3
    sget v8, Lnz/co/realestate/android/lib/R$string;->open_home_at_time:I

    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 335
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "km"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "distanceString":Ljava/lang/String;
    sget v8, Lnz/co/realestate/android/lib/R$string;->open_home_at_time_distance:I

    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private propertyImageHeight()I
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayHeight(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    goto :goto_0
.end method

.method private trackPageView()V
    .locals 5

    .prologue
    .line 368
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_HOME_FEATURED:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateInitialListings(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 377
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListingsUpdated:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    .line 379
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 381
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 383
    .local v1, "userLocation":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getListingTypeIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget v0, v3, v2

    .line 384
    .local v0, "listingTypeId":I
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;

    invoke-direct {v6, v0, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;-><init>(ILcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {v5, v6}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendInitialListingsRequestIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;)V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    .end local v0    # "listingTypeId":I
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListingsUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract getActionBarTitle(I)Ljava/lang/String;
.end method

.method protected abstract getDefaultImageResource(I)I
.end method

.method protected abstract getDiscoverText(I)Ljava/lang/CharSequence;
.end method

.method protected abstract getFooterColor(I)I
.end method

.method protected abstract getHeaderText(I)Ljava/lang/CharSequence;
.end method

.method protected abstract getMyPropertyImageResource(I)I
.end method

.method protected abstract getPropertyTypeImageResource(I)I
.end method

.method protected abstract getPropertyTypeText(I)Ljava/lang/CharSequence;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-super {p0, v6}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 97
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentInitialListing()Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 99
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAnimatingLayout:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    .line 101
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->listing_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->header_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mHeaderTextView:Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->image_progressbar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageProgressBar:Landroid/widget/ProgressBar;

    .line 105
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->discover_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mDiscoverTextView:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->listing_details_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingDetailsView:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->address_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAddressTextView:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->price_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mPriceTextView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->furnishing_details:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    .line 111
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->open_home_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mOpenHomeTextView:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->teaser_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mTeaserTextView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->footer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 117
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->near_me_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 118
    .local v8, "nearMeButton":Landroid/view/View;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->search_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 119
    .local v10, "searchButton":Landroid/view/View;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->my_property_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 120
    .local v7, "myPropertyButton":Landroid/view/View;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->property_type_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 121
    .local v9, "propertyTypeButton":Landroid/view/View;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->my_property_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mMyPropertyImageView:Landroid/widget/ImageView;

    .line 122
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->property_type_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mPropertyTypeImageView:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->property_type_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mPropertyTypeTextView:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v2, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$1;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$1;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    new-instance v1, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$2;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$2;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v1, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$3;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$3;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v1, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$4;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$4;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v1, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$5;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    new-instance v2, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$6;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$6;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingDetailsView:Landroid/view/View;

    new-instance v2, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$7;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$7;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;

    const-wide/16 v1, 0x3e8

    const v3, 0x3f333333    # 0.7f

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;-><init>(JFDZ)V

    .line 180
    .local v0, "builder":Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAnimatingLayout:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->setAnimationControllerBuilder(Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;)V

    .line 183
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 186
    iput-boolean v6, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mViewsInitialised:Z

    .line 189
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->updateInitialListings(Z)V

    .line 192
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->updateView()V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    sget v0, Lnz/co/realestate/android/lib/R$layout;->home_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 206
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 207
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 3
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 349
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentInitialListings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 351
    .local v0, "oldInitialListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentInitialListing()Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 352
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->trackPageView()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->updateView()V

    .line 365
    .end local v0    # "oldInitialListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentListingTypeId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 356
    .restart local v0    # "oldInitialListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentInitialListing()Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 357
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->trackPageView()V

    .line 358
    :cond_3
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/core/RESImageLoader;->unloadTarget(Landroid/widget/ImageView;)V

    .line 359
    :cond_4
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->updateView()V

    goto :goto_0

    .line 360
    .end local v0    # "oldInitialListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :cond_5
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 361
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->updateInitialListings(Z)V

    goto :goto_0

    .line 362
    :cond_6
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cachedListingDistances"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->updateView()V

    goto :goto_0
.end method

.method protected onListingClick()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;->onPropertyPressed(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 201
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->trackPageView()V

    .line 202
    return-void
.end method

.method protected abstract retrieveListingDrivingDirections()Z
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;

    .prologue
    .line 406
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;

    .line 407
    return-void
.end method

.method protected updateView()V
    .locals 18

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mViewsInitialised:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v11

    .line 218
    .local v11, "currentListingTypeId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getDefaultImageResource(I)I

    move-result v12

    .line 219
    .local v12, "defaultImageResource":I
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v12}, Lnz/co/realestate/android/lib/core/RESImageLoader;->setDefaultImage(Landroid/widget/ImageView;I)V

    .line 222
    new-instance v1, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;-><init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mImageLoadListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;

    .line 223
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v12}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getBitmapImageDimensions(Landroid/content/Context;I)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v13

    .line 224
    .local v13, "dimens":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v1}, Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever;->getPropertyImageUrl(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "url":Ljava/lang/String;
    if-nez v3, :cond_c

    .line 232
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingDetailsView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-eqz v1, :cond_10

    const/4 v10, 0x1

    .line 240
    .local v10, "addressValid":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_11

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mAddressTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const-string v4, ", "

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    :cond_3
    const/16 v16, 0x1

    .line 245
    .local v16, "priceValid":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mPriceTextView:Landroid/widget/TextView;

    if-eqz v16, :cond_13

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mPriceTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->formatPrice(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_15

    const/4 v14, 0x1

    .line 250
    .local v14, "furnishingsValid":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    if-eqz v14, :cond_16

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v2, v1}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->setVisibility(I)V

    .line 251
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->setDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    .line 254
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v15, 0x1

    .line 255
    .local v15, "openHomeValid":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mOpenHomeTextView:Landroid/widget/TextView;

    if-eqz v15, :cond_18

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mOpenHomeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->retrieveListingDrivingDirections()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getListingDrivingDistance()V

    .line 260
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->teaser:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/16 v17, 0x1

    .line 261
    .local v17, "teaserValid":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mTeaserTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mTeaserTextView:Landroid/widget/TextView;

    if-eqz v17, :cond_1a

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mTeaserTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mTeaserTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->teaser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mDiscoverTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getDiscoverText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mDiscoverTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getHeaderText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 273
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getFooterColor(I)I

    move-result v4

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 276
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mMyPropertyImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getMyPropertyImageResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mPropertyTypeImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getPropertyTypeImageResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mPropertyTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getPropertyTypeText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->getActionBarTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    .end local v10    # "addressValid":Z
    .end local v14    # "furnishingsValid":Z
    .end local v15    # "openHomeValid":Z
    .end local v16    # "priceValid":Z
    .end local v17    # "teaserValid":Z
    :cond_c
    if-eqz v13, :cond_d

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 227
    invoke-direct/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->propertyImageHeight()I

    move-result v5

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 227
    invoke-virtual {v13}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v13}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v8, v8, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mImageLoadListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;

    .line 226
    invoke-virtual/range {v1 .. v9}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    goto/16 :goto_1

    .line 228
    :cond_d
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mListingImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->propertyImageHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v6, v6, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    .line 229
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mImageLoadListener:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;

    .line 228
    invoke-virtual/range {v1 .. v7}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    goto/16 :goto_1

    .line 232
    :cond_e
    const/16 v1, 0x8

    goto/16 :goto_2

    .line 236
    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_3

    .line 239
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 240
    .restart local v10    # "addressValid":Z
    :cond_11
    const/16 v1, 0x8

    goto/16 :goto_5

    .line 244
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 245
    .restart local v16    # "priceValid":Z
    :cond_13
    const/16 v1, 0x8

    goto/16 :goto_7

    .line 246
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    goto/16 :goto_8

    .line 249
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 250
    .restart local v14    # "furnishingsValid":Z
    :cond_16
    const/16 v1, 0x8

    goto/16 :goto_a

    .line 254
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 255
    .restart local v15    # "openHomeValid":Z
    :cond_18
    const/16 v1, 0x8

    goto/16 :goto_c

    .line 260
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 261
    .restart local v17    # "teaserValid":Z
    :cond_1a
    const/4 v1, 0x4

    goto/16 :goto_e

    .line 266
    :cond_1b
    const/16 v1, 0x8

    goto/16 :goto_f
.end method
