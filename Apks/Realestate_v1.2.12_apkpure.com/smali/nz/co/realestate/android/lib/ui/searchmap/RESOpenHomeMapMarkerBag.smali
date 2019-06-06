.class public Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
.source "RESOpenHomeMapMarkerBag.java"


# instance fields
.field private final mHomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;Ljava/util/List;)V
    .locals 0
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Landroid/content/Context;",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p4, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;)V

    .line 21
    iput-object p4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;->mHomes:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method protected getMapItem(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
    .locals 7
    .param p1, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p2, "index"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->getMapItem(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;

    move-result-object v6

    .line 26
    .local v6, "item":Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
    instance-of v0, v6, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;

    if-nez v0, :cond_0

    .line 29
    .end local v6    # "item":Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
    :goto_0
    return-object v6

    .line 27
    .restart local v6    # "item":Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
    :cond_0
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 28
    .local v3, "point":Lcom/google/android/gms/maps/model/LatLng;
    if-ltz p2, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;->mHomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;->mHomes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V

    move-object v6, v0

    goto :goto_0
.end method

.method protected bridge synthetic getMapItem(Ljava/lang/Object;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag$MapItem;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESOpenHomeMapMarkerBag;->getMapItem(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;I)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;

    move-result-object v0

    return-object v0
.end method
