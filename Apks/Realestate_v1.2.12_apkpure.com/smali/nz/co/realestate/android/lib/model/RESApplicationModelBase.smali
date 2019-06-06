.class public abstract Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
.super Lnz/co/jsalibrary/android/model/JSAModel;
.source "RESApplicationModelBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    }
.end annotation


# static fields
.field public static final AD_IMAGE:Ljava/lang/String; = "adImage"

.field public static final CACHED_DISTRICTS:Ljava/lang/String; = "cachedDistricts"

.field public static final CACHED_LISTING_DISTANCES:Ljava/lang/String; = "cachedListingDistances"

.field public static final CACHED_LISTING_TYPES:Ljava/lang/String; = "cachedListingTypes"

.field public static final CACHED_LISTING_TYPE_SUB_TYPES:Ljava/lang/String; = "cachedListingTypeSubTypes"

.field public static final CACHED_MY_PROPERTY_LISTING:Ljava/lang/String; = "cachedMyPropertyListing"

.field public static final CACHED_OPEN_HOMES:Ljava/lang/String; = "cachedOpenHomes"

.field public static final CACHED_OPEN_HOME_ADAPTER_ITEMS:Ljava/lang/String; = "cachedPresentableOpenHomes"

.field public static final CACHED_REGIONS:Ljava/lang/String; = "cachedRegions"

.field public static final CACHED_SUBURBS:Ljava/lang/String; = "cachedSuburbs"

.field public static final CACHED_WESTPAC_ATMS:Ljava/lang/String; = "cachedWestpacATMs"

.field public static final CACHED_WESTPAC_BRANCHES:Ljava/lang/String; = "cachedWestpacBranches"

.field public static final CURRENT_FEATURED_LISTINGS:Ljava/lang/String; = "currentFeaturedListings"

.field public static final CURRENT_INITIAL_LISTING:Ljava/lang/String; = "currentInitialListings"

.field public static final CURRENT_LISTINGS:Ljava/lang/String; = "currentListings"

.field public static final CURRENT_LISTING_TYPE_ID:Ljava/lang/String; = "currentListingTypeId"

.field public static final CURRENT_MAP_LISTINGS:Ljava/lang/String; = "currentMapListings"

.field public static final CURRENT_MAP_LISTING_REQUEST_COUNT:Ljava/lang/String; = "currentMapListingRequestCount"

.field public static final CURRENT_USER_LOCATION:Ljava/lang/String; = "userLocation"

.field public static final CURRENT_WESTPAC_RATES:Ljava/lang/String; = "currentWestpacRates"

.field public static final LAST_SERVER_SYNC_END_TIME:Ljava/lang/String; = "lastServerSyncEndTime"

.field public static final LAST_SERVER_SYNC_TIME:Ljava/lang/String; = "lastServerSyncTime"

.field public static final LOGGED_IN_USER:Ljava/lang/String; = "loggedInUser"

.field public static final MAP_APPEARANCE:Ljava/lang/String; = "mapAppearance"

.field private static final MAX_CACHED_DISTRICT_PAIRS:I = 0xa

.field private static final MAX_CACHED_LISTING_DISTANCE_PAIRS:I = 0xa

.field private static final MAX_CACHED_MY_PROPERTY_LISTINGS:I = 0xa

.field private static final MAX_CACHED_SUBURB_PAIRS:I = 0xa

.field private static final MAX_CURRENT_MAP_LISTINGS_PAIRS:I = 0xa

.field private static final MAX_INITIAL_LISTING_PAIRS:I = 0xa

.field public static final SYNCHRONISING:Ljava/lang/String; = "synchronising"

.field private static final serialVersionUID:J = 0x19dbfc8d9914fd24L


# instance fields
.field private transient mATMs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;",
            ">;"
        }
    .end annotation
.end field

.field private transient mAdImageUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient mAdImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private transient mBranches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCachedListingDistances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCurrentBaseListingsRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCurrentBaseMapListingsRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCurrentFeaturedListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCurrentInitialListing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCurrentMapListingRequestCount:I

.field private transient mCurrentMapListings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;",
            ">;"
        }
    .end annotation
.end field

.field private transient mCurrentUserLocation:Landroid/location/Location;

.field private transient mCurrentWestpacRates:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;

.field private transient mDistricts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient mListingSubTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;",
            ">;"
        }
    .end annotation
.end field

