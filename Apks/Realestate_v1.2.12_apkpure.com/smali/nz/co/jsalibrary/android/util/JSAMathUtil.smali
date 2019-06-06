.class public Lnz/co/jsalibrary/android/util/JSAMathUtil;
.super Ljava/lang/Object;
.source "JSAMathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boundCircularValue(DDD)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 57
    cmpl-double v2, p2, p4

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 58
    :cond_0
    cmpg-double v2, p0, p4

    if-gez v2, :cond_2

    cmpl-double v2, p0, p2

    if-ltz v2, :cond_2

    .line 64
    .end local p0    # "value":D
    :cond_1
    :goto_0
    return-wide p0

    .line 59
    .restart local p0    # "value":D
    :cond_2
    sub-double v0, p4, p2

    .line 60
    .local v0, "range":D
    cmpl-double v2, p0, v0

    if-lez v2, :cond_3

    rem-double/2addr p0, v0

    .line 61
    :cond_3
    neg-double v2, v0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_4

    neg-double v2, p0

    rem-double/2addr v2, v0

    neg-double p0, v2

    .line 62
    :cond_4
    cmpg-double v2, p0, p4

    if-gez v2, :cond_5

    cmpl-double v2, p0, p2

    if-gez v2, :cond_1

    .line 63
    :cond_5
    cmpl-double v2, p0, p4

    if-ltz v2, :cond_6

    sub-double/2addr p0, v0

    goto :goto_0

    .line 64
    :cond_6
    add-double/2addr p0, v0

    goto :goto_0
.end method

.method public static boundCircularValue(FFF)F
    .locals 6
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 69
    float-to-double v0, p0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->boundCircularValue(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "int1"    # I
    .param p1, "int2"    # I

    .prologue
    .line 164
    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    if-le p1, p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "long1"    # J
    .param p2, "long2"    # J

    .prologue
    .line 157
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    .line 158
    :cond_0
    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(DD)D
    .locals 4
    .param p0, "n"    # D
    .param p2, "base"    # D

    .prologue
    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(D)D
    .locals 2
    .param p0, "n"    # D

    .prologue
    .line 15
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->log(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs maxDouble([D)D
    .locals 6
    .param p0, "values"    # [D

    .prologue
    const/4 v5, 0x0

    .line 143
    array-length v1, p0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 144
    :cond_0
    array-length v1, p0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    aget-wide v2, p0, v5

    .line 148
    :cond_1
    return-wide v2

    .line 145
    :cond_2
    aget-wide v2, p0, v5

    .line 146
    .local v2, "max":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 147
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs maxFloat([F)F
    .locals 5
    .param p0, "values"    # [F

    .prologue
    const/4 v4, 0x0

    .line 133
    array-length v2, p0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 134
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    aget v1, p0, v4

    .line 138
    :cond_1
    return v1

    .line 135
    :cond_2
    aget v1, p0, v4

    .line 136
    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 137
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs maxInt([I)I
    .locals 5
    .param p0, "values"    # [I

    .prologue
    const/4 v4, 0x0

    .line 123
    array-length v2, p0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 124
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    aget v1, p0, v4

    .line 128
    :cond_1
    return v1

    .line 125
    :cond_2
    aget v1, p0, v4

    .line 126
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 127
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs minDouble([D)D
    .locals 6
    .param p0, "values"    # [D

    .prologue
    const/4 v5, 0x0

    .line 109
    array-length v1, p0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 110
    :cond_0
    array-length v1, p0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    aget-wide v2, p0, v5

    .line 114
    :cond_1
    return-wide v2

    .line 111
    :cond_2
    aget-wide v2, p0, v5

    .line 112
    .local v2, "min":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 113
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs minFloat([F)F
    .locals 5
    .param p0, "values"    # [F

    .prologue
    const/4 v4, 0x0

    .line 99
    array-length v2, p0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 100
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    aget v1, p0, v4

    .line 104
    :cond_1
    return v1

    .line 101
    :cond_2
    aget v1, p0, v4

    .line 102
    .local v1, "min":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 103
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs minInt([I)I
    .locals 5
    .param p0, "values"    # [I

    .prologue
    const/4 v4, 0x0

    .line 89
    array-length v2, p0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 90
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    aget v1, p0, v4

    .line 94
    :cond_1
    return v1

    .line 91
    :cond_2
    aget v1, p0, v4

    .line 92
    .local v1, "min":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 93
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mod(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 79
    if-ltz p0, :cond_0

    rem-int v0, p0, p1

    .line 80
    :goto_0
    return v0

    :cond_0
    neg-int v0, p0

    rem-int/2addr v0, p1

    sub-int v0, p1, v0

    rem-int/2addr v0, p1

    goto :goto_0
.end method

.method public static toDegrees(D)D
    .locals 4
    .param p0, "radians"    # D

    .prologue
    .line 29
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toDegrees(F)F
    .locals 4
    .param p0, "radians"    # F

    .prologue
    .line 34
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static toRadians(D)D
    .locals 4
    .param p0, "degrees"    # D

    .prologue
    .line 43
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(F)F
    .locals 4
    .param p0, "degrees"    # F

    .prologue
    .line 48
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
