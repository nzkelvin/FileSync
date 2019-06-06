.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;
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
    name = "UserLocationPendingCameraUpdate"
.end annotation


# instance fields
.field private final mAnimate:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;->mAnimate:Z

    .line 601
    return-void
.end method

.method synthetic constructor <init>(ZLnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/google/android/gms/maps/GoogleMap;)Z
    .locals 4
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const/4 v2, 0x0

    .line 604
    if-nez p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v2

    .line 605
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v0

    .line 606
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 607
    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->toLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 608
    .local v1, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$UserLocationPendingCameraUpdate;->mAnimate:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 610
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1
.end method
