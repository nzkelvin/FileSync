.class public Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;
.super Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$SimpleOnTranslateGestureListener;
.source "JSAZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TranslateListener"
.end annotation


# instance fields
.field protected mBeginPosX:F

.field protected mBeginPoxY:F

.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    .prologue
    .line 324
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-direct {p0}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$SimpleOnTranslateGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslate(Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;)V
    .locals 3
    .param p1, "detector"    # Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    .prologue
    .line 334
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->mBeginPosX:F

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->getDisplacementX()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 335
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->mBeginPoxY:F

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->getDisplacementY()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 336
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->invalidate()V

    .line 337
    return-void
.end method

.method public onTranslateBegin(Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    .prologue
    .line 329
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->mBeginPosX:F

    .line 330
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$TranslateListener;->mBeginPoxY:F

    .line 331
    return-void
.end method
