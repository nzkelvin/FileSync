.class public Lnz/co/jsalibrary/android/location/JSAGeoBounds;
.super Ljava/lang/Object;
.source "JSAGeoBounds.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x88ab1392b47be58L


# instance fields
.field protected mEast:D

.field protected mNorth:D

.field protected mSouth:D

.field protected mWest:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "west"    # D
    .param p3, "north"    # D
    .param p5, "east"    # D
    .param p7, "south"    # D

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    .line 28
    iput-wide p3, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    .line 29
    iput-wide p5, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    .line 30
    iput-wide p7, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;DD)V
    .locals 12
    .param p1, "center"    # Ljava/lang/Object;
    .param p2, "latitudeSpan"    # D
    .param p4, "longitudeSpan"    # D

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 35
    :cond_0
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v0

    .line 36
    .local v0, "centerLatitude":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v6, p2, v10

    .line 37
    .local v6, "halfLatitudeSpan":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v8, p4, v10

    .line 38
    .local v8, "halfLongitudeSpan":D
    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->degreeToDistanceLatitude(D)D

    move-result-wide v2

    .line 39
    .local v2, "distanceLatitude":D
    invoke-static {v8, v9, v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->degreeToDistanceLongitude(DD)D

    move-result-wide v4

    .line 40
    .local v4, "distanceLongitude":D
    const-wide v10, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static {p1, v4, v5, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    .line 41
    const-wide/16 v10, 0x0

    invoke-static {p1, v2, v3, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->boundLatitude(D)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    .line 42
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p1, v4, v5, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    .line 43
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    invoke-static {p1, v2, v3, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->boundLatitude(D)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 14
    .param p1, "center"    # Ljava/lang/Object;
    .param p2, "latitudeSpanE6"    # I
    .param p3, "longitudeSpanE6"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 48
    :cond_0
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v0

    .line 49
    .local v0, "centerLatitude":D
    invoke-static/range {p2 .. p2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toDegrees(I)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v6, v10, v12

    .line 50
    .local v6, "halfLatitudeSpan":D
    invoke-static/range {p3 .. p3}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toDegrees(I)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v8, v10, v12

    .line 51
    .local v8, "halfLongitudeSpan":D
    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->degreeToDistanceLatitude(D)D

    move-result-wide v2

    .line 52
    .local v2, "distanceLatitude":D
    invoke-static {v8, v9, v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->degreeToDistanceLongitude(DD)D

    move-result-wide v4

    .line 53
    .local v4, "distanceLongitude":D
    const-wide v10, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static {p1, v4, v5, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    .line 54
    const-wide/16 v10, 0x0

    invoke-static {p1, v2, v3, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->boundLatitude(D)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    .line 55
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p1, v4, v5, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    .line 56
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    invoke-static {p1, v2, v3, v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distanceBearingOffsetPoint(Ljava/lang/Object;DD)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->boundLatitude(D)D

    move-result-wide v10

    iput-wide v10, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 61
    :cond_1
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointBounds(Ljava/util/List;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    .line 62
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    iget-wide v2, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    iput-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    .line 63
    iget-wide v2, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    iput-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    .line 64
    iget-wide v2, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    iput-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    .line 65
    iget-wide v2, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    iput-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    .line 66
    return-void
.end method


# virtual methods
.method public boundLongitudes()Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->boundLongitude(D)D

    move-result-wide v0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    .line 161
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->boundLongitude(D)D

    move-result-wide v0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    .line 162
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->clone()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 3

    .prologue
    .line 222
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "exception":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error cloning geobounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 225
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "point"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v2

    .line 148
    .local v2, "latitude":D
    iget-wide v8, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    cmpl-double v7, v2, v8

    if-gtz v7, :cond_0

    iget-wide v8, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    cmpg-double v7, v2, v8

    if-gez v7, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->boundLongitude(D)D

    move-result-wide v4

    .line 150
    .local v4, "longitude":D
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->clone()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->boundLongitudes()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    .line 151
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->crossesAntimeridian()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v8, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    cmpl-double v7, v4, v8

    if-gez v7, :cond_2

    iget-wide v8, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    cmpg-double v7, v4, v8

    if-gtz v7, :cond_0

    :cond_2
    move v1, v6

    goto :goto_0

    .line 152
    :cond_3
    iget-wide v8, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_4

    iget-wide v8, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    cmpg-double v7, v4, v8

    if-gtz v7, :cond_4

    :goto_1
    move v1, v6

    goto :goto_0

    :cond_4
    move v6, v1

    goto :goto_1
.end method

.method public crossesAntimeridian()Z
    .locals 6

    .prologue
    .line 170
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->clone()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->boundLongitudes()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    .line 171
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    iget-wide v2, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    iget-wide v4, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 188
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 189
    check-cast v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .line 190
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    iget-wide v4, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 191
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    iget-wide v4, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 192
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    iget-wide v4, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 193
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    iget-wide v4, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public fill(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 2
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 209
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 210
    :cond_0
    iget-wide v0, p1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    iput-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    .line 211
    iget-wide v0, p1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    iput-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    .line 212
    iget-wide v0, p1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    iput-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    .line 213
    iget-wide v0, p1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    iput-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    .line 214
    return-void
.end method

.method public getCenter()Ljava/lang/Object;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 73
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    add-double/2addr v0, v2

    div-double/2addr v0, v6

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLongitudeSpan()D

    move-result-wide v4

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newGeoPoint(DD)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEast()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    return-wide v0
.end method

.method public getEastCenterPoint()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v0

    .line 97
    .local v0, "latitude":D
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    invoke-static {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newGeoPoint(DD)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getLatitudeSpan()D
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeSpanE6()I
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLatitudeSpan()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    return v0
.end method

.method public getLongitudeSpan()D
    .locals 8

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 113
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->clone()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->boundLongitudes()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    .line 114
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->crossesAntimeridian()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 115
    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    iget-wide v4, v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getLongitudeSpanE6()I
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLongitudeSpan()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    return v0
.end method

.method public getNorth()D
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    return-wide v0
.end method

.method public getNorthCenterPoint()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v0

    .line 82
    .local v0, "longitude":D
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    invoke-static {v2, v3, v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newGeoPoint(DD)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getSouth()D
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    return-wide v0
.end method

.method public getSouthCenterPoint()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v0

    .line 92
    .local v0, "longitude":D
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    invoke-static {v2, v3, v0, v1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newGeoPoint(DD)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getWest()D
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    return-wide v0
.end method

.method public getWestCenterPoint()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v0

    .line 87
    .local v0, "latitude":D
    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    invoke-static {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->newGeoPoint(DD)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 201
    iget-wide v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(D)I

    move-result v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public scale(D)Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 7
    .param p1, "factor"    # D

    .prologue
    .line 179
    new-instance v0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getCenter()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLatitudeSpan()D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->getLongitudeSpan()D

    move-result-wide v4

    mul-double/2addr v4, p1

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;-><init>(Ljava/lang/Object;DD)V

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->fill(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 180
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mWest:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mNorth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mEast:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->mSouth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
