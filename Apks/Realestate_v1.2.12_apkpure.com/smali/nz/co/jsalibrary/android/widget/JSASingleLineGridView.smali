.class public Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;
.super Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;
.source "JSASingleLineGridView.java"


# instance fields
.field protected mChildrenMaximised:Z

.field protected mMaximiseChildHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    .line 77
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mChildrenMaximised:Z

    goto :goto_0
.end method

.method public getMaximiseChildHeight()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->layoutChildren()V

    .line 72
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->updateChildrenHeight()V

    .line 73
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/widget/JSANonScrollingGridView;->onSizeChanged(IIII)V

    .line 67
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->updateChildrenHeight()V

    .line 68
    return-void
.end method

.method public setMaximiseChildHeight(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 56
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    if-ne p1, v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    .line 58
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->invalidate()V

    goto :goto_0
.end method

.method protected updateChildrenHeight()V
    .locals 5

    .prologue
    .line 84
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mChildrenMaximised:Z

    if-nez v4, :cond_1

    .line 94
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    iput-boolean v4, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mChildrenMaximised:Z

    .line 86
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->mMaximiseChildHeight:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->getHeight()I

    move-result v1

    .line 87
    .local v1, "height":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 88
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSASingleLineGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 90
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_2

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v1, :cond_4

    .line 87
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v1, -0x2

    goto :goto_0

    .line 91
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "height":I
    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_2
.end method
