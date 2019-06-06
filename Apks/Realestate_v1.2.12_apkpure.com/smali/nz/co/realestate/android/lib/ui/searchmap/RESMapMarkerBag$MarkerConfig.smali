.class public abstract Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;
.super Lnz/co/realestate/android/lib/util/RESMapItem;
.source "RESMapMarkerBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MarkerConfig"
.end annotation


# instance fields
.field protected final mBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

.field protected final mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bag"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p2, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "snippet"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 8
    .param p1, "bag"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p2, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "snippet"    # Ljava/lang/String;
    .param p6, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 144
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;-><init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;Lnz/co/jsalibrary/android/tuple/JSATuple;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;Lcom/google/android/gms/maps/model/LatLng;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/BitmapDescriptor;Lnz/co/jsalibrary/android/tuple/JSATuple;)V
    .locals 1
    .param p1, "bag"    # Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;
    .param p2, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "cluster"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "snippet"    # Ljava/lang/String;
    .param p6, "icon"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p7, "anchor":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-direct {p0, p2, p4, p5}, Lnz/co/realestate/android/lib/util/RESMapItem;-><init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :cond_1
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;->mCluster:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    .line 151
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;->mBag:Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag;

    .line 153
    if-eqz p6, :cond_2

    .end local p6    # "icon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_0
    invoke-virtual {p0, p6}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 154
    if-eqz p7, :cond_3

    .end local p7    # "anchor":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Float;Ljava/lang/Float;>;"
    :goto_1
    invoke-virtual {p0, p7}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;->setAnchor(Lnz/co/jsalibrary/android/tuple/JSATuple;)V

    .line 155
    return-void

    .line 153
    .restart local p6    # "icon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .restart local p7    # "anchor":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p6

    goto :goto_0

    .line 154
    .end local p6    # "icon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_3
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESMapMarkerBag$MarkerConfig;->getAnchor()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object p7

    goto :goto_1
.end method


# virtual methods
.method public abstract getAnchor()Lnz/co/jsalibrary/android/tuple/JSATuple;
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
.end method

.method public abstract getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
.end method
