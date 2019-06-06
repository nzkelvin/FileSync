.class public Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;
.super Ljava/lang/Object;
.source "JSAZoomImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/JSAZoomImageView;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    .prologue
    .line 292
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-boolean v2, v2, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mZoomInteractionEnabled:Z

    if-nez v2, :cond_0

    .line 300
    :goto_0
    return v1

    .line 295
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 296
    .local v0, "handled":Z
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mTranslateDetector:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    invoke-virtual {v2, p2}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 298
    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateMatrix()V

    .line 299
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->updateIsGestureInProgress(Z)V

    move v1, v0

    .line 300
    goto :goto_0

    .line 297
    :cond_3
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView$OnTouchListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->mTranslateDetector:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->cancel()V

    goto :goto_1
.end method
