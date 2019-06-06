.class public Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
.super Ljava/lang/Object;
.source "JSAGeometryUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAGeometryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-wide p1, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    .line 157
    iput-wide p3, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "p"    # Landroid/graphics/PointF;

    .prologue
    .line 165
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(DD)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)V
    .locals 4
    .param p1, "p"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .prologue
    .line 161
    iget-wide v0, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v2, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-direct {p0, v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(DD)V

    .line 162
    return-void
.end method


# virtual methods
.method public add(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;)V
    .locals 4
    .param p1, "v"    # Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    .prologue
    .line 169
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v2, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    .line 170
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v2, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    .line 171
    return-void
.end method

.method public angle()D
    .locals 2

    .prologue
    .line 196
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->angleToPoint(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->clone()Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .locals 2

    .prologue
    .line 175
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 182
    instance-of v2, p1, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 183
    check-cast v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 184
    .local v0, "p":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    iget-wide v2, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    iget-wide v4, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    iget-wide v4, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(D)I

    move-result v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public length()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 192
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public toPointF()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Landroid/graphics/PointF;

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    double-to-float v1, v2

    iget-wide v2, p0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
