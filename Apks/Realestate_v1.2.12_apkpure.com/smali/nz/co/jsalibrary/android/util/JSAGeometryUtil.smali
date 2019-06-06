.class public Lnz/co/jsalibrary/android/util/JSAGeometryUtil;
.super Ljava/lang/Object;
.source "JSAGeometryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;,
        Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angleBetweenPoints(DDDDDD)D
    .locals 6
    .param p0, "cx"    # D
    .param p2, "cy"    # D
    .param p4, "p1x"    # D
    .param p6, "p1y"    # D
    .param p8, "p2x"    # D
    .param p10, "p2y"    # D

    .prologue
    .line 89
    sub-double v0, p10, p2

    sub-double v2, p8, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v2, p6, p2

    sub-double v4, p4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static angleBetweenPoints(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D
    .locals 12
    .param p0, "center"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p1, "p1"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p2, "p2"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 73
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v4, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v6, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v8, p2, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v10, p2, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-static/range {v0 .. v11}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->angleBetweenPoints(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static angleToPoint(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 30
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static angleToPoint(DDDD)D
    .locals 4
    .param p0, "cx"    # D
    .param p2, "cy"    # D
    .param p4, "px"    # D
    .param p6, "py"    # D

    .prologue
    .line 56
    sub-double v0, p6, p2

    sub-double v2, p4, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static angleToPoint(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D
    .locals 4
    .param p0, "p"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 21
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-static {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->angleToPoint(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static angleToPoint(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D
    .locals 8
    .param p0, "center"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p1, "p"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 42
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v4, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v6, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-static/range {v0 .. v7}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->angleToPoint(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static contains([Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)Z
    .locals 12
    .param p0, "shape"    # [Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p1, "test"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 138
    .local v3, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 139
    aget-object v4, p0, v0

    iget-wide v4, v4, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v6, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    aget-object v5, p0, v2

    iget-wide v6, v5, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v8, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    if-eq v4, v5, :cond_0

    iget-wide v4, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    aget-object v6, p0, v2

    iget-wide v6, v6, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    aget-object v8, p0, v0

    iget-wide v8, v8, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    sub-double/2addr v6, v8

    iget-wide v8, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    aget-object v10, p0, v0

    iget-wide v10, v10, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aget-object v8, p0, v2

    iget-wide v8, v8, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    aget-object v10, p0, v0

    iget-wide v10, v10, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    aget-object v8, p0, v0

    iget-wide v8, v8, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    add-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 140
    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 138
    :cond_0
    :goto_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    move v2, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 139
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 140
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 142
    :cond_4
    return v3
.end method

.method public static distance(DDDD)D
    .locals 6
    .param p0, "p1x"    # D
    .param p2, "p1y"    # D
    .param p4, "p2x"    # D
    .param p6, "p2y"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 119
    sub-double v0, p4, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v2, p6, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distance(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D
    .locals 8
    .param p0, "p1"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p1, "p2"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 114
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v4, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v6, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-static/range {v0 .. v7}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->distance(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static perpendicularDistance(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D
    .locals 16
    .param p0, "p"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p1, "l1"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .param p2, "l2"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 100
    move-object/from16 v0, p1

    iget-wide v10, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    move-object/from16 v0, p2

    iget-wide v12, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 105
    :goto_0
    return-wide v10

    .line 101
    :cond_0
    move-object/from16 v0, p2

    iget-wide v10, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    sub-double/2addr v12, v14

    div-double v4, v10, v12

    .line 102
    .local v4, "k":D
    move-object/from16 v0, p1

    iget-wide v10, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    mul-double/2addr v12, v4

    sub-double v6, v10, v12

    .line 103
    .local v6, "m":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    mul-double/2addr v10, v4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    sub-double/2addr v10, v12

    add-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 104
    .local v8, "numer":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 105
    .local v2, "denom":D
    div-double v10, v8, v2

    goto :goto_0
.end method
