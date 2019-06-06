.class public Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESSearchMapFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;
.implements Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;
.implements Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;,
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;,
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;,
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;,
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;",
        "Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_USER_LOCATION_ZOOM_LEVEL:I = 0x10

.field private static final MIN_WESTPAC_ATM_ZOOM_LEVEL:I = 0xe

.field private static final MIN_WESTPAC_BRANCH_ZOOM_LEVEL:I = 0xb

.field private static final PAN_REFRESH_SCREEN_RATIO:D = 0.6


# instance fields
.field private mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

.field private mLastQueriedMapCenter:Lcom/google/android/maps/GeoPoint;

.field private mLastQueriedMapZoomLevel:I

.field private mListingCount:Ljava/lang/Integer;

.field private mListingCountTextView:Landroid/widget/TextView;

.field private mLocationButton:Landroid/view/View;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapAppearanceHybridButton:Landroid/view/View;

.field private mMapAppearanceMapButton:Landroid/view/View;

.field private mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

.field private mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

.field private mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

.field private mViewsInitialised:Z

.field private mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 57
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->initialiseMap()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateWestpacOverlay(Z)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->onLocationClick()V

    return-void
.end method

.method private getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .locals 2

    .prologue
    .line 522
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 523
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentBaseMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v1

    return-object v1
.end method

