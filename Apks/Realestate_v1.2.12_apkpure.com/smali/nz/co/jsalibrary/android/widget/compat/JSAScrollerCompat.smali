.class public Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;
.super Ljava/lang/Object;
.source "JSAScrollerCompat.java"


# static fields
.field private static ALPHA:F = 0.0f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    .line 50
    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->DECELERATION_RATE:F

    .line 51
    const/high16 v8, 0x44480000    # 800.0f

    sput v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->ALPHA:F

    .line 52
    const v8, 0x3ecccccd    # 0.4f

    sput v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->START_TENSION:F

    .line 53
    sget v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->END_TENSION:F

    .line 55
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->SPLINE:[F

    .line 61
    const/4 v7, 0x0

    .line 62
    .local v7, "x_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v13, :cond_2

    .line 63
    int-to-float v8, v2

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v3, v8, v9

    .line 64
    .local v3, "t":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 67
    .local v6, "x_max":F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 68
    .local v5, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 69
    .local v0, "coef":F
    sub-float v8, v12, v5

    sget v9, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 70
    .local v4, "tx":F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 74
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 75
    .local v1, "d":F
    sget-object v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->SPLINE:[F

    aput v1, v8, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "d":F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    move v6, v5

    goto :goto_1

    .line 72
    :cond_1
    move v7, v5

    goto :goto_1

    .line 77
    .end local v0    # "coef":F
    .end local v3    # "t":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    :cond_2
    sget-object v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->SPLINE:[F

    aput v12, v8, v13

    .line 80
    const/high16 v8, 0x41000000    # 8.0f

    sput v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->sViscousFluidScale:F

    .line 82
    sput v12, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->sViscousFluidNormalize:F

    .line 83
    invoke-static {v12}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->sViscousFluidNormalize:F

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 113
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mPpi:F

    .line 115
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeceleration:F

    .line 116
    iput-boolean p3, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFlywheel:Z

    .line 117
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 131
    const v0, 0x43c10b3d

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 5
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 410
    sget v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 411
    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    .line 412
    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    .line 418
    :goto_0
    sget v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 419
    return p0

    .line 414
    :cond_0
    const v0, 0x3ebc5ab2

    .line 415
    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    .line 416
    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    .line 431
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 433
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    .line 235
    iget-boolean v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    if-eqz v10, :cond_1

    .line 236
    const/4 v9, 0x0

    .line 285
    :cond_0
    :goto_0
    return v9

    .line 239
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 241
    .local v7, "timePassed":I
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    if-ge v7, v10, :cond_3

    .line 242
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDurationReciprocal:F

    mul-float v8, v10, v11

    .line 246
    .local v8, "x":F
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    .line 247
    invoke-static {v8}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->viscousFluid(F)F

    move-result v8

    .line 251
    :goto_1
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeltaX:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    .line 252
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeltaY:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    goto :goto_0

    .line 249
    :cond_2
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    .line 255
    .end local v8    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 256
    .local v4, "t":F
    mul-float v10, v14, v4

    float-to-int v3, v10

    .line 257
    .local v3, "index":I
    int-to-float v10, v3

    div-float v5, v10, v14

    .line 258
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    div-float v6, v10, v14

    .line 259
    .local v6, "t_sup":F
    sget-object v10, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->SPLINE:[F

    aget v0, v10, v3

    .line 260
    .local v0, "d_inf":F
    sget-object v10, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->SPLINE:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 261
    .local v1, "d_sup":F
    sub-float v10, v4, v5

    sub-float v11, v6, v5

    div-float/2addr v10, v11

    sub-float v11, v1, v0

    mul-float/2addr v10, v11

    add-float v2, v0, v10

    .line 263
    .local v2, "distanceCoef":F
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    iget v12, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    .line 265
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    .line 266
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    .line 268
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    iget v12, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    .line 270
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    .line 271
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    .line 273
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    if-ne v10, v11, :cond_0

    .line 274
    iput-boolean v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    goto/16 :goto_0

    .line 281
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_3
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    .line 282
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    iput v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    .line 283
    iput-boolean v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 444
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->timePassed()I

    move-result v0

    .line 445
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    .line 446
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDurationReciprocal:F

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 448
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 26
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFlywheel:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 356
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->getCurrVelocity()F

    move-result v13

    .line 358
    .local v13, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v6, v0

    .line 359
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v7, v0

    .line 360
    .local v7, "dy":F
    mul-float v18, v6, v6

    mul-float v19, v7, v7

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 362
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 363
    .local v9, "ndx":F
    div-float v12, v7, v8

    .line 365
    .local v12, "ndy":F
    mul-float v14, v9, v13

    .line 366
    .local v14, "oldVelocityX":F
    mul-float v15, v12, v13

    .line 367
    .local v15, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    .line 368
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    .line 369
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 p3, v0

    .line 370
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 p4, v0

    .line 374
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v12    # "ndy":F
    .end local v13    # "oldVel":F
    .end local v14    # "oldVelocityX":F
    .end local v15    # "oldVelocityY":F
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMode:I

    .line 375
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 377
    mul-int v18, p3, p3

    mul-int v19, p4, p4

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 379
    .local v17, "velocity":F
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mVelocity:F

    .line 380
    sget v18, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->START_TENSION:F

    mul-float v18, v18, v17

    sget v19, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->ALPHA:F

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    .line 381
    .local v10, "l":D
    const-wide v18, 0x408f400000000000L    # 1000.0

    sget v20, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->DECELERATION_RATE:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v22

    div-double v20, v10, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    .line 382
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartTime:J

    .line 383
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    .line 384
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    .line 386
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-nez v18, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 387
    .local v4, "coeffX":F
    :goto_0
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-nez v18, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 389
    .local v5, "coeffY":F
    :goto_1
    sget v18, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->ALPHA:F

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    sget v20, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->DECELERATION_RATE:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sget v22, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->DECELERATION_RATE:F

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v24

    div-double v20, v20, v22

    mul-double v20, v20, v10

    .line 390
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 392
    .local v16, "totalDistance":I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMinX:I

    .line 393
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMaxX:I

    .line 394
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMinY:I

    .line 395
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMaxY:I

    .line 397
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v18, v18, p1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMaxX:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMinX:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    .line 402
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v18, v18, p2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMaxY:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMinY:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    .line 406
    return-void

    .line 386
    .end local v4    # "coeffX":F
    .end local v5    # "coeffY":F
    .end local v16    # "totalDistance":I
    :cond_1
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v18, v17

    goto/16 :goto_0

    .line 387
    .restart local v4    # "coeffX":F
    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v18, v17

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 154
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 190
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mVelocity:F

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeceleration:F

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 489
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 490
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 467
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    .line 468
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeltaX:F

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 470
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 480
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    .line 481
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeltaY:F

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 483
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeceleration:F

    .line 128
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 303
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->startScroll(IIIII)V

    .line 304
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mMode:I

    .line 321
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinished:Z

    .line 322
    iput p5, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    .line 323
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartTime:J

    .line 324
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartX:I

    .line 325
    iput p2, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartY:I

    .line 326
    add-int v0, p1, p3

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalX:I

    .line 327
    add-int v0, p2, p4

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mFinalY:I

    .line 328
    int-to-float v0, p3

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeltaX:F

    .line 329
    int-to-float v0, p4

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDeltaY:F

    .line 330
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mDurationReciprocal:F

    .line 331
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 456
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
