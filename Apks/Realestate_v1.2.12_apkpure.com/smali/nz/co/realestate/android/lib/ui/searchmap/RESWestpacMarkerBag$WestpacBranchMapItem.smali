.class Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
.source "RESWestpacMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WestpacBranchMapItem"
.end annotation


# instance fields
.field private final mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V
    .locals 6
    .param p2, "branch"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .prologue
    .line 134
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    .line 135
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->name:Ljava/lang/String;

    iget-object v2, p1, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mCachedBranchDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-direct {p0, v0, v1, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 136
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;

    .prologue
    .line 131
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacBranchMapItem;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    return-object v0
.end method