.method private initialiseMap()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 156
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v5, :cond_0

    .line 207
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 162
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 163
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 164
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 165
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 166
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 167
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 168
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 171
    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager$ClusterChangeListener;)V

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    .line 172
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentMapListings()Ljava/util/Map;

    move-result-object v2

    .line 173
    .local v2, "listings":Ljava/util/Map;, "Ljava/util/Map<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;>;"
    if-eqz v2, :cond_2

    .line 174
    monitor-enter v2

    .line 175
    :try_start_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentMapListings()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .line 177
    .local v3, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getZoomLevel()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    iget-object v5, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v5, v9}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->addClusters(ILjava/util/List;Z)V

    .line 178
    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/maps/GeoPoint;

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLastQueriedMapCenter:Lcom/google/android/maps/GeoPoint;

    .line 179
    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getZoomLevel()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLastQueriedMapZoomLevel:I

    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    iget v5, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCount:Ljava/lang/Integer;

    goto :goto_1

    .line 183
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;>;"
    .end local v3    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 182
    :cond_1
    :try_start_1
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->triggerClusterChangeEvent(I)V

    .line 183
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :cond_2
    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v6, v7, p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;)V

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .line 188
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->bestClusterLevel(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->isZoomLevelClustered(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->setShowClustersOnly(Z)V

    .line 189
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->bestClustersForLevel(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->addItems(Ljava/util/List;)V

    .line 192
    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v6, v7, p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;)V

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "bags":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag<*+Lnz/co/realestate/android/lib/util/RESMapItem;>;>;"
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 201
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    if-eqz v5, :cond_3

    .line 202
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-interface {v5, v6}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;->execute(Lcom/google/android/gms/maps/GoogleMap;)Z

    move-result v4

    .line 203
    .local v4, "success":Z
    if-eqz v4, :cond_3

    const/4 v5, 0x0

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    .line 206
    .end local v4    # "success":Z
    :cond_3
    iput-boolean v10, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mViewsInitialised:Z

    goto/16 :goto_0
.end method

.method private isShowWestpacATMs(I)Z
    .locals 1
    .param p1, "zoom"    # I

    .prologue
    .line 307
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowWestpacBranches(I)Z
    .locals 1
    .param p1, "zoom"    # I

    .prologue
    .line 311
    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCurrentMapListingRequestCountChange()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateView()V

    .line 487
    return-void
.end method

.method private onCurrentMapListingsChange()V
    .locals 8

    .prologue
    .line 467
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentMapListings()Ljava/util/Map;

    move-result-object v1

    .line 468
    .local v1, "listings":Ljava/util/Map;, "Ljava/util/Map<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;>;"
    monitor-enter v1

    .line 469
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 470
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .line 471
    .local v2, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getZoomLevel()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 472
    .local v3, "zoom":I
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v4, v7}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->addClusters(ILjava/util/List;Z)V

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    iget v4, v4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCount:Ljava/lang/Integer;

    goto :goto_0

    .line 477
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;>;"
    .end local v2    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .end local v3    # "zoom":I
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 476
    :cond_0
    :try_start_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->triggerClusterChangeEvent(I)V

    .line 477
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateView()V

    .line 479
    return-void
.end method

.method private onCurrentUserLocationChange()V
    .locals 3

    .prologue
    .line 684
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    if-nez v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    instance-of v1, v1, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-interface {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;->execute(Lcom/google/android/gms/maps/GoogleMap;)Z

    move-result v0

    .line 687
    .local v0, "success":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    goto :goto_0
.end method

.method private onLocationClick()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    invoke-interface {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;->onLocationClick()V

    .line 540
    :cond_0
    return-void
.end method

.method private onRefineClick()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    invoke-interface {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;->onRefineClick()V

    .line 515
    :cond_0
    return-void
.end method

.method private onUserLocationClick()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->animateMapToUserLocation(Z)V

    .line 532
    return-void
.end method

.method private updateClustersFromManager()V
    .locals 4

    .prologue
    .line 502
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v0, v1

    .line 504
    .local v0, "zoom":I
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    invoke-virtual {v3, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->bestClusterLevel(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->isZoomLevelClustered(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->setShowClustersOnly(Z)V

    .line 506
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mClusterManager:Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESClusterManager;->bestClustersForLevel(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->setItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateMapOnChange()V
    .locals 18

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v14, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v14}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v14

    iget v14, v14, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v9, v14

    .line 395
    .local v9, "zoom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v14}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getLatitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D

    move-result-wide v4

    .line 396
    .local v4, "latitudeSpan":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v14}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getLongitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D

    move-result-wide v6

    .line 397
    .local v6, "longitudeSpan":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v14}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v14

    iget-object v8, v14, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 398
    .local v8, "ll":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v3, Lcom/google/android/maps/GeoPoint;

    iget-wide v14, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v14, v15}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v14

    iget-wide v0, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v15

    invoke-direct {v3, v14, v15}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 401
    .local v3, "center":Lcom/google/android/maps/GeoPoint;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLastQueriedMapCenter:Lcom/google/android/maps/GeoPoint;

    if-nez v14, :cond_2

    .line 402
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->retrieveMapListings()V

    goto :goto_0

    .line 407
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLastQueriedMapZoomLevel:I

    if-eq v14, v9, :cond_3

    .line 408
    invoke-direct/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateClustersFromManager()V

    .line 409
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateWestpacOverlay(Z)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->retrieveMapListings()V

    goto :goto_0

    .line 415
    :cond_3
    new-instance v2, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-direct/range {v2 .. v7}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;DD)V

    .line 416
    .local v2, "mapBounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getEastCenterPoint()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getWestCenterPoint()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v15}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distance(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v10

    .line 417
    .local v10, "mapSpanDistance":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLastQueriedMapCenter:Lcom/google/android/maps/GeoPoint;

    invoke-static {v3, v14}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distance(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v12

    .line 420
    .local v12, "scrolledDistance":D
    const-wide v14, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v14, v10

    cmpg-double v14, v12, v14

    if-ltz v14, :cond_0

    .line 423
    invoke-virtual/range {p0 .. p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->retrieveMapListings()V

    goto :goto_0
.end method

.method private updateView()V
    .locals 11

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 257
    iget-boolean v7, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mViewsInitialised:Z

    if-nez v7, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    sget v7, Lnz/co/realestate/android/lib/R$string;->showing_n_listings:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "countFormat":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentMapListingRequestCount()I

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 262
    .local v4, "updatingListings":Z
    :goto_1
    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCountTextView:Landroid/widget/TextView;

    if-nez v4, :cond_2

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCount:Ljava/lang/Integer;

    if-eqz v7, :cond_5

    :cond_2
    move v7, v6

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    if-eqz v4, :cond_6

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCountTextView:Landroid/widget/TextView;

    sget v7, Lnz/co/realestate/android/lib/R$string;->updating_listings:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_3
    :goto_3
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMapAppearance()Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    move-result-object v3

    .line 268
    .local v3, "mapAppearance":Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    sget-object v6, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->HYBRID:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-static {v3, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 269
    .local v2, "isHybrid":Z
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapAppearanceMapButton:Landroid/view/View;

    sget-object v7, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->MAP:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-static {v3, v7}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 270
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapAppearanceHybridButton:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    .line 272
    if-eqz v2, :cond_7

    move v1, v8

    .line 273
    .local v1, "desiredMapType":I
    :goto_4
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 274
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_0

    .end local v1    # "desiredMapType":I
    .end local v2    # "isHybrid":Z
    .end local v3    # "mapAppearance":Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    .end local v4    # "updatingListings":Z
    :cond_4
    move v4, v6

    .line 261
    goto :goto_1

    .restart local v4    # "updatingListings":Z
    :cond_5
    move v7, v8

    .line 262
    goto :goto_2

    .line 264
    :cond_6
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCount:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCountTextView:Landroid/widget/TextView;

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCount:Ljava/lang/Integer;

    aput-object v10, v9, v6

    invoke-static {v0, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .restart local v2    # "isHybrid":Z
    .restart local v3    # "mapAppearance":Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    :cond_7
    move v1, v5

    .line 272
    goto :goto_4
.end method

.method private updateWestpacOverlay(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 282
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v5, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v5

    iget v5, v5, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v4, v5

    .line 286
    .local v4, "zoom":I
    invoke-direct {p0, v4}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->isShowWestpacATMs(I)Z

    move-result v0

    .line 287
    .local v0, "atms":Z
    invoke-direct {p0, v4}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->isShowWestpacBranches(I)Z

    move-result v1

    .line 290
    .local v1, "branches":Z
    if-nez p1, :cond_2

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->isShowingATMs()Z

    move-result v5

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->isShowingBranches()Z

    move-result v5

    if-eq v5, v1, :cond_0

    .line 293
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    .line 295
    .local v3, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedWestpacATMs()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedWestpacATMs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    :cond_3
    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedWestpacBranches()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedWestpacBranches()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    :cond_4
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-virtual {v5, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->setShowingATMs(Z)V

    .line 300
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-virtual {v5, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->setShowingBranches(Z)V

    .line 303
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-virtual {v5, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->setItems(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public animateMapToPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 349
    new-instance v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;-><init>(Lcom/google/android/gms/maps/model/LatLng;Z)V

    .line 350
    .local v0, "update":Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_1

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;->execute(Lcom/google/android/gms/maps/GoogleMap;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    goto :goto_0
.end method

.method public animateMapToUserLocation(Z)V
    .locals 3
    .param p1, "userInitiated"    # Z

    .prologue
    .line 329
    new-instance v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;-><init>(ZLnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;)V

    .line 330
    .local v0, "update":Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_1

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;->execute(Lcom/google/android/gms/maps/GoogleMap;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    goto :goto_0
.end method

.method public animateToPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->animateMapToPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 548
    return-void
.end method

.method public getMapBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 10

    .prologue
    .line 454
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    .line 455
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getLatitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D

    move-result-wide v2

    .line 456
    .local v2, "latitudeSpan":D
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getLongitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D

    move-result-wide v4

    .line 457
    .local v4, "longitudeSpan":D
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v6, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 458
    .local v6, "center":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-wide v8, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    iget-wide v8, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v7

    invoke-direct {v1, v0, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 459
    .local v1, "gp":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;DD)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-super {p0, v3}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 108
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    :goto_0
    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    .line 110
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->root_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 113
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->map:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    .line 114
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v1, v3}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->requestDisallowInterceptTouchEvent(Z)V

    .line 116
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->setOnTouchedChangeListener(Lnz/co/realestate/android/lib/util/RESTouchableMapView$OnTouchedChangeListener;)V

    .line 117
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    new-instance v2, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 128
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->listing_count_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mListingCountTextView:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->location_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLocationButton:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->map_appearance_map_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapAppearanceMapButton:Landroid/view/View;

    .line 131
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->map_appearance_hybrid_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapAppearanceHybridButton:Landroid/view/View;

    .line 134
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapAppearanceMapButton:Landroid/view/View;

    new-instance v2, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$2;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapAppearanceHybridButton:Landroid/view/View;

    new-instance v2, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$3;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLocationButton:Landroid/view/View;

    new-instance v2, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$4;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$4;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 153
    return-void

    .line 108
    .end local v0    # "root":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1
    .param p1, "position"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 372
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateMapOnChange()V

    goto :goto_0
.end method

.method public onClusterChange(I)V
    .locals 0
    .param p1, "zoomLevel"    # I

    .prologue
    .line 494
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateClustersFromManager()V

    .line 495
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    sget v0, Lnz/co/realestate/android/lib/R$layout;->search_map_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 238
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->onDestroy()V

    .line 239
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 240
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    const/4 v1, 0x1

    .line 359
    const-string v0, "currentMapListings"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->onCurrentMapListingsChange()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const-string v0, "currentMapListingRequestCount"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->onCurrentMapListingRequestCountChange()V

    goto :goto_0

    .line 361
    :cond_2
    const-string v0, "cachedWestpacATMs"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateWestpacOverlay(Z)V

    goto :goto_0

    .line 362
    :cond_3
    const-string v0, "cachedWestpacBranches"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateWestpacOverlay(Z)V

    goto :goto_0

    .line 363
    :cond_4
    const-string v0, "userLocation"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateView()V

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->onCurrentUserLocationChange()V

    goto :goto_0

    .line 364
    :cond_5
    const-string v0, "mapAppearance"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateView()V

    goto :goto_0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 666
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 244
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->onLowMemory()V

    .line 245
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 675
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 676
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mWestpacMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 695
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCurrentUserLocation(Landroid/location/Location;)V

    .line 696
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 220
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->onPause()V

    .line 221
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 225
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateClustersFromManager()V

    .line 226
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->onResume()V

    .line 227
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateView()V

    .line 230
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-interface {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;->execute(Lcom/google/android/gms/maps/GoogleMap;)Z

    move-result v0

    .line 232
    .local v0, "success":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    .line 234
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMapView:Lnz/co/realestate/android/lib/util/RESTouchableMapView;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/util/RESTouchableMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 215
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_MAP_SEARCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onTouchedChange(Z)V
    .locals 1
    .param p1, "touched"    # Z

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    .line 382
    if-eqz p1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->updateMapOnChange()V

    goto :goto_0
.end method

.method public retrieveMapListings()V
    .locals 12

    .prologue
    .line 431
    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v9, :cond_0

    .line 447
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v8, v9

    .line 434
    .local v8, "zoom":I
    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v9}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getLatitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D

    move-result-wide v2

    .line 435
    .local v2, "latitudeSpan":D
    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v9}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getLongitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D

    move-result-wide v4

    .line 436
    .local v4, "longitudeSpan":D
    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget-object v6, v9, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 437
    .local v6, "ll":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-wide v10, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v9

    iget-wide v10, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v10

    invoke-direct {v1, v9, v10}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 439
    .local v1, "center":Lcom/google/android/maps/GeoPoint;
    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLastQueriedMapCenter:Lcom/google/android/maps/GeoPoint;

    .line 440
    iput v8, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mLastQueriedMapZoomLevel:I

    .line 441
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v7

    .line 442
    .local v7, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    new-instance v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;DD)V

    .line 443
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    const-wide v10, 0x3ff3333333333333L    # 1.2

    invoke-virtual {v0, v10, v11}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->scale(D)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 444
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setZoomLevel(Ljava/lang/Integer;)V

    .line 445
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingTypeId(Ljava/lang/Integer;)V

    .line 446
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    goto :goto_0
.end method

.method public setMapToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 2
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 339
    new-instance v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;-><init>(Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)V

    .line 340
    .local v0, "update":Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_1

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;->execute(Lcom/google/android/gms/maps/GoogleMap;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    goto :goto_0
.end method

.method public setMapToUserLocation()V
    .locals 3

    .prologue
    .line 319
    new-instance v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;-><init>(ZLnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;)V

    .line 320
    .local v0, "update":Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_1

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;->execute(Lcom/google/android/gms/maps/GoogleMap;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mPendingCameraUpdate:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;

    goto :goto_0
.end method

.method public showATM(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)V
    .locals 1
    .param p1, "atm"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    .prologue
    .line 551
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;->showATM(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)V

    .line 552
    :cond_0
    return-void
.end method

.method public showBranch(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V
    .locals 1
    .param p1, "branch"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .prologue
    .line 555
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;->showBranch(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V

    .line 556
    :cond_0
    return-void
.end method

.method public showDirections(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 1
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 567
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;->showDirections(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    .line 568
    :cond_0
    return-void
.end method

.method public showListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 1
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 563
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;->showListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    .line 564
    :cond_0
    return-void
.end method

.method public showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 1
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 559
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$FragmentListener;->showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 560
    :cond_0
    return-void
.end method
