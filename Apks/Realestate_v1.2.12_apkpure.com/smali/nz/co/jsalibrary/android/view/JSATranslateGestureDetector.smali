.class public Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;
.super Ljava/lang/Object;
.source "JSATranslateGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$SimpleOnTranslateGestureListener;,
        Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;
    }
.end annotation


# static fields
.field protected static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field protected static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field protected static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field protected mActivePointerId:I

.field protected mDisplacementX:F

.field protected mDisplacementY:F

.field protected mFirstTouchX:F

.field protected mFirstTouchY:F

.field protected mListener:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;)V
    .locals 1
    .param p1, "listener"    # Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    .line 41
    iput-object p1, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;

    .line 42
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    .line 74
    return-void
.end method

.method public getDisplacementX()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mDisplacementX:F

    return v0
.end method

.method public getDisplacementY()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mDisplacementY:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchX:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchY:F

    return v0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 91
    .local v0, "action":I
    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_2

    iget v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    if-ne v5, v6, :cond_2

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchX:F

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchY:F

    .line 94
    iput v7, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mDisplacementX:F

    .line 95
    iput v7, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mDisplacementY:F

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    .line 97
    iget-object v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;

    invoke-interface {v5, p0}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;->onTranslateBegin(Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;)V

    .line 131
    :cond_1
    :goto_0
    return v4

    .line 101
    :cond_2
    if-ne v0, v8, :cond_3

    .line 102
    iget v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 103
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v6, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mDisplacementX:F

    .line 104
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mDisplacementY:F

    .line 105
    iget-object v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;

    invoke-interface {v5, p0}, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector$OnTranslateGestureListener;->onTranslate(Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;)V

    goto :goto_0

    .line 109
    .end local v3    # "pointerIndex":I
    :cond_3
    if-ne v0, v4, :cond_4

    .line 110
    iput v6, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    goto :goto_0

    .line 114
    :cond_4
    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    .line 115
    iput v6, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    goto :goto_0

    .line 119
    :cond_5
    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x8

    .line 121
    .restart local v3    # "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 122
    .local v2, "pointerId":I
    iget v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    if-ne v2, v5, :cond_1

    .line 124
    if-nez v3, :cond_6

    move v1, v4

    .line 125
    .local v1, "newPointerIndex":I
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchX:F

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mFirstTouchY:F

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lnz/co/jsalibrary/android/view/JSATranslateGestureDetector;->mActivePointerId:I

    goto :goto_0
.end method
