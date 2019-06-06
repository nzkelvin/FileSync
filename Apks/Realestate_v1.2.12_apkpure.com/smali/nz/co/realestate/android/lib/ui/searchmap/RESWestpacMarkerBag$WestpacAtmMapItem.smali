.class Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;
.source "RESWestpacMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WestpacAtmMapItem"
.end annotation


# instance fields
.field private final mATM:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)V
    .locals 6
    .param p2, "atm"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    .prologue
    .line 112
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    .line 113
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p1, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->mCachedATMDrawable:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 114
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;->mATM:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;

    .prologue
    .line 109
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;->mATM:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    return-object v0
.end method


# virtual methods
.method public isSelectable()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 122
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$WestpacAtmMapItem;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;->access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag;)Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacMarkerBag$BagListener;->animateToPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method
