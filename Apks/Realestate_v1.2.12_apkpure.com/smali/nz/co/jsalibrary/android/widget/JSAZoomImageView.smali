.class public Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
.super Landroid/widget/ImageView;
.source "JSAZoomImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSAZoomImageView$SimpleZoomImageViewListener;,
        Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;,
        Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;,
        Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;,
        Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;
    }
.end annotation


# instance fields
.field protected mBitmapHeight:I

.field protected mBitmapWidth:I

.field protected mInitialScaleType:Landroid/widget/ImageView$ScaleType;

.field protected mIsGestureInProgressHorizontal:Z

.field protected mIsGestureInProgressVertical:Z

.field protected mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

.field protected mMaxScaleFactor:F

.field protected mMinScaleFactor:F

.field protected mPos:Landroid/graphics/PointF;

.field protected mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScaleFactor:F

.field protected mTranslateDetector:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

.field protected mZoomInteractionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 53
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    .line 54
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    .line 56
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    .line 66
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->initialiseComponent()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 53
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    .line 54
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    .line 56
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    .line 71
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->initialiseComponent()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 53
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    .line 54
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    .line 56
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    .line 76
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->initialiseComponent()V

    .line 77
    return-void
.end method


# virtual methods
.method protected determineIsGestureInProgress(Z)Z
    .locals 2
    .param p1, "restrict"    # Z

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->determineIsGestureInProgressHorizontal(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->determineIsGestureInProgressVertical(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected determineIsGestureInProgressHorizontal(Z)Z
    .locals 5
    .param p1, "restrict"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    if-nez v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 264
    :cond_2
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mTranslateDetector:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->restrictImage()V

    .line 266
    :cond_3
    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 267
    .local v0, "imageWidth":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 268
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    .line 269
    goto :goto_0
.end method

.method protected determineIsGestureInProgressVertical(Z)Z
    .locals 5
    .param p1, "restrict"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 278
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    if-nez v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 280
    :cond_2
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mTranslateDetector:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->restrictImage()V

    .line 282
    :cond_3
    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    int-to-float v3, v3

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 283
    .local v0, "imageHeight":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 284
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    .line 285
    goto :goto_0
.end method

.method public getInitialScaleFactor()F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 181
    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 183
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getInitialScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getMaxScaleFactor()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    return v0
.end method

.method public getMinScaleFactor()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    return v0
.end method

.method public getZoomInteractionEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    return v0
.end method

.method protected initialiseComponent()V
    .locals 3

    .prologue
    .line 84
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;-><init>(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 86
    new-instance v0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;-><init>(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;)V

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;-><init>(Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mTranslateDetector:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    .line 87
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;-><init>(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;)V

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    return-void
.end method

.method protected initialiseScaleFactor()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getInitialScaleFactor()F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 115
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateMatrix()V

    .line 116
    return-void
.end method

.method public isGestureInProgress()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressHorizontal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressVertical:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGestureInProgressHorizontal()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressHorizontal:Z

    return v0
.end method

.method public isGestureInProgressVertical()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressVertical:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 110
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;->onSizeChanged(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->initialiseScaleFactor()V

    .line 111
    :cond_1
    return-void
.end method

.method protected restrictImage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 357
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v3

    .line 358
    .local v3, "width":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v0

    .line 361
    .local v0, "height":I
    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    iget v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 364
    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 365
    .local v2, "imageWidth":I
    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 368
    .local v1, "imageHeight":I
    if-ge v2, v3, :cond_0

    .line 369
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    sub-int v5, v3, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 376
    :goto_0
    if-ge v1, v0, :cond_1

    .line 377
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    sub-int v5, v0, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 382
    :goto_1
    return-void

    .line 371
    :cond_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 372
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-int v6, v3, v2

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 379
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 380
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-int v6, v0, v1

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :cond_0
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    .line 98
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->initialiseScaleFactor()V

    .line 99
    return-void

    :cond_1
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_0
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    .line 105
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->initialiseScaleFactor()V

    .line 106
    return-void

    :cond_1
    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public setInitialScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "type"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 137
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mInitialScaleType:Landroid/widget/ImageView$ScaleType;

    .line 138
    return-void
.end method

.method public setListener(Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    .prologue
    .line 389
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    .line 390
    return-void
.end method

.method public setMaxScaleFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 164
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 165
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    .line 167
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateMatrix()V

    goto :goto_0
.end method

.method public setMinScaleFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 153
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 154
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    .line 156
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateMatrix()V

    goto :goto_0
.end method

.method public setScaleFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 175
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 177
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateMatrix()V

    goto :goto_0
.end method

.method public setScaleFactor(FFF)V
    .locals 2
    .param p1, "scaleFactor"    # F
    .param p2, "minScaleFactor"    # F
    .param p3, "maxScaleFactor"    # F

    .prologue
    .line 189
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    .line 190
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    .line 191
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 192
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateMatrix()V

    .line 193
    return-void
.end method

.method public setZoomInteractionEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 127
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    if-ne v0, p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateIsGestureInProgress(Z)V

    goto :goto_0
.end method

.method protected updateIsGestureInProgress(Z)V
    .locals 6
    .param p1, "restrict"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0, v4}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->determineIsGestureInProgressHorizontal(Z)Z

    move-result v1

    .line 229
    .local v1, "progressHorizontal":Z
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->determineIsGestureInProgressVertical(Z)Z

    move-result v2

    .line 230
    .local v2, "progressVertical":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_6

    :cond_0
    move v0, v4

    .line 232
    .local v0, "progress":Z
    :goto_0
    iget-boolean v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressHorizontal:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressVertical:Z

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    if-eq v0, v3, :cond_3

    .line 233
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    invoke-interface {v3, v0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;->onIsGestureInProgressChange(Z)V

    .line 236
    :cond_3
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressHorizontal:Z

    if-eq v1, v3, :cond_4

    .line 237
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressHorizontal:Z

    .line 238
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    invoke-interface {v3, v1}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;->onIsGestureInProgressHorizontalChange(Z)V

    .line 241
    :cond_4
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressVertical:Z

    if-eq v2, v3, :cond_5

    .line 242
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mIsGestureInProgressVertical:Z

    .line 243
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mListener:Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;

    invoke-interface {v3, v2}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;->onIsGestureInProgressVerticalChange(Z)V

    .line 245
    :cond_5
    return-void

    .end local v0    # "progress":Z
    :cond_6
    move v0, v3

    .line 230
    goto :goto_0
.end method

.method protected updateMatrix()V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->restrictImage()V

    .line 348
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 349
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 350
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 351
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 352
    return-void
.end method
