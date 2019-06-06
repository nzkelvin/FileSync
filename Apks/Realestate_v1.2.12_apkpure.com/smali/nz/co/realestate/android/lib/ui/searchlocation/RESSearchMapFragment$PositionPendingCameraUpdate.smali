.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;
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
    name = "PositionPendingCameraUpdate"
.end annotation


# instance fields
.field private final mAnimate:Z

.field private final mPosition:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Z)V
    .locals 0
    .param p1, "position"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "animate"    # Z

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 649
    iput-boolean p2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;->mAnimate:Z

    .line 650
    return-void
.end method


# virtual methods
.method public execute(Lcom/google/android/gms/maps/GoogleMap;)Z
    .locals 2
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 653
    if-eqz p1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 657
    :goto_0
    return v1

    .line 654
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 655
    .local v0, "update":Lcom/google/android/gms/maps/CameraUpdate;
    iget-boolean v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$PositionPendingCameraUpdate;->mAnimate:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 657
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 656
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1
.end method
