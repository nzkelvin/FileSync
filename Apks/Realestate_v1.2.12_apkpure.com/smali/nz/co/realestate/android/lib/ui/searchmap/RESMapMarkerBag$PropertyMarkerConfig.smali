.class Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
.source "RESMapMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyMarkerConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;)V
    .locals 6
    .param p2, "bag"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p3, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    .prologue
    const/4 v1, 0x0

    .line 260
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .line 261
    iget-object v0, p4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method


# virtual methods
.method public getAnchor()Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 272
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$500(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$500(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$000(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isOnPromotion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$800(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->isRecent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$900(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$1000(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z

    move-result v0

    return v0
.end method

.method public isShowDirections()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 3
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 282
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$700(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;

    move-result-object v1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-interface {v1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;->showListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 276
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$500(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 278
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$PropertyMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$600(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method
