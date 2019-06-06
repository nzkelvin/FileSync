.class Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
.source "RESMapMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenHomeMarkerConfig"
.end annotation


# instance fields
.field private final mOpenHome:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;)V
    .locals 6
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p2, "bag"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p3, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    .prologue
    .line 201
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V
    .locals 8
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p2, "bag"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p3, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p5, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    const/4 v2, 0x0

    .line 204
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .line 205
    iget-object v0, p4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p4, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    .line 207
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeTimesText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-static {p1, p4, p5}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$300(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    .line 209
    invoke-static {p1, p4, p5}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$400(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 205
    invoke-direct/range {v0 .. v7}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;Lnz/co/jsalibrary/android/tuple/JSATuple;)V

    .line 210
    iput-object p5, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mOpenHome:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .line 211
    return-void

    .line 207
    :cond_0
    const-string v0, ""

    goto :goto_0
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
    .line 218
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mOpenHome:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$400(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mOpenHome:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$300(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z

    move-result v0

    return v0
.end method

.method public isShowDirections()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mOpenHome:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 228
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$700(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;

    move-result-object v1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-interface {v1, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;->showListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 6
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 222
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$500(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$OpenHomeMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$600(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 224
    const/4 v0, 0x1

    goto :goto_0
.end method
