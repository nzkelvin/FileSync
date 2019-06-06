.class public abstract Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
.super Lnz/co/realestate/android/lib/util/RESMapItem;
.source "RESWestpacMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WestpacMapItem"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0, v0, p2}, Lnz/co/realestate/android/lib/util/RESMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/util/RESMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnz/co/realestate/android/lib/util/RESMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 90
    return-void
.end method


# virtual methods
.method public isSelectable()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isShowDirections()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
