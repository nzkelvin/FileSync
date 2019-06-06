.class public final Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESOpenHomesMapFragmentActivity.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SINGLE_LISTING_ZOOM_LEVEL:I = 0x10

.field private static final EXTRA_DATE:Ljava/lang/String; = "date"

.field private static final EXTRA_OPEN_HOMES:Ljava/lang/String; = "open_homes"


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapAppearanceHybridButton:Landroid/view/View;

.field private mMapAppearanceMapButton:Landroid/view/View;

.field private mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->onAdvertisementImageClick()V

    return-void
.end method

.method private initialiseMap()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->map_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    goto :goto_0
.end method

.method private initialiseMapView()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 153
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->initialiseMap()V

    .line 156
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "open_homes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    .local v5, "sHomes":Ljava/io/Serializable;
    move-object v7, v5

    .line 157
    check-cast v7, Ljava/util/List;

    .line 160
    .local v7, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    new-instance v8, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$2;

    invoke-direct {v8, p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$2;-><init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V

    invoke-static {v7, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v7

    .line 164
    new-instance v8, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$3;

    invoke-direct {v8, p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$3;-><init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V

    invoke-static {v7, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 168
    .local v2, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    new-instance v8, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;

    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v8, v9, p0, p0, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;Ljava/util/List;)V

    iput-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;

    .line 171
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 172
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 173
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 174
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 175
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v9, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;

    invoke-direct {v9, p0, v10}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 178
    new-instance v8, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$4;

    invoke-direct {v8, p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$4;-><init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V

    invoke-static {v7, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v4

    .line 183
    .local v4, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESConstantsBase;->getNewZealandMapCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    sget v9, Lnz/co/realestate/android/lib/core/RESConstantsBase;->NZ_MAP_ZOOM:I

    invoke-direct {p0, v8, v9}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->setMapToPointZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 188
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    sget v8, Lnz/co/realestate/android/lib/R$string;->no_property_addresses_available:I

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 191
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 193
    .local v6, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    invoke-virtual {v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 194
    .local v3, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    iput-boolean v11, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_home:Z

    .line 195
    new-array v10, v11, [Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-virtual {v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    aput-object v8, v10, v12

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    .line 196
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;-><init>()V

    .line 197
    .local v0, "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    iput v11, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    .line 198
    iget-object v8, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    iput-object v8, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    .line 199
    new-array v8, v11, [Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    aput-object v3, v8, v12

    invoke-static {v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    .line 200
    new-instance v8, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    iget-object v10, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    invoke-direct {v8, v10, v12, v12}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;II)V

    invoke-static {v8}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getServerBoundsList(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->bounds:Ljava/util/List;

    .line 201
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    .end local v0    # "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .end local v1    # "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    .end local v3    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .end local v6    # "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    new-instance v8, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-direct {v8, v4}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v8}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->setMapToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/maps/model/LatLng;

    const/16 v9, 0x10

    invoke-direct {p0, v8, v9}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->setMapToPointZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    goto :goto_0

    .line 205
    .restart local v1    # "clusters":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;>;"
    :cond_3
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;

    invoke-virtual {v8, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;->setItems(Ljava/util/List;)V

    .line 208
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapAppearanceMapButton:Landroid/view/View;

    new-instance v9, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$5;

    invoke-direct {v9, p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$5;-><init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapAppearanceHybridButton:Landroid/view/View;

    new-instance v9, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$6;

    invoke-direct {v9, p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$6;-><init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-void
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 301
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 302
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v3, "map"

    invoke-virtual {v0, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "section":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {p0, v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method private setMapToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 9
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 267
    .local v4, "point":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I

    move-result v7

    add-int/lit8 v6, v7, -0x2

    .line 268
    .local v6, "zoomLevel":I
    iget-wide v0, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 269
    .local v0, "latitude":D
    iget-wide v2, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 270
    .local v2, "longitude":D
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    int-to-float v8, v6

    invoke-static {v7, v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    .line 271
    .local v5, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method private setMapToPointZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 7
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 281
    .local v0, "latitude":D
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 282
    .local v2, "longitude":D
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    int-to-float v6, p2

    invoke-static {v5, v6}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    .line 283
    .local v4, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/List;Ljava/util/Date;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 91
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    instance-of v2, p1, Ljava/io/Serializable;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    move-object v1, p1

    .line 93
    .local v1, "sHomes":Ljava/io/Serializable;
    :goto_0
    const-string v2, "open_homes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    const-string v2, "date"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void

    .line 92
    .end local v1    # "sHomes":Ljava/io/Serializable;
    .restart local p1    # "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 292
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "map"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 294
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 296
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getResources()Landroid/content/res/Resources;

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

    .line 298
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 293
    goto :goto_0

    .line 294
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 297
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateView()V
    .locals 5

    .prologue
    .line 247
    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mViewsInitialised:Z

    if-nez v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMapAppearance()Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    move-result-object v2

    .line 251
    .local v2, "mapAppearance":Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    sget-object v3, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->HYBRID:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 252
    .local v1, "isHybrid":Z
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapAppearanceMapButton:Landroid/view/View;

    sget-object v4, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->MAP:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 253
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapAppearanceHybridButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 255
    if-eqz v1, :cond_2

    const/4 v0, 0x4

    .line 256
    .local v0, "desiredMapType":I
    :goto_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 257
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_0

    .line 255
    .end local v0    # "desiredMapType":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget v1, Lnz/co/realestate/android/lib/R$layout;->open_homes_map:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 109
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeDateText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    sget v1, Lnz/co/realestate/android/lib/R$id;->map_appearance_map_button:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapAppearanceMapButton:Landroid/view/View;

    .line 113
    sget v1, Lnz/co/realestate/android/lib/R$id;->map_appearance_hybrid_button:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapAppearanceHybridButton:Landroid/view/View;

    .line 116
    sget v1, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 117
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v2, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$1;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$1;-><init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->updateAdvertisementImage()V

    .line 127
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->initialiseMapView()V

    .line 130
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 133
    iput-boolean v3, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mViewsInitialised:Z

    .line 136
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->updateView()V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onDestroy()V

    .line 239
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 240
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 312
    const-string v0, "adImage"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->updateAdvertisementImage()V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v0, "userLocation"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->updateView()V

    goto :goto_0

    .line 314
    :cond_2
    const-string v0, "mapAppearance"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->updateView()V

    goto :goto_0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 344
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 345
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 352
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 358
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 354
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->finish()V

    .line 355
    const/4 v0, 0x1

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onStart()V

    .line 234
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_MY_PROPERTY_OPEN_HOMES_MAP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public showDirections(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 6
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 330
    :try_start_0
    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const-string v4, ", "

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://maps.google.com/maps?daddr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 332
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.google.android.apps.maps"

    const-string v4, "com.google.android.maps.MapsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "exception":Ljava/lang/Exception;
    sget v3, Lnz/co/realestate/android/lib/R$string;->error_retrieving_directions:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 6
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 324
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listings_map"

    const-string v2, "listing"

    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 325
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;I)V

    .line 326
    return-void
.end method

.method public showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 0
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 321
    return-void
.end method
