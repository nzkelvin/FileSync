.class Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$4;
.super Ljava/lang/Object;
.source "RESOpenHomesMapFragmentActivity.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->initialiseMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/jsalibrary/android/tuple/JSATuple",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$4;->this$0:Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lnz/co/jsalibrary/android/tuple/JSATuple;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;)",
            "Lcom/google/android/gms/maps/model/LatLng;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "item":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 180
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    int-to-double v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    check-cast p1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity$4;->map(Lnz/co/jsalibrary/android/tuple/JSATuple;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method
