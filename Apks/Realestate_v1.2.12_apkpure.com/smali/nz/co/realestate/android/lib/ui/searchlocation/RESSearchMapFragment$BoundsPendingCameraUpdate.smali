.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;
.super Ljava/lang/Object;
.source "RESSearchMapFragment.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PendingCameraUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoundsPendingCameraUpdate"
.end annotation


# instance fields
.field private final mAnimate:Z

.field private final mBounds:Lnz/co/jsalibrary/android/location/JSAGeoBounds;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)V
    .locals 0
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .param p2, "animate"    # Z

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-boolean p2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;->mAnimate:Z

    .line 624
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;->mBounds:Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .line 625
    return-void
.end method


# virtual methods
.method public execute(Lcom/google/android/gms/maps/GoogleMap;)Z
    .locals 10
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 628
    if-eqz p1, :cond_0

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;->mBounds:Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 635
    :goto_0
    return v4

    .line 629
    :cond_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;->mBounds:Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-static {v4}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I

    move-result v4

    int-to-float v2, v4

    .line 630
    .local v2, "newZoom":F
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;->mBounds:Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/GeoPoint;

    .line 631
    .local v0, "gp":Lcom/google/android/maps/GeoPoint;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v8

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 632
    .local v1, "ll":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    .line 633
    .local v3, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-boolean v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$BoundsPendingCameraUpdate;->mAnimate:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 635
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 634
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1
.end method
