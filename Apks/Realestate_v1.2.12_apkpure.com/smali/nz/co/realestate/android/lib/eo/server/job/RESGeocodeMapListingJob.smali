.class public final Lnz/co/realestate/android/lib/eo/server/job/RESGeocodeMapListingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESGeocodeMapListingJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/jsalibrary/android/location/JSAGeoBounds;",
        ">;"
    }
.end annotation


# static fields
.field private static final END_MAP_ZOOM:I = 0xd

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final MAP_LISTINGS_REQUEST:Ljava/lang/String; = "mapListingsRequest"

.field private static final START_MAP_ZOOM:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetMapListings(Ljava/lang/String;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "location"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    const-string v1, "mapListingsRequest"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESGeocodeMapListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p2, :cond_1

    const-string v6, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 51
    .local v17, "location":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    const-string v6, "mapListingsRequest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-object/from16 v20, v6

    .line 54
    .local v20, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    :goto_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESConstantsBase;->getNewZealandMapCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    sget v7, Lnz/co/realestate/android/lib/core/RESConstantsBase;->NZ_MAP_ZOOM:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->boundLongitudes()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v18

    .line 55
    .local v18, "nz":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    new-instance v5, Landroid/location/Geocoder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 56
    .local v5, "geocoder":Landroid/location/Geocoder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", New Zealand"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getSouth()D

    move-result-wide v8

    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getWest()D

    move-result-wide v10

    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getNorth()D

    move-result-wide v12

    invoke-virtual/range {v18 .. v18}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getEast()D

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object v22

    .line 59
    .local v22, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "invalid geocode result"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    .end local v5    # "geocoder":Landroid/location/Geocoder;
    .end local v17    # "location":Ljava/lang/String;
    .end local v18    # "nz":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .end local v20    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .end local v22    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 51
    .restart local v17    # "location":Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .line 62
    .restart local v5    # "geocoder":Landroid/location/Geocoder;
    .restart local v18    # "nz":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .restart local v20    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .restart local v22    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_3
    new-instance v19, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getLatitude()D

    move-result-wide v8

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 65
    .local v19, "point":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual/range {v18 .. v19}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "invalid geocode point"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 68
    :cond_4
    const/16 v23, 0x11

    .local v23, "zoomLevel":I
    :goto_2
    const/16 v6, 0xd

    move/from16 v0, v23

    if-lt v0, v6, :cond_6

    .line 69
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v4

    .line 70
    .local v4, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    const-wide v6, 0x3ff3333333333333L    # 1.2

    invoke-virtual {v4, v6, v7}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->scale(D)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 71
    invoke-static {v4}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setZoomLevel(Ljava/lang/Integer;)V

    .line 74
    invoke-static/range {v20 .. v20}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->buildBundleGetMapListings(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)Landroid/os/Bundle;

    move-result-object v21

    .line 75
    .local v21, "requestBundle":Landroid/os/Bundle;
    new-instance v6, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;

    invoke-direct {v6}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-static {v6, v0, v1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    .line 78
    .local v16, "listings":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    iget-object v6, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    if-eqz v6, :cond_5

    move-object/from16 v0, v16

    iget-object v6, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 68
    :cond_5
    add-int/lit8 v23, v23, -0x1

    goto :goto_2

    .line 85
    .end local v4    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .end local v16    # "listings":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
    .end local v21    # "requestBundle":Landroid/os/Bundle;
    :cond_6
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "error retrieving listings"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 81
    .restart local v4    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .restart local v16    # "listings":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
    .restart local v21    # "requestBundle":Landroid/os/Bundle;
    :cond_7
    return-object v4
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESGeocodeMapListingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
