.class public Lnz/co/jsalibrary/android/util/JSALocationUtil;
.super Ljava/lang/Object;
.source "JSALocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;,
        Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;,
        Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;,
        Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;
    }
.end annotation


# static fields
.field public static final EARTH_RADIUS_KM:D = 6371.0

.field public static final LATITUDE_DISTANCE_KM:D = 111.132

.field private static final STREETVIEW_ANGLE_HTML:Ljava/lang/String; = "<html><head><script src=\"http://maps.google.com/maps?file=api&amp;amp;v=2&amp;amp;sensor=false\" type=\"text/javascript\"></script></head><body><script type=\"text/javascript\">var testPoint = new GLatLng(%1$f, %2$f);var svClient = new GStreetviewClient();svClient.getNearestPanoramaLatLng(testPoint,function(camera) {if (camera == null) Android.setStreetViewCameraAngle(0);else Android.setStreetViewCamera(camera.lat(), camera.lng());});</script></body></html>"

.field private static final STREETVIEW_PANARAMA_HTML:Ljava/lang/String; = "<html><head><script src=\"http://maps.google.com/maps/api/js?v=3&amp;sensor=false\" type=\"text/javascript\"></script></head><body><script type=\"text/javascript\">var testPoint = new google.maps.LatLng(%1$f, %2$f, true);var svClient = new google.maps.StreetViewService();svClient.getPanoramaByLocation(testPoint, 50, function (panoramaData, status) {if (status == google.maps.StreetViewStatus.OK) Android.setHasPanorama(true);else Android.setHasPanorama(false); });</script></body></html>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bearing(DDDD)D
    .locals 12
    .param p0, "latitudeA"    # D
    .param p2, "longitudeA"    # D
    .param p4, "latitudeB"    # D
    .param p6, "longitudeB"    # D

    .prologue
    .line 226
    sub-double v0, p6, p2

    .line 227
    .local v0, "dLon":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v6, v8

    .line 228
    .local v4, "y":D
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double v2, v6, v8

    .line 229
    .local v2, "x":D
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toDegrees(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public static bearing(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 10
    .param p0, "pointA"    # Ljava/lang/Object;
    .param p1, "pointB"    # Ljava/lang/Object;

    .prologue
    .line 205
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v0

    .line 206
    .local v0, "latA":D
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v2

    .line 207
    .local v2, "lonA":D
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v4

    .line 208
    .local v4, "latB":D
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v6

    .line 209
    .local v6, "lonB":D
    invoke-static/range {v0 .. v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->bearing(DDDD)D

    move-result-wide v8

    return-wide v8
.end method

.method public static betterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 14
    .param p0, "oldLocation"    # Landroid/location/Location;
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 320
    if-nez p0, :cond_1

    .line 343
    .end local p1    # "newLocation":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object p1

    .line 321
    .restart local p1    # "newLocation":Landroid/location/Location;
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 325
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    move v5, v4

    .line 326
    .local v5, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_4

    move v6, v4

    .line 327
    .local v6, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_5

    move v3, v4

    .line 330
    .local v3, "isNewer":Z
    :goto_3
    if-nez v5, :cond_0

    .line 331
    if-eqz v6, :cond_6

    move-object p1, p0

    goto :goto_0

    .end local v3    # "isNewer":Z
    .end local v5    # "isSignificantlyNewer":Z
    .end local v6    # "isSignificantlyOlder":Z
    :cond_3
    move v5, v7

    .line 325
    goto :goto_1

    .restart local v5    # "isSignificantlyNewer":Z
    :cond_4
    move v6, v7

    .line 326
    goto :goto_2

    .restart local v6    # "isSignificantlyOlder":Z
    :cond_5
    move v3, v7

    .line 327
    goto :goto_3

    .line 334
    .restart local v3    # "isNewer":Z
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 335
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_9

    move v1, v4

    .line 336
    .local v1, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_a

    move v2, v4

    .line 337
    .local v2, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_b

    .line 340
    .local v4, "isSignificantlyLessAccurate":Z
    :goto_6
    if-nez v2, :cond_0

    .line 341
    if-eqz v3, :cond_7

    if-eqz v1, :cond_0

    .line 342
    :cond_7
    if-eqz v3, :cond_8

    if-nez v4, :cond_8

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_8
    move-object p1, p0

    .line 343
    goto :goto_0

    .end local v1    # "isLessAccurate":Z
    .end local v2    # "isMoreAccurate":Z
    .end local v4    # "isSignificantlyLessAccurate":Z
    :cond_9
    move v1, v7

    .line 335
    goto :goto_4

    .restart local v1    # "isLessAccurate":Z
    :cond_a
    move v2, v7

    .line 336
    goto :goto_5

    .restart local v2    # "isMoreAccurate":Z
    :cond_b
    move v4, v7

    .line 337
    goto :goto_6
.end method

.method public static boundLatitude(D)D
    .locals 6
    .param p0, "degrees"    # D

    .prologue
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 250
    cmpg-double v4, p0, v0

    if-gez v4, :cond_1

    move-wide p0, v0

    .line 252
    .end local p0    # "degrees":D
    :cond_0
    :goto_0
    return-wide p0

    .line 251
    .restart local p0    # "degrees":D
    :cond_1
    cmpl-double v0, p0, v2

    if-lez v0, :cond_0

    move-wide p0, v2

    goto :goto_0
.end method

.method public static boundLongitude(D)D
    .locals 8
    .param p0, "degrees"    # D

    .prologue
    const-wide v6, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v2, 0x4076800000000000L    # 360.0

    .line 257
    cmpg-double v0, p0, v4

    if-gtz v0, :cond_1

    cmpl-double v0, p0, v6

    if-lez v0, :cond_1

    .line 262
    .end local p0    # "degrees":D
    :cond_0
    :goto_0
    return-wide p0

    .line 258
    .restart local p0    # "degrees":D
    :cond_1
    cmpl-double v0, p0, v2

    if-lez v0, :cond_2

    rem-double/2addr p0, v2

    .line 259
    :cond_2
    const-wide v0, -0x3f89800000000000L    # -360.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    neg-double v0, p0

    rem-double/2addr v0, v2

    neg-double p0, v0

    .line 260
    :cond_3
    cmpg-double v0, p0, v4

    if-gtz v0, :cond_4

    cmpl-double v0, p0, v6

    if-gtz v0, :cond_0

    .line 261
    :cond_4
    cmpl-double v0, p0, v4

    if-lez v0, :cond_5

    sub-double/2addr p0, v2

    goto :goto_0

    .line 262
    :cond_5
    add-double/2addr p0, v2

    goto :goto_0
.end method

.method public static degreeToDistanceLatitude(D)D
    .locals 2
    .param p0, "degrees"    # D

    .prologue
    .line 158
    const-wide v0, 0x405bc872b020c49cL    # 111.132

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static degreeToDistanceLongitude(DD)D
    .locals 8
    .param p0, "degrees"    # D
    .param p2, "latitude"    # D

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 170
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    mul-double/2addr v0, p0

    mul-double v2, p2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    return-wide v0
.end method

.method public static distance(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 9
    .param p0, "p1"    # Ljava/lang/Object;
    .param p1, "p2"    # Ljava/lang/Object;

    .prologue
    .line 238
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 239
    .local v8, "result":[F
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 241
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;
    .locals 17
    .param p0, "point"    # Ljava/lang/Object;
    .param p1, "distanceKm"    # D
    .param p3, "bearingRadians"    # D

    .prologue
    .line 184
    invoke-static/range {p0 .. p0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toRadians(D)D

    move-result-wide v0

    .line 185
    .local v0, "lat1":D
    invoke-static/range {p0 .. p0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toRadians(D)D

    move-result-wide v4

    .line 186
    .local v4, "lon1":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x40b8e30000000000L    # 6371.0

    div-double v10, p1, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x40b8e30000000000L    # 6371.0

    div-double v12, p1, v12

    .line 187
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 186
    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    .line 189
    .local v2, "lat2":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x40b8e30000000000L    # 6371.0

    div-double v10, p1, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide v10, 0x40b8e30000000000L    # 6371.0

    div-double v10, p1, v10

    .line 190
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    .line 189
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    add-double v6, v4, v8

    .line 191
    .local v6, "lon2":D
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toDegrees(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toDegrees(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newGeoPoint(DD)Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method

.method public static getGeoPointBounds(Ljava/util/List;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lnz/co/jsalibrary/android/location/JSAGeoBounds;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x2

    if-ge v1, v10, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 285
    :goto_0
    return-object v1

    .line 272
    :cond_1
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 273
    .local v8, "minLatitude":D
    const-wide v4, -0x3fa9800000000000L    # -90.0

    .line 274
    .local v4, "maxLatitude":D
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 275
    .local v2, "minLongitude":D
    const-wide v6, -0x3f99800000000000L    # -180.0

    .line 276
    .local v6, "maxLongitude":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "point":Ljava/lang/Object;
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v20

    .line 278
    .local v20, "latitude":D
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v22

    .line 279
    .local v22, "longitude":D
    cmpg-double v10, v20, v8

    if-gez v10, :cond_3

    move-wide/from16 v8, v20

    .line 280
    :cond_3
    cmpl-double v10, v20, v4

    if-lez v10, :cond_4

    move-wide/from16 v4, v20

    .line 281
    :cond_4
    cmpg-double v10, v22, v2

    if-gez v10, :cond_5

    move-wide/from16 v2, v22

    .line 282
    :cond_5
    cmpl-double v10, v22, v6

    if-lez v10, :cond_2

    move-wide/from16 v6, v22

    goto :goto_1

    .line 284
    .end local v0    # "point":Ljava/lang/Object;
    .end local v20    # "latitude":D
    .end local v22    # "longitude":D
    :cond_6
    sub-double v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpg-double v1, v10, v12

    if-gez v1, :cond_7

    new-instance v1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-direct/range {v1 .. v9}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(DDDD)V

    goto :goto_0

    .line 285
    :cond_7
    new-instance v11, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-wide v12, v6

    move-wide v14, v4

    move-wide/from16 v16, v2

    move-wide/from16 v18, v8

    invoke-direct/range {v11 .. v19}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(DDDD)V

    move-object v1, v11

    goto :goto_0
.end method

.method public static getGeoPointLatitude(Ljava/lang/Object;)D
    .locals 4
    .param p0, "point"    # Ljava/lang/Object;

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLatitudeE6"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toDegrees(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 120
    :goto_0
    return-wide v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "exception":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getGeoPointLongitude(Ljava/lang/Object;)D
    .locals 4
    .param p0, "point"    # Ljava/lang/Object;

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLongitudeE6"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toDegrees(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 128
    :goto_0
    return-wide v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "exception":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getLatLngBounds(Ljava/util/List;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lnz/co/jsalibrary/android/location/JSAGeoBounds;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x2

    if-ge v1, v10, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 308
    :goto_0
    return-object v1

    .line 295
    :cond_1
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 296
    .local v8, "minLatitude":D
    const-wide v4, -0x3fa9800000000000L    # -90.0

    .line 297
    .local v4, "maxLatitude":D
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 298
    .local v2, "minLongitude":D
    const-wide v6, -0x3f99800000000000L    # -180.0

    .line 299
    .local v6, "maxLongitude":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, "point":Ljava/lang/Object;
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getLatLngLatitude(Ljava/lang/Object;)D

    move-result-wide v20

    .line 301
    .local v20, "latitude":D
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getLatLngLongitude(Ljava/lang/Object;)D

    move-result-wide v22

    .line 302
    .local v22, "longitude":D
    cmpg-double v10, v20, v8

    if-gez v10, :cond_3

    move-wide/from16 v8, v20

    .line 303
    :cond_3
    cmpl-double v10, v20, v4

    if-lez v10, :cond_4

    move-wide/from16 v4, v20

    .line 304
    :cond_4
    cmpg-double v10, v22, v2

    if-gez v10, :cond_5

    move-wide/from16 v2, v22

    .line 305
    :cond_5
    cmpl-double v10, v22, v6

    if-lez v10, :cond_2

    move-wide/from16 v6, v22

    goto :goto_1

    .line 307
    .end local v0    # "point":Ljava/lang/Object;
    .end local v20    # "latitude":D
    .end local v22    # "longitude":D
    :cond_6
    sub-double v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpg-double v1, v10, v12

    if-gez v1, :cond_7

    new-instance v1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-direct/range {v1 .. v9}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(DDDD)V

    goto :goto_0

    .line 308
    :cond_7
    new-instance v11, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-wide v12, v6

    move-wide v14, v4

    move-wide/from16 v16, v2

    move-wide/from16 v18, v8

    invoke-direct/range {v11 .. v19}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(DDDD)V

    move-object v1, v11

    goto :goto_0
.end method

.method public static getLatLngLatitude(Ljava/lang/Object;)D
    .locals 4
    .param p0, "point"    # Ljava/lang/Object;

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 140
    :goto_0
    return-wide v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "exception":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getLatLngLongitude(Ljava/lang/Object;)D
    .locals 4
    .param p0, "point"    # Ljava/lang/Object;

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 148
    :goto_0
    return-wide v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "exception":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getQuadrant(F)Ljava/lang/String;
    .locals 6
    .param p0, "bearing"    # F

    .prologue
    const/high16 v5, 0x43070000    # 135.0f

    const/high16 v4, 0x42340000    # 45.0f

    const/4 v3, 0x0

    const/high16 v2, -0x3cf90000    # -135.0f

    const/high16 v1, -0x3dcc0000    # -45.0f

    .line 547
    cmpl-float v0, p0, v3

    if-ltz v0, :cond_0

    cmpg-float v0, p0, v4

    if-lez v0, :cond_1

    :cond_0
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_2

    cmpg-float v0, p0, v3

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "North"

    .line 552
    :goto_0
    return-object v0

    .line 548
    :cond_2
    cmpl-float v0, p0, v4

    if-lez v0, :cond_3

    cmpg-float v0, p0, v5

    if-gtz v0, :cond_3

    const-string v0, "East"

    goto :goto_0

    .line 549
    :cond_3
    cmpl-float v0, p0, v5

    if-lez v0, :cond_4

    const/high16 v0, 0x43610000    # 225.0f

    cmpg-float v0, p0, v0

    if-lez v0, :cond_5

    :cond_4
    const/high16 v0, -0x3c9f0000    # -225.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    cmpg-float v0, p0, v2

    if-gtz v0, :cond_6

    :cond_5
    const-string v0, "South"

    goto :goto_0

    .line 550
    :cond_6
    const/high16 v0, 0x43610000    # 225.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    const v0, 0x439d8000    # 315.0f

    cmpg-float v0, p0, v0

    if-lez v0, :cond_8

    :cond_7
    cmpl-float v0, p0, v2

    if-lez v0, :cond_9

    cmpg-float v0, p0, v1

    if-gtz v0, :cond_9

    :cond_8
    const-string v0, "West"

    goto :goto_0

    .line 551
    :cond_9
    const v0, 0x439d8000    # 315.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x43b40000    # 360.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_a

    const-string v0, "North"

    goto :goto_0

    .line 552
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreetViewCameraAngle(Landroid/content/Context;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "listener"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;

    .prologue
    .line 459
    if-eqz p0, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 460
    :cond_1
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getStreetViewCameraAngle(Landroid/webkit/WebView;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;)V

    .line 461
    return-void
.end method

.method public static getStreetViewCameraAngle(Landroid/webkit/WebView;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;)V
    .locals 13
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "listener"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 480
    if-eqz p0, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 481
    :cond_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 483
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 484
    new-instance v1, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;-><init>(DDLandroid/os/Handler;Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;)V

    const-string v0, "Android"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    new-instance v5, Lnz/co/jsalibrary/android/util/JSALocationUtil$2;

    move-object/from16 v7, p5

    move-wide v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v5 .. v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil$2;-><init>(Landroid/os/Handler;Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;DD)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 496
    const/4 v1, 0x0

    const-string v0, "<html><head><script src=\"http://maps.google.com/maps?file=api&amp;amp;v=2&amp;amp;sensor=false\" type=\"text/javascript\"></script></head><body><script type=\"text/javascript\">var testPoint = new GLatLng(%1$f, %2$f);var svClient = new GStreetviewClient();svClient.getNearestPanoramaLatLng(testPoint,function(camera) {if (camera == null) Android.setStreetViewCameraAngle(0);else Android.setStreetViewCamera(camera.lat(), camera.lng());});</script></body></html>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public static hasStreetViewPanorama(Landroid/content/Context;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "listener"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

    .prologue
    .line 363
    if-eqz p0, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 364
    :cond_1
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->hasStreetViewPanorama(Landroid/webkit/WebView;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;)V

    .line 365
    return-void
.end method

.method public static hasStreetViewPanorama(Landroid/webkit/WebView;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;)V
    .locals 13
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "listener"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 382
    if-eqz p0, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 383
    :cond_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 385
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 386
    new-instance v1, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;-><init>(DDLandroid/os/Handler;Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;)V

    const-string v0, "Android"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    new-instance v5, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;

    move-object/from16 v7, p5

    move-wide v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v5 .. v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;-><init>(Landroid/os/Handler;Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;DD)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 398
    const/4 v1, 0x0

    const-string v0, "<html><head><script src=\"http://maps.google.com/maps/api/js?v=3&amp;sensor=false\" type=\"text/javascript\"></script></head><body><script type=\"text/javascript\">var testPoint = new google.maps.LatLng(%1$f, %2$f, true);var svClient = new google.maps.StreetViewService();svClient.getPanoramaByLocation(testPoint, 50, function (panoramaData, status) {if (status == google.maps.StreetViewStatus.OK) Android.setHasPanorama(true);else Android.setHasPanorama(false); });</script></body></html>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public static newGeoPoint(DD)Ljava/lang/Object;
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 94
    :try_start_0
    const-string v3, "com.google.android.maps.GeoPoint"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 96
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 98
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "exception":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newGeoPoint(Landroid/location/Location;)Ljava/lang/Object;
    .locals 4
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newGeoPoint(DD)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newLatLng(DD)Ljava/lang/Object;
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 104
    :try_start_0
    const-string v3, "com.google.android.gms.maps.model.LatLng"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 106
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 108
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "exception":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newLocation(DD)Landroid/location/Location;
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 68
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "newLocation":Landroid/location/Location;
    invoke-virtual {v0, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    .line 70
    invoke-virtual {v0, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    .line 71
    return-object v0
.end method

.method public static newLocation(Ljava/lang/Object;)Landroid/location/Location;
    .locals 7
    .param p0, "latlong"    # Ljava/lang/Object;

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "latitude"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 77
    .local v2, "latitude":D
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "longitude"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 78
    .local v4, "longitude":D
    invoke-static {v2, v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newLocation(DD)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toDegrees(I)D
    .locals 4
    .param p0, "e6"    # I

    .prologue
    .line 60
    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toE6(D)I
    .locals 2
    .param p0, "degrees"    # D

    .prologue
    .line 56
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method
