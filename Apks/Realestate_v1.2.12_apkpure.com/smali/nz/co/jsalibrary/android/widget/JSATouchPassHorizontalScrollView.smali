.class public Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "JSATouchPassHorizontalScrollView.java"


# static fields
.field private static final MIN_MOVEMENT_DISTANCE:F = 1.0f


# instance fields
.field private mIntercept:Z

.field private mLastTouchDown:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v0, v6, 0xff

    .line 46
    .local v0, "action":I
    if-ne v0, v5, :cond_3

    move v3, v5

    .line 47
    .local v3, "isActionUp":Z
    :goto_0
    if-nez v0, :cond_4

    move v2, v5

    .line 48
    .local v2, "isActionDown":Z
    :goto_1
    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    move v1, v5

    .line 50
    .local v1, "isActionCancel":Z
    :goto_2
    if-eqz v2, :cond_0

    .line 51
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mLastTouchDown:Landroid/graphics/Point;

    .line 52
    iput-boolean v5, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mIntercept:Z

    .line 55
    :cond_0
    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->dispatchTouchEventToChild(Landroid/view/MotionEvent;)V

    .line 64
    :goto_3
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mIntercept:Z

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->dispatchTouchEventToChild(Landroid/view/MotionEvent;)V

    .line 65
    :cond_2
    return v5

    .end local v1    # "isActionCancel":Z
    .end local v2    # "isActionDown":Z
    .end local v3    # "isActionUp":Z
    :cond_3
    move v3, v4

    .line 46
    goto :goto_0

    .restart local v3    # "isActionUp":Z
    :cond_4
    move v2, v4

    .line 47
    goto :goto_1

    .restart local v2    # "isActionDown":Z
    :cond_5
    move v1, v4

    .line 48
    goto :goto_2

    .line 59
    .restart local v1    # "isActionCancel":Z
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->dispatchTouchEventToChild(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 60
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->dispatchTouchEventToChild(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 61
    :cond_8
    if-nez v3, :cond_2

    .line 62
    iget-boolean v6, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mIntercept:Z

    if-eqz v6, :cond_9

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->hasMovedVertical(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_9

    move v4, v5

    :cond_9
    iput-boolean v4, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mIntercept:Z

    goto :goto_3
.end method

.method protected dispatchTouchEventToChild(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 86
    .local v1, "point":Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->getScrollX()I

    move-result v5

    add-int v2, v4, v5

    .line 87
    .local v2, "scrolledX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->getScrollY()I

    move-result v5

    add-int v3, v4, v5

    .line 88
    .local v3, "scrolledY":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 91
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method protected hasMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mLastTouchDown:Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->hasMovedHorizontal(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->hasMovedVertical(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hasMovedHorizontal(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mLastTouchDown:Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mLastTouchDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hasMovedVertical(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mLastTouchDown:Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSATouchPassHorizontalScrollView;->mLastTouchDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 42
    return-void
.end method
