.class public Lnz/co/jsalibrary/android/location/JSAGeoPoint;
.super Ljava/lang/Object;
.source "JSAGeoPoint.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x5754ec792116d7feL


# instance fields
.field protected mLatitudeE6:I

.field protected mLongitudeE6:I


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1, p2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    .line 30
    invoke-static {p3, p4}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "latitudeE6"    # I
    .param p2, "longitudeE6"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    .line 25
    iput p2, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "point"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLatitude(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->getGeoPointLongitude(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lnz/co/jsalibrary/android/location/JSAGeoPoint;-><init>(DD)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->clone()Lnz/co/jsalibrary/android/location/JSAGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnz/co/jsalibrary/android/location/JSAGeoPoint;
    .locals 3

    .prologue
    .line 97
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/location/JSAGeoPoint;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "exception":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error cloning geopoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/jsalibrary/android/location/JSAGeoPoint;

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 79
    check-cast v0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;

    .line 80
    .local v0, "point":Lnz/co/jsalibrary/android/location/JSAGeoPoint;
    iget v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    iget v3, v0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    iget v3, v0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toDegrees(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toDegrees(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 88
    iget v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(J)I

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 46
    invoke-static {p1, p2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    .line 47
    return-void
.end method

.method public setLatitudeE6(I)V
    .locals 0
    .param p1, "latitudeE6"    # I

    .prologue
    .line 62
    iput p1, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLatitudeE6:I

    .line 63
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 54
    invoke-static {p1, p2}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->toE6(D)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    .line 55
    return-void
.end method

.method public setLongitudeE6(I)V
    .locals 0
    .param p1, "longitudeE6"    # I

    .prologue
    .line 70
    iput p1, p0, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->mLongitudeE6:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/location/JSAGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
