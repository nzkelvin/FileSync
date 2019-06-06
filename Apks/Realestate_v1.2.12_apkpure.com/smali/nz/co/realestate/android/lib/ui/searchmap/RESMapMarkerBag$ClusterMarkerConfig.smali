.class Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
.source "RESMapMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterMarkerConfig"
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
    const/4 v4, 0x0

    .line 167
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, v4

    .line 168
    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
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

    .line 176
    new-instance v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$000(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Z

    move-result v0

    return v0
.end method

.method public isShowDirections()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 180
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;->this$0:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$ClusterMarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->access$100(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 181
    const/4 v0, 0x1

    return v0
.end method
