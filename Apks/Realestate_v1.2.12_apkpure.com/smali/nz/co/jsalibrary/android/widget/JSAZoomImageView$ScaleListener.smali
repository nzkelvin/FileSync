.class public Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "JSAZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    .prologue
    .line 308
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 310
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget v4, v4, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMinScaleFactor:F

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget v5, v5, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget v6, v6, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mMaxScaleFactor:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 312
    .local v1, "newScaleFactor":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 313
    .local v2, "scalePos":Landroid/graphics/PointF;
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget v4, v4, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget v5, v5, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    sub-float v5, v1, v5

    mul-float v3, v4, v5

    .line 314
    .local v3, "widthChange":F
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget v4, v4, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mBitmapHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget v5, v5, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    sub-float v5, v1, v5

    mul-float v0, v4, v5

    .line 315
    .local v0, "heightChange":F
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v4, v4, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v5, v5, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v3

    iget-object v7, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v7}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 316
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v4, v4, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v5, v5, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v0

    iget-object v7, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v7}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 318
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iput v1, v4, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleFactor:F

    .line 319
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ScaleListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->invalidate()V

    .line 320
    const/4 v4, 0x1

    return v4
.end method
