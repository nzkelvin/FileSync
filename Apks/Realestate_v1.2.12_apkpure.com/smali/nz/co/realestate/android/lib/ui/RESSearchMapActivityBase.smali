.class public abstract Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESSearchMapActivityBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;
.implements Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;,
        Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SimplePagerAdapter;,
        Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;",
        "Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_REQUEST_CODE_LOCATION:I = 0x1

.field private static final ACTIVITY_REQUEST_CODE_REFINE:I = 0x0

.field private static final EXTRA_BOUNDS:Ljava/lang/String; = "bounds"

.field private static final EXTRA_LISTINGS_REQUEST:Ljava/lang/String; = "listings_request"

.field private static final EXTRA_LISTINGS_RESULT:Ljava/lang/String; = "listings_result"

.field private static final EXTRA_PAN_TO_USER_LOCATION:Ljava/lang/String; = "panToUserLocation"

.field private static final LIST_FRAGMENT_TAG:Ljava/lang/String; = "list"

.field private static final MAP_FRAGMENT_TAG:Ljava/lang/String; = "map"


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mListFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

.field private mListingRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

.field private mListingSearchDialog:Landroid/app/ProgressDialog;

.field private mListingSearchTask:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

.field private mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

.field private mPanToUserLocation:Z

.field private mShowingListView:Z

.field private mViewMode:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

