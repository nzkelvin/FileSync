.class public Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;
.super Landroid/widget/GridView;
.source "JSANonScrollingGridView.java"


# static fields
.field protected static final MAX_LIST_HEIGHT:I = 0x100000


# instance fields
.field protected mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getScrollable()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->mScrollable:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 67
    iget-boolean v2, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->mScrollable:Z

    if-eqz v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 86
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0

    .line 79
    :cond_1
    const/high16 v2, 0x100000

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 80
    .local v0, "heightSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 81
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->getMeasuredHeight()I

    move-result v1

    .line 84
    .local v1, "measuredHeight":I
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 85
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 55
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->mScrollable:Z

    if-ne p1, v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->mScrollable:Z

    .line 57
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->invalidate()V

    goto :goto_0
.end method
