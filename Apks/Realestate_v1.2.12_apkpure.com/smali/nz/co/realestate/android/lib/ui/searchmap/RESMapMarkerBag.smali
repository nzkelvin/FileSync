.class public Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;
.source "RESMapMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyCollectionMarkerConfig;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLUSTER_ALPHA:D = 0.75

.field private static final SINGLE_PROPERTY_ZOOM_LEVEL:I = 0x12

.field private static mCachedDrawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCachedOpenHomeDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mCachedOpenHomeRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mCachedPropertyCollectionDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mCachedPropertyCollectionRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mCachedPropertyDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mCachedPropertyPromotionalDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mCachedPropertyRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;

.field private mSelectable:Z

.field private mShowClustersOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedDrawableMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;-><init>(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mSelectable:Z

    .line 69
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_1
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mListener:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;

    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mContext:Landroid/content/Context;

    .line 74
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_open_home:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedOpenHomeDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 75
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_property:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 76
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_property_collection:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyCollectionDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 77
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_open_home_recent:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedOpenHomeRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 78
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_property_recent:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 79
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_property_collection_recent:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyCollectionRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 80
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_property_promotion:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyPromotionalDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getClusterDrawable(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->centerAndZoomToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    return-void
.end method

.method static synthetic access$1000(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method static synthetic access$1100(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyCollectionRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method static synthetic access$1200(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyCollectionDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method static synthetic access$1300(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mSelectable:Z

    return v0
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p2, "x2"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getOpenHomeMarkerDescriptor(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p2, "x2"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getOpenHomeMarkerAnchor(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mShowClustersOnly:Z

    return v0
.end method

.method static synthetic access$600(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->centerAndZoomToPoint(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$700(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mListener:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyPromotionalDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method static synthetic access$900(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method private centerAndZoomToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 12
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    const-wide v10, 0x412e848000000000L    # 1000000.0

    .line 373
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget v3, v4, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 374
    .local v3, "zoom":F
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/GeoPoint;

    .line 376
    .local v1, "point":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 383
    :goto_0
    return-void

    .line 378
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 379
    .local v0, "newZoom":F
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    int-to-double v6, v5

    div-double/2addr v6, v10

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v8, v10

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v4, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 381
    .local v2, "update":Lcom/google/android/gms/maps/CameraUpdate;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method private centerAndZoomToPoint(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/high16 v0, 0x41900000    # 18.0f

    .line 386
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    iget v2, v3, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 387
    .local v2, "zoom":F
    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    .line 388
    .local v0, "newZoom":F
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 389
    .local v1, "update":Lcom/google/android/gms/maps/CameraUpdate;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 390
    return-void

    .line 387
    .end local v0    # "newZoom":F
    .end local v1    # "update":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    add-float v0, v2, v3

    goto :goto_0
.end method

.method private getClusterDrawable(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 7
    .param p1, "listingCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 340
    sget-object v4, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedDrawableMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cluster:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedDrawableMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cluster:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 349
    :goto_0
    return-object v4

    .line 341
    :cond_0
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lnz/co/realestate/android/lib/R$layout;->cluster_badge:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 342
    .local v3, "view":Landroid/view/View;
    const/16 v4, 0xa

    if-ge p1, v4, :cond_3

    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_cluster_1:I

    .line 343
    .local v2, "resource":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    sget v4, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    :cond_2
    sget v4, Lnz/co/realestate/android/lib/R$id;->textview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->loadBitmapDrawableFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 346
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v4, 0xbf

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 347
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 348
    .local v0, "descriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    sget-object v4, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedDrawableMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cluster:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 349
    goto :goto_0

    .line 342
    .end local v0    # "descriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "resource":I
    :cond_3
    const/16 v4, 0x64

    if-ge p1, v4, :cond_4

    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_cluster_2:I

    goto :goto_1

    :cond_4
    const/16 v4, 0x3e8

    if-ge p1, v4, :cond_1

    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_pin_cluster_3:I

    goto :goto_1
.end method

.method private getOpenHomeMarkerAnchor(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 3
    .param p1, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p2, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 250
    if-eqz p2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mShowClustersOnly:Z

    if-eqz v1, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getOpenHomeMarkerDescriptor(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .param p1, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p2, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 242
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getOpenHomePin(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mShowClustersOnly:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getClusterDrawable(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isOnPromotion()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedPropertyPromotionalDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->isRecent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedOpenHomeRecentDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedOpenHomeDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0
.end method

.method private getOpenHomePin(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 8
    .param p1, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 357
    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeTimesText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "time":Ljava/lang/String;
    sget-object v4, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedDrawableMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open_home:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedDrawableMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open_home:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 365
    :goto_0
    return-object v4

    .line 359
    :cond_0
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lnz/co/realestate/android/lib/R$layout;->open_home_badge:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 360
    .local v3, "view":Landroid/view/View;
    sget v4, Lnz/co/realestate/android/lib/R$id;->textview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->loadBitmapDrawableFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 362
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v4, 0xbf

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 363
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 364
    .local v0, "descriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    sget-object v4, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mCachedDrawableMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open_home:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 365
    goto :goto_0
.end method

.method private showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 12
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 393
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v8, 0x0

    invoke-static {v1, v4, v5, v8, v9}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/maps/GeoPoint;

    .line 394
    .local v6, "offsetPoint":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getNorth()D

    move-result-wide v4

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v8, v1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 395
    .local v2, "span":D
    new-instance v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;DD)V

    .line 396
    .local v0, "newBounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mListener:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;

    invoke-interface {v1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;->showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 397
    return-void
.end method


# virtual methods
.method public boundCenterDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 415
    .local v0, "height":I
    const/4 v1, 0x0

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    return-object p1
.end method

.method protected getMapItem(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
    .locals 12
    .param p1, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-object v4

    .line 104
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLatitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLongitude()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 105
    .local v2, "point":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLatitudeSpan()D

    move-result-wide v6

    cmpl-double v6, v6, v10

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLongitudeSpan()D

    move-result-wide v6

    cmpl-double v6, v6, v10

    if-nez v6, :cond_2

    :cond_1
    move v3, v5

    .line 106
    .local v3, "property":Z
    :cond_2
    iget-object v6, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    if-eqz v6, :cond_3

    iget v6, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    if-nez v6, :cond_4

    :cond_3
    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;

    invoke-direct {v5, p0, p0, v2, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;)V

    move-object v4, v5

    goto :goto_0

    .line 107
    :cond_4
    if-eqz v3, :cond_5

    iget v6, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    if-le v6, v5, :cond_5

    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyCollectionMarkerConfig;

    invoke-direct {v5, p0, p0, v2, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyCollectionMarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;)V

    move-object v4, v5

    goto :goto_0

    .line 108
    :cond_5
    iget-object v5, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 109
    .local v1, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    if-eqz v3, :cond_6

    iget-boolean v5, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->open_home:Z

    if-eqz v5, :cond_6

    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;

    invoke-direct {v5, p0, p0, v2, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;)V

    move-object v4, v5

    goto :goto_0

    .line 110
    :cond_6
    if-eqz v3, :cond_7

    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;

    invoke-direct {v5, p0, p0, v2, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;)V

    move-object v4, v5

    goto :goto_0

    .line 111
    :cond_7
    new-instance v5, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;

    invoke-direct {v5, p0, p0, v2, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 112
    .end local v1    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    .end local v2    # "point":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "property":Z
    :catch_0
    move-exception v0

    .line 113
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error creating marker config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic getMapItem(Ljava/lang/Object;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getMapItem(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;

    move-result-object v0

    return-object v0
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mSelectable:Z

    .line 89
    return-void
.end method

.method public setShowClustersOnly(Z)V
    .locals 1
    .param p1, "showClustersOnly"    # Z

    .prologue
    .line 92
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mShowClustersOnly:Z

    if-ne p1, v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->mShowClustersOnly:Z

    .line 94
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->updateMapMarkers()V

    goto :goto_0
.end method