.field private mViewPager:Lnz/co/jsalibrary/android/widget/JSAViewPager;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    .line 74
    sget-object v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->MAP_THEN_LIST:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewMode:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->showMapView()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Z)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->showListView(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->retrieveListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    return-void
.end method

.method static synthetic access$1100(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onAdvertisementImageClick()V

    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    return-object v0
.end method

.method static synthetic access$602(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->retrieveListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v0

    return-object v0
.end method

.method private getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 2

    .prologue
    .line 473
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 474
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentBaseListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getStartActivityIntentBounds(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)Landroid/content/Intent;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .param p2, "panToUserLocation"    # Z

    .prologue
    .line 110
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    const-string v3, "search_map_activity"

    .line 111
    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getActivityIntentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "bounds"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 114
    const-string v2, "panToUserLocation"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    return-object v1
.end method

.method private initialiseSharedComponents()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method private initialiseViewModeToList()V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listings_request"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .line 249
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listings_result"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .line 250
    .local v0, "listingsResult":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewMode:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    .line 251
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewMode:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    sget-object v2, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    if-ne v1, v2, :cond_1

    .line 252
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-virtual {v1, v2, v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->setListingsRequestAndResult(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    .line 253
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->showListView(Z)Z

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->updateView()V

    goto :goto_0
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 296
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 297
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v3, "map"

    invoke-virtual {v0, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "section":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {p0, v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method

.method private onLocationActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 315
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    const-string v0, "bounds"

    .line 317
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->setMapToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0
.end method

.method private onRefineActivityResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 328
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->retrieveMapListings()V

    goto :goto_0
.end method

.method private retrieveListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 4
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v0

    .line 428
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-virtual {p1, v2, v3}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->scale(D)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 429
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListingTypeId(Ljava/lang/Integer;)V

    .line 430
    new-instance v1, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    invoke-direct {v1, p0, v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    .line 431
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private retrieveListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p2, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-virtual {p1, p2}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setSortOrder(Ljava/lang/String;)V

    .line 417
    new-instance v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    invoke-direct {v0, p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    .line 418
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 419
    return-void
.end method

.method private showListView(Z)Z
    .locals 3
    .param p1, "userInteraction"    # Z

    .prologue
    const/4 v1, 0x1

    .line 233
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v2

    if-eqz p1, :cond_1

    sget-object v0, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_LIST:Ljava/lang/String;

    .line 235
    :goto_1
    invoke-interface {v2, v0}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAViewPager;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/JSAViewPager;->setCurrentItem(I)V

    .line 237
    iput-boolean v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    .line 238
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->updateView()V

    .line 239
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->updateView()V

    move v0, v1

    .line 240
    goto :goto_0

    .line 234
    :cond_1
    sget-object v0, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_CLUSTER_LIST:Ljava/lang/String;

    goto :goto_1
.end method

.method private showMapView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_MAP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAViewPager;

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/JSAViewPager;->setCurrentItem(I)V

    .line 228
    iput-boolean v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    .line 229
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->updateView()V

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->startActivity(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)V

    .line 120
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .param p2, "panToUserLocation"    # Z

    .prologue
    .line 123
    invoke-static {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getStartActivityIntentBounds(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listingsRequest"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p2, "listingsResult"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .prologue
    .line 128
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    const-string v3, "search_map_activity"

    .line 129
    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getActivityIntentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "listings_request"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    const-string v2, "listings_result"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 286
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "map"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 288
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 290
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 291
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->tileBitmapEnds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 290
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 287
    goto :goto_0

    .line 288
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 292
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewsInitialised:Z

    if-nez v0, :cond_0

    .line 278
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getActionBarTitle(I)Ljava/lang/String;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 322
    invoke-super {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 323
    if-nez p1, :cond_1

    invoke-direct {p0, p2, p3}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onRefineActivityResult(ILandroid/content/Intent;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onLocationActivityResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 337
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewMode:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    sget-object v1, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->showMapView()V

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    sget v3, Lnz/co/realestate/android/lib/R$layout;->search_map_activity:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v6

    invoke-virtual {p0, v6}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getActionBarTitle(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v6, "map"

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    .line 152
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v6, "list"

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    .line 153
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    if-nez v3, :cond_0

    new-instance v3, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-direct {v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;-><init>()V

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    .line 154
    :cond_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    if-nez v3, :cond_1

    new-instance v3, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    invoke-direct {v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;-><init>()V

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    .line 157
    :cond_1
    sget v3, Lnz/co/realestate/android/lib/R$id;->viewpager:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/widget/JSAViewPager;

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAViewPager;

    .line 158
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAViewPager;

    new-instance v6, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SimplePagerAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SimplePagerAdapter;-><init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v3, v6}, Lnz/co/jsalibrary/android/widget/JSAViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 159
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAViewPager;

    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lnz/co/jsalibrary/android/widget/JSAViewPager;->setCurrentItem(I)V

    .line 160
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewPager:Lnz/co/jsalibrary/android/widget/JSAViewPager;

    new-instance v6, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$1;

    invoke-direct {v6, p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$1;-><init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V

    invoke-virtual {v3, v6}, Lnz/co/jsalibrary/android/widget/JSAViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 173
    sget v3, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 174
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v6, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$2;

    invoke-direct {v6, p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$2;-><init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v1

    .line 182
    .local v1, "location":Landroid/location/Location;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "panToUserLocation"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mPanToUserLocation:Z

    .line 183
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mPanToUserLocation:Z

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->setMapToUserLocation()V

    .line 185
    iput-boolean v5, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mPanToUserLocation:Z

    .line 189
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "bounds"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .line 190
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "panToUserLocation"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 191
    .local v2, "panToUserLocation":Z
    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-virtual {v3, v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->setMapToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 194
    :cond_4
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->updateAdvertisementImage()V

    .line 197
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->initialiseSharedComponents()V

    .line 200
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 203
    iput-boolean v4, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewsInitialised:Z

    .line 206
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->initialiseViewModeToList()V

    .line 207
    return-void

    .end local v0    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .end local v1    # "location":Landroid/location/Location;
    .end local v2    # "panToUserLocation":Z
    :cond_5
    move v3, v5

    .line 159
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 510
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$menu;->search_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 511
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onDestroy()V

    .line 269
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 270
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 307
    const-string v0, "adImage"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->updateAdvertisementImage()V

    .line 308
    :cond_0
    return-void
.end method

.method public onLocationClick()V
    .locals 2

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 530
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 538
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->map_list:I

    if-ne v2, v3, :cond_1

    .line 539
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v2, :cond_3

    .line 540
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->showMapView()V

    .line 545
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->supportInvalidateOptionsMenu()V

    .line 548
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->sort_filter:I

    if-ne v1, v2, :cond_2

    .line 549
    iget-boolean v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v1, :cond_4

    .line 550
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onSortClick()V

    .line 556
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_2
    return v1

    .line 535
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->finish()V

    goto :goto_2

    .line 542
    :cond_3
    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->showListView(Z)Z

    move-result v0

    .line 543
    .local v0, "shown":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mMapFragment:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getMapBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->retrieveListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0

    .line 552
    .end local v0    # "shown":Z
    :cond_4
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onRefineClick()V

    goto :goto_1

    .line 530
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 516
    sget v2, Lnz/co/realestate/android/lib/R$id;->map_list:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 517
    .local v0, "mapListItem":Landroid/view/MenuItem;
    sget v2, Lnz/co/realestate/android/lib/R$id;->sort_filter:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 520
    .local v1, "sortFilterItem":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v2, :cond_0

    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_map_white_24dp:I

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 521
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v2, :cond_1

    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_sort_white_24dp:I

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 524
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewMode:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    sget-object v3, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 526
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 520
    :cond_0
    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_list_white_24dp:I

    goto :goto_0

    .line 521
    :cond_1
    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_filter_list_white_24dp:I

    goto :goto_1

    .line 524
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onRefineClick()V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 379
    return-void
.end method

.method public onSortClick()V
    .locals 10

    .prologue
    .line 478
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mViewMode:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    sget-object v1, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    if-ne v0, v1, :cond_0

    const/4 v4, 0x1

    .line 479
    .local v4, "listMode":Z
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    const-string v8, "listing_sort_options"

    invoke-static {v0, v1, v8}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringMapArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 480
    .local v6, "sortOptions":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v7

    .line 481
    .local v7, "sortTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v5

    .line 482
    .local v5, "sortValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;

    const-string v1, "analytics"

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 483
    .local v3, "sortAnalytics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mListingRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 484
    .local v2, "index":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnz/co/realestate/android/lib/R$string;->sort:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-class v0, Ljava/lang/String;

    .line 485
    invoke-static {v7, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;-><init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;ILjava/util/List;ZLjava/util/List;)V

    invoke-virtual {v9, v8, v2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 503
    return-void

    .line 478
    .end local v2    # "index":I
    .end local v3    # "sortAnalytics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "listMode":Z
    .end local v5    # "sortValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "sortOptions":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "sortTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 483
    .restart local v3    # "sortAnalytics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "listMode":Z
    .restart local v5    # "sortValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "sortOptions":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "sortTitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onStart()V

    .line 263
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v1

    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->mShowingListView:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_LIST:Ljava/lang/String;

    .line 264
    :goto_0
    invoke-interface {v1, v0}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 265
    return-void

    .line 263
    :cond_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_MAP:Ljava/lang/String;

    goto :goto_0
.end method

.method public showATM(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)V
    .locals 0
    .param p1, "atm"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    .prologue
    .line 367
    return-void
.end method

.method public showBranch(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V
    .locals 3
    .param p1, "branch"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p1}, Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;->putBundle(Landroid/content/Intent;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V

    .line 373
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showDirections(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 0
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 363
    return-void
.end method

.method public showListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 6
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 355
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listings_map"

    const-string v2, "listing"

    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    .line 357
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    .line 356
    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 358
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;I)V

    .line 359
    return-void
.end method

.method public showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 1
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->showListView(Z)Z

    .line 351
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->retrieveListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 352
    return-void
.end method

.method public showProperty(I)V
    .locals 0
    .param p1, "listingId"    # I

    .prologue
    .line 346
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;I)V

    .line 347
    return-void
.end method
