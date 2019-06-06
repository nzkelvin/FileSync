.class Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;
.super Ljava/lang/Object;
.source "RESPropertyMapFragmentActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->initialiseMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 9
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 121
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$102(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 124
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    new-instance v2, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-direct {v2, v3, v4, v5}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$BagListener;)V

    invoke-static {v1, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$202(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .line 125
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$200(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    move-result-object v1

    invoke-virtual {v1, v8}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->setSelectable(Z)V

    .line 128
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .line 129
    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v4}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .line 128
    invoke-static/range {v1 .. v6}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->hasStreetViewPanorama(Landroid/content/Context;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .line 132
    invoke-static {v4}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    .line 131
    invoke-static/range {v1 .. v6}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getStreetViewCameraAngle(Landroid/content/Context;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;)V

    .line 135
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 136
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;-><init>()V

    .line 137
    .local v0, "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    iput v7, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    .line 138
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    .line 139
    new-array v1, v7, [Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    .line 140
    new-instance v1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v2

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    invoke-direct {v1, v2, v8, v8}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;II)V

    invoke-static {v1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getServerBoundsList(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->bounds:Ljava/util/List;

    .line 141
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$200(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    move-result-object v1

    new-array v2, v7, [Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    aput-object v0, v2, v8

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;->setItems(Ljava/util/List;)V

    .line 146
    .end local v0    # "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    :goto_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 147
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 148
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 149
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 150
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    new-instance v2, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v4}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$200(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapInfoWindowAdapter;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESMarkerBag;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 153
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->access$400(Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;)V

    .line 154
    return-void

    .line 142
    :cond_2
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity$2;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->property_location_unknown:I

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
