.class public Lnz/co/realestate/android/lib/util/RESMapUtil;
.super Ljava/lang/Object;
.source "RESMapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundsFromServer(Ljava/lang/String;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 3
    .param p0, "bounds"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "numbers":[Ljava/lang/String;
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToDoubleMapFunction;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToDoubleMapFunction;-><init>()V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getBoundsFromServer(Ljava/util/List;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    return-object v1
.end method

.method public static getBoundsFromServer(Ljava/util/List;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lnz/co/jsalibrary/android/location/JSAGeoBounds;"
        }
    .end annotation

    .prologue
    .local p0, "bounds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v4, 0x3

    const/4 v10, 0x1

    .line 48
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    .line 49
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 50
    .local v2, "west":D
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 51
    .local v6, "east":D
    cmpg-double v0, v2, v6

    if-gez v0, :cond_2

    new-instance v1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(DDDD)V

    goto :goto_0

    .line 52
    :cond_2
    new-instance v5, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-wide v10, v2

    invoke-direct/range {v5 .. v13}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(DDDD)V

    move-object v1, v5

    goto :goto_0
.end method

.method public static getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 1
    .param p0, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "zoomLevel"    # I

    .prologue
    .line 82
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getInstance()Lnz/co/realestate/android/lib/core/RESApplicationBase;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;ILandroid/content/Context;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;III)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 10
    .param p0, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "zoomLevel"    # I
    .param p2, "mapWidth"    # I
    .param p3, "mapHeight"    # I

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 90
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p2

    int-to-double v4, p1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double v6, v0, v2

    .line 91
    .local v6, "angle":D
    new-instance v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    int-to-double v2, p3

    mul-double/2addr v2, v6

    int-to-double v4, p2

    div-double/2addr v2, v4

    mul-double v4, v8, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;DD)V

    return-object v0
.end method

.method public static getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;ILandroid/content/Context;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 2
    .param p0, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "zoomLevel"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;III)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    return-object v0
.end method

.method public static getLatitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D
    .locals 6
    .param p0, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    .line 112
    .local v0, "vr":Lcom/google/android/gms/maps/model/VisibleRegion;
    iget-object v1, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static getLongitudeSpan(Lcom/google/android/gms/maps/GoogleMap;)D
    .locals 6
    .param p0, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    .line 121
    .local v0, "vr":Lcom/google/android/gms/maps/model/VisibleRegion;
    iget-object v1, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v1, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static getServerBoundsList(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)Ljava/util/List;
    .locals 4
    .param p0, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/location/JSAGeoBounds;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getWest()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getSouth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getEast()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getNorth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getServerBoundsString(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)Ljava/lang/String;
    .locals 10
    .param p0, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 35
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->crossesAntimeridian()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getWest()D

    move-result-wide v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getNorth()D

    move-result-wide v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getEast()D

    move-result-wide v6

    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v6, v8

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getSouth()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(DDDD)V

    .end local p0    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .local v1, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    move-object p0, v1

    .line 36
    .end local v1    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .restart local p0    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getWest()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getSouth()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getEast()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getNorth()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I
    .locals 1
    .param p0, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 65
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getInstance()Lnz/co/realestate/android/lib/core/RESApplicationBase;

    move-result-object v0

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;I)I
    .locals 6
    .param p0, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .param p1, "mapWidth"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getEast()D

    move-result-wide v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getWest()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 74
    .local v0, "angle":D
    mul-int/lit16 v2, p1, 0x168

    int-to-double v2, v2

    div-double/2addr v2, v0

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->log(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method public static getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;Landroid/content/Context;)I
    .locals 1
    .param p0, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;I)I

    move-result v0

    return v0
.end method

.method public static toLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static toLatLng(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .param p0, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method