.field private transient mListingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;",
            ">;"
        }
    .end annotation
.end field

.field private transient mMyPropertyListings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
            ">;"
        }
    .end annotation
.end field

.field private transient mOpenHomeAdapterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private transient mOpenHomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient mRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
            ">;"
        }
    .end annotation
.end field

.field private transient mSuburbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient mSynchronisingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;-><init>(Landroid/content/Context;)V

    .line 162
    return-void
.end method


# virtual methods
.method public addAdImage(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/io/File;

    .prologue
    .line 605
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 606
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImages:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImages:Ljava/util/Map;

    .line 607
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    const-string v0, "adImage"

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 610
    return-void

    .line 608
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addAdImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 619
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImageUrl:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImageUrl:Ljava/util/Map;

    .line 621
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImageUrl:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    const-string v0, "adImage"

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addCachedDistricts(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;Ljava/util/List;)V
    .locals 4
    .param p1, "region"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p2, "districts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mDistricts:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(IZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mDistricts:Ljava/util/Map;

    .line 424
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mDistricts:Ljava/util/Map;

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    const-string v0, "cachedDistricts"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mDistricts:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 427
    return-void

    .line 425
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addCachedListingDistance(II)V
    .locals 4
    .param p1, "listingId"    # I
    .param p2, "distance"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCachedListingDistances:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCachedListingDistances:Ljava/util/Map;

    .line 330
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCachedListingDistances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    const-string v0, "cachedListingDistances"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addCachedMyPropertyListing(ILnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V
    .locals 4
    .param p1, "listingId"    # I
    .param p2, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 566
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 567
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mMyPropertyListings:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(IZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mMyPropertyListings:Ljava/util/Map;

    .line 568
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mMyPropertyListings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    const-string v0, "cachedMyPropertyListing"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mMyPropertyListings:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 571
    return-void

    .line 569
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addCachedSuburbs(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Ljava/util/List;)V
    .locals 4
    .param p1, "district"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p2, "suburbs":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSuburbs:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(IZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSuburbs:Ljava/util/Map;

    .line 445
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSuburbs:Ljava/util/Map;

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    const-string v0, "cachedSuburbs"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSuburbs:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 448
    return-void

    .line 446
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addCurrentInitialListing(Ljava/lang/Integer;Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;)V
    .locals 3
    .param p1, "listingTypeId"    # Ljava/lang/Integer;
    .param p2, "listing"    # Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    .prologue
    .line 348
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentInitialListing:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentInitialListing:Ljava/util/Map;

    .line 350
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentInitialListing:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    const-string v0, "currentInitialListings"

    invoke-virtual {p0, v0, p2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 353
    return-void

    .line 351
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addCurrentMapListing(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;)V
    .locals 3
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .param p2, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    .prologue
    .line 258
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    .line 260
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const-string v0, "currentMapListings"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearCurrentMapListings()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 269
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    const-string v0, "currentMapListings"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearLastServerSyncEndTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 733
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 734
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastSyncEndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->removeSharedPreference(Ljava/lang/String;)V

    .line 736
    const-string v1, "lastServerSyncEndTime"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 737
    return-void
.end method

.method public clearLastServerSyncTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 704
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 705
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastSyncTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->removeSharedPreference(Ljava/lang/String;)V

    .line 707
    const-string v1, "lastServerSyncTime"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 708
    return-void
.end method

.method public decrementCurrentMapListingRequestCount()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_0
    iget v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    if-nez v0, :cond_0

    monitor-exit v1

    .line 297
    :goto_0
    return-void

    .line 294
    :cond_0
    iget v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const-string v0, "currentMapListingRequestCount"

    iget v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract getActivityIntentClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public getAdImage(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImages:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 601
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public declared-synchronized getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImageUrl:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 615
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mAdImageUrl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getAdhubFormatUrl()Ljava/lang/String;
.end method

.method protected abstract getAdhubSection(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized getCachedDistricts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mDistricts:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 418
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mDistricts:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedListingDistance(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "listingId"    # I

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCachedListingDistances:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 324
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCachedListingDistances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCachedListingTypeSubTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingSubTypes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingSubTypes:Ljava/util/List;

    .line 486
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingSubTypes:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getCachedMyPropertyListing(I)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .locals 2
    .param p1, "listingId"    # I

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mMyPropertyListings:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 562
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mMyPropertyListings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCachedOpenHomeAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomeAdapterItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomeAdapterItems:Ljava/util/List;

    .line 543
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomeAdapterItems:Ljava/util/List;

    return-object v0
.end method

.method public getCachedOpenHomes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomes:Ljava/util/List;

    .line 524
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomes:Ljava/util/List;

    return-object v0
.end method

.method public getCachedRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mRegions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mRegions:Ljava/util/List;

    .line 505
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mRegions:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getCachedSuburbs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSuburbs:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 439
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSuburbs:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCachedWestpacATMs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mATMs:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mATMs:Ljava/util/List;

    .line 381
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mATMs:Ljava/util/List;

    return-object v0
.end method

.method public getCachedWestpacBranches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mBranches:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mBranches:Ljava/util/List;

    .line 399
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mBranches:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sectionCode"    # Ljava/lang/String;

    .prologue
    .line 770
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdhubSection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentBaseListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 3

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    .line 227
    .local v0, "typeId":I
    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseListingsRequests:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseListingsRequests:Landroid/util/SparseArray;

    .line 228
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseListingsRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseListingsRequests:Landroid/util/SparseArray;

    new-instance v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseListingsRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 226
    .end local v0    # "typeId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCurrentBaseMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .locals 3

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    .line 241
    .local v0, "typeId":I
    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseMapListingsRequests:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseMapListingsRequests:Landroid/util/SparseArray;

    .line 242
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseMapListingsRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseMapListingsRequests:Landroid/util/SparseArray;

    new-instance v2, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentBaseMapListingsRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 240
    .end local v0    # "typeId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    .locals 3

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingTypes:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 461
    :goto_0
    monitor-exit p0

    return-object v2

    .line 459
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v1

    .line 460
    .local v1, "typeId":I
    new-instance v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$1;

    invoke-direct {v0, p0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$1;-><init>(Lnz/co/realestate/android/lib/model/RESApplicationModelBase;I)V

    .line 461
    .local v0, "fun":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingTypes:Ljava/util/List;

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    .end local v0    # "fun":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;>;"
    .end local v1    # "typeId":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCurrentFeaturedListings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentFeaturedListings:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getCurrentInitialListing()Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;
    .locals 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentInitialListing:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 344
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentInitialListing:Ljava/util/Map;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentInspectionOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getInspectionOptions(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentListingTypeId()I
    .locals 3

    .prologue
    .line 204
    const-string v0, "currentListingTypeId"

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getListingTypeIds()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentListingTypeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getListingTypeTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMapListingRequestCount()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    return v0
.end method

.method public getCurrentMapListings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListings:Ljava/util/Map;

    return-object v0
.end method

.method public getCurrentUserLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentUserLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getCurrentWestpacRates()Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentWestpacRates:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;

    return-object v0
.end method

.method public abstract getGoogleAnalyticsTrackingCode()Ljava/lang/String;
.end method

.method public getInspectionOption(ILjava/lang/String;)Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    .locals 6
    .param p1, "id"    # I
    .param p2, "section"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 633
    if-nez p2, :cond_0

    move-object v3, v4

    .line 640
    :goto_0
    return-object v3

    .line 634
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inspectionOption:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "string":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 636
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    .line 638
    .local v1, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    :try_start_0
    const-class v3, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    move-object v3, v4

    .line 640
    goto :goto_0
.end method

.method public abstract getInspectionOptions(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;",
            ">;"
        }
    .end annotation
.end method

.method public getLastServerSyncEndTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 719
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 720
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastSyncEndTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "time":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 723
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getLastServerSyncTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 690
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 691
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastSyncTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "time":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 694
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract getListingTypeIds()[I
.end method

.method protected abstract getListingTypeTitle(I)Ljava/lang/String;
.end method

.method public getLoggedInUser()Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    const-string v3, "loggedInUsername"

    invoke-virtual {p0, v3, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "username":Ljava/lang/String;
    const-string v3, "loggedInUserPassword"

    invoke-virtual {p0, v3, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "password":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-direct {v2, v1, v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getMapAppearance()Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    .locals 4

    .prologue
    .line 671
    sget-object v2, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->MAP:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "defaultValue":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "mapAppearance"

    invoke-virtual {p0, v2, v3, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "appearance":Ljava/lang/String;
    invoke-static {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->valueOf(Ljava/lang/String;)Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    move-result-object v2

    return-object v2
.end method

.method public abstract getMyPropertyChannel()I
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public incrementCurrentMapListingRequestCount()V
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_0
    iget v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    .line 287
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const-string v0, "currentMapListingRequestCount"

    iget v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentMapListingRequestCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 289
    return-void

    .line 287
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isSynchronising(Ljava/lang/String;)Z
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 748
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 749
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSynchronisingMap:Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 750
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSynchronisingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLoggedInUser()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLoggedInUser()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "loggedInUser"

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isUserLoggedIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public removeInspectionOption(ILjava/lang/String;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "section"    # Ljava/lang/String;

    .prologue
    .line 657
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inspectionOption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->removeSharedPreference(Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeLoggedInUser()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setLoggedInUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setCachedListingTypeSubTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 491
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingSubTypes:Ljava/util/List;

    .line 492
    const-string v0, "cachedListingTypeSubTypes"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingSubTypes:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method public setCachedListingTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 472
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingTypes:Ljava/util/List;

    .line 473
    const-string v0, "cachedListingTypes"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mListingTypes:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 474
    return-void
.end method

.method public setCachedOpenHomeAdapterItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 548
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomeAdapterItems:Ljava/util/List;

    .line 549
    const-string v0, "cachedPresentableOpenHomes"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomeAdapterItems:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public setCachedOpenHomes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 529
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomes:Ljava/util/List;

    .line 530
    const-string v0, "cachedOpenHomes"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mOpenHomes:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method public setCachedRegions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 510
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mRegions:Ljava/util/List;

    .line 511
    const-string v0, "cachedRegions"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mRegions:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public setCachedWestpacATMs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "atms":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 386
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mATMs:Ljava/util/List;

    .line 387
    const-string v0, "cachedWestpacATMs"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mATMs:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 388
    return-void
.end method

.method public setCachedWestpacBranches(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "branches":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 404
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mBranches:Ljava/util/List;

    .line 405
    const-string v0, "cachedWestpacBranches"

    iget-object v1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mBranches:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public setCurrentFeaturedListings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;>;"
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentFeaturedListings:Ljava/util/List;

    .line 312
    const-string v0, "currentFeaturedListings"

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public setCurrentListingTypeId(I)V
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    .line 208
    const-string v0, "currentListingTypeId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 209
    return-void
.end method

.method public setCurrentUserLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 585
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 586
    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v1

    .line 590
    :goto_0
    return-void

    .line 587
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentUserLocation:Landroid/location/Location;

    .line 588
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    const-string v0, "userLocation"

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCurrentWestpacRates(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;)V
    .locals 1
    .param p1, "rates"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;

    .prologue
    .line 367
    iput-object p1, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mCurrentWestpacRates:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;

    .line 368
    const-string v0, "currentWestpacRates"

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public setInspectionOption(ILjava/lang/String;Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "details"    # Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 645
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v2

    .line 646
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    .line 649
    .local v1, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inspectionOption:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    const/4 v2, 0x1

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setIsSynchronising(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 754
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 755
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 756
    :try_start_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSynchronisingMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSynchronisingMap:Ljava/util/Map;

    .line 757
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->mSynchronisingMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    const-string v0, "synchronising"

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 760
    return-void

    .line 758
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLastServerSyncEndTime(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/util/Date;

    .prologue
    .line 727
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 728
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastSyncEndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "key":Ljava/lang/String;
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastServerSyncEndTime"

    invoke-virtual {p0, v0, v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public setLastServerSyncTime(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/util/Date;

    .prologue
    .line 698
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 699
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastSyncTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "key":Ljava/lang/String;
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastServerSyncTime"

    invoke-virtual {p0, v0, v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public setLoggedInUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "loggedInUsername"

    invoke-virtual {p0, v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "loggedInUserPassword"

    const-string v1, "loggedInUser"

    invoke-virtual {p0, v0, p2, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public setMapAppearance(Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;)V
    .locals 4
    .param p1, "appearance"    # Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    .prologue
    .line 677
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 678
    :cond_0
    const-string v0, "mapAppearance"

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapAppearance"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 679
    return-void
.end method

.method public declared-synchronized toggleCurrentListingTypeId()V
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v1

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getListingTypeIds()[I

    move-result-object v2

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(I[I)I

    move-result v0

    .line 213
    .local v0, "index":I
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getListingTypeIds()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getListingTypeIds()[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCurrentListingTypeId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
