.class public Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;
.super Landroid/widget/ListView;
.source "JSANonScrollingListView.java"


# static fields
.field protected static final MAX_LIST_HEIGHT:I = 0x100000


# instance fields
.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getUnspecifiedHeightEstimate()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getListPreferredItemHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getUnspecifiedHeightEstimate(I)I

    move-result v0

    return v0
.end method

.method public getUnspecifiedHeightEstimate(I)I
    .locals 6
    .param p1, "rowHeight"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 102
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getListPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getListPaddingBottom()I

    move-result v5

    add-int v2, v4, v5

    .line 105
    .local v2, "returnedHeight":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 111
    .end local v2    # "returnedHeight":I
    .local v3, "returnedHeight":I
    :goto_0
    return v3

    .line 106
    .end local v3    # "returnedHeight":I
    .restart local v2    # "returnedHeight":I
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getDividerHeight()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getDividerHeight()I

    move-result v1

    .line 109
    .local v1, "dividerHeight":I
    :goto_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    mul-int/2addr v4, p1

    add-int/2addr v2, v4

    .line 110
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v1

    add-int/2addr v2, v4

    move v3, v2

    .line 111
    .end local v2    # "returnedHeight":I
    .restart local v3    # "returnedHeight":I
    goto :goto_0

    .line 106
    .end local v1    # "dividerHeight":I
    .end local v3    # "returnedHeight":I
    .restart local v2    # "returnedHeight":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->mScrollable:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    const/high16 v2, 0x100000

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 72
    .local v0, "heightSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    .line 73
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getMeasuredHeight()I

    move-result v1

    .line 76
    .local v1, "measuredHeight":I
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 77
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSANonScrollingListView;->mScrollable:Z

    .line 56
    return-void
.end method
