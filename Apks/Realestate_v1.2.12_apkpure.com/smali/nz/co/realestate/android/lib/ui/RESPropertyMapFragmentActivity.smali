.class public final Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESPropertyMapFragmentActivity.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;
.implements Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;",
        "Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_USER_LOCATION_ZOOM_LEVEL:I = 0x10

.field private static final EXTRA_LISTING:Ljava/lang/String; = "listing"


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mHasStreetViewPanorama:Z

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

.field private mStreetViewCameraAngle:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->onAdvertisementImageClick()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;
    .param p1, "x1"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 49
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .prologue
    .line 49
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    return-object p1
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->showListing()V

    return-void
.end method

.method private initialiseMap()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->map_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v1, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;-><init>(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 156
    :cond_0
    return-void
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 279
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 280
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v3, "listing_details"

    invoke-virtual {v0, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "section":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {p0, v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method

.method private onGetDirections()V
    .locals 6

    .prologue
    .line 243
    :try_start_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const-string v4, ", "

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
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

    .line 245
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.google.android.apps.maps"

    const-string v4, "com.google.android.maps.MapsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "exception":Ljava/lang/Exception;
    sget v3, Lnz/co/realestate/android/lib/R$string;->error_retrieving_directions:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onStreetView()V
    .locals 6

    .prologue
    .line 254
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "google.streetview:cbll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cbp=1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mStreetViewCameraAngle:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",,0,0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    .local v1, "streetView":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "streetView":Landroid/content/Intent;
    .end local v2    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "exception":Ljava/lang/Exception;
    sget v3, Lnz/co/realestate/android/lib/R$string;->error_showing_streetview:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static putBundle(Landroid/content/Intent;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 75
    const-string v0, "listing"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method private setMapToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 9
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 202
    .local v4, "point":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I

    move-result v6

    .line 203
    .local v6, "zoomLevel":I
    iget-wide v0, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 204
    .local v0, "latitude":D
    iget-wide v2, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 205
    .local v2, "longitude":D
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    int-to-float v8, v6

    invoke-static {v7, v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    .line 206
    .local v5, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method private showListing()V
    .locals 8

    .prologue
    .line 185
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 186
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 187
    .local v0, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v0, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 188
    .local v2, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 193
    .end local v0    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v2    # "update":Lcom/google/android/gms/maps/CameraUpdate;
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESConstantsBase;->getNewZealandMapCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/core/RESConstantsBase;->NZ_MAP_ZOOM:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    .line 191
    .local v1, "nz":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    invoke-direct {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->setMapToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 268
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 269
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "listing_details"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 271
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 273
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 274
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->tileBitmapEnds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 273
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 270
    goto :goto_0

    .line 271
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 275
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_map:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->setContentView(I)V

    .line 85
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 86
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listing"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 92
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    const-string v2, ", "

    invoke-virtual {v1, v3, v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "address":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    sget v1, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v2, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$1;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$1;-><init>(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->updateAdvertisementImage()V

    .line 107
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->initialiseMap()V

    .line 109
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->onResume()V

    .line 110
    return-void

    .line 92
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 214
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$menu;->property_menu_directions:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 215
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$menu;->property_menu_streetview:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 216
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onDestroy()V

    .line 164
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 165
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 302
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->updateAdvertisementImage()V

    .line 303
    :cond_0
    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 335
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mMapMarkerBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 336
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->get_directions:I

    if-ne v1, v2, :cond_0

    .line 228
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->onGetDirections()V

    .line 238
    :goto_0
    return v0

    .line 230
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->streetview:I

    if-ne v1, v2, :cond_1

    .line 231
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->onStreetView()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 234
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->finish()V

    goto :goto_0

    .line 238
    :cond_2
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 221
    .local v0, "show":Z
    sget v2, Lnz/co/realestate/android/lib/R$id;->streetview:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 222
    .local v1, "streetViewItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mHasStreetViewPanorama:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 223
    :cond_0
    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onStart()V

    .line 169
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_MAP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onStreetViewCameraAngleComplete(DDD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "angle"    # D

    .prologue
    .line 310
    iput-wide p5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mStreetViewCameraAngle:D

    .line 311
    return-void
.end method

.method public onStreetViewCameraAngleError(DDI)V
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "errorCode"    # I

    .prologue
    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mStreetViewCameraAngle:D

    .line 315
    return-void
.end method

.method public onStreetViewPanoramaComplete(DDZ)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "hasPanorama"    # Z

    .prologue
    .line 322
    iput-boolean p5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mHasStreetViewPanorama:Z

    .line 323
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->supportInvalidateOptionsMenu()V

    .line 324
    return-void
.end method

.method public onStreetViewPanoramaError(DDI)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "errorCode"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->mHasStreetViewPanorama:Z

    .line 328
    return-void
.end method

.method public showDirections(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 0
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 293
    return-void
.end method

.method public showListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 0
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 289
    return-void
.end method

.method public showListings(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 0
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 291
    return-void
.end method
