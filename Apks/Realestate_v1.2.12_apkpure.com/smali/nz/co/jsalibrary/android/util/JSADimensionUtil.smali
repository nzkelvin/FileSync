.class public Lnz/co/jsalibrary/android/util/JSADimensionUtil;
.super Ljava/lang/Object;
.source "JSADimensionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDisplayDimensions(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 96
    .local v1, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v0, "dimens":Landroid/graphics/Point;
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycombMr2()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    :goto_0
    new-instance v2, Lnz/co/jsalibrary/android/tuple/JSATuple;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 98
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public static getDefaultDisplayDimensionsDips(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 119
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3, p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDipsForPixels(ILandroid/content/Context;)F

    move-result v2

    .line 120
    .local v2, "width":F
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v3, p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDipsForPixels(ILandroid/content/Context;)F

    move-result v0

    .line 121
    .local v0, "height":F
    new-instance v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static getDefaultDisplayHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensions(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDefaultDisplayHeightDips(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensionsDips(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getDefaultDisplayWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensions(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDefaultDisplayWidthDips(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensionsDips(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getDensityMetric(I)F
    .locals 1
    .param p0, "density"    # I

    .prologue
    .line 186
    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    .line 190
    :goto_0
    return v0

    .line 187
    :cond_0
    const/16 v0, 0xa0

    if-ne p0, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 188
    :cond_1
    const/16 v0, 0xf0

    if-ne p0, v0, :cond_2

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 189
    :cond_2
    const/16 v0, 0x140

    if-ne p0, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 190
    :cond_3
    const/16 v0, 0xd5

    if-ne p0, v0, :cond_4

    const v0, 0x3faa3d71    # 1.33f

    goto :goto_0

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getDipsForPixels(ILandroid/content/Context;)F
    .locals 2
    .param p0, "pixels"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v0, "scale":F
    int-to-float v1, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public static getListPreferredItemHeight(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 25
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 26
    .local v2, "value":Landroid/util/TypedValue;
    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 27
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v3, v4}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 29
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method public static getListPreferredItemHeightDips(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getListPreferredItemHeight(Landroid/content/Context;)I

    move-result v0

    .line 35
    .local v0, "height":I
    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDipsForPixels(ILandroid/content/Context;)F

    move-result v1

    return v1
.end method

.method public static getPixelsForDips(FLandroid/content/Context;)I
    .locals 3
    .param p0, "dips"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 45
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getPixelsForSps(FLandroid/content/Context;)I
    .locals 3
    .param p0, "sps"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 65
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getScreenDensityBucketDpi(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    return v0
.end method

.method public static getSpForPixels(ILandroid/content/Context;)F
    .locals 2
    .param p0, "pixels"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 75
    .local v0, "scale":F
    int-to-float v1, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public static scaleDensityResourceLength(Landroid/content/Context;FI)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceLength"    # F
    .param p2, "resourceDensity"    # I

    .prologue
    .line 163
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDensityMetric(I)F

    move-result v0

    .line 164
    .local v0, "resourceDensityMetric":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 165
    .local v1, "screenDensityMetric":F
    div-float v2, p1, v0

    mul-float/2addr v2, v1

    return v2
.end method
