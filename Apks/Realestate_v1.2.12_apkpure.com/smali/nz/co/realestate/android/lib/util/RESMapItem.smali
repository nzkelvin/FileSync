.class public abstract Lnz/co/realestate/android/lib/util/RESMapItem;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;
.source "RESMapItem.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 0
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;
    .param p4, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$SimpleMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract isSelectable()Z
.end method

.method public abstract isShowDirections()Z
.end method
