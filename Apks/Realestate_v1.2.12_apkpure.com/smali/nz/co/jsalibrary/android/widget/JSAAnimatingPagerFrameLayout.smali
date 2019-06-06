.class public Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;
.super Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;
.source "JSAAnimatingPagerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;,
        Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static sCurrentContainerId:I


# instance fields
.field protected final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

.field protected mPagerObserver:Landroid/database/DataSetObserver;

.field protected mPendingLayoutItemRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x1f4

    sput v0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->sCurrentContainerId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    .line 59
    return-void
.end method


# virtual methods
.method protected addItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 175
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;-><init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$1;)V

    .line 176
    .local v0, "info":Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;
    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$402(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;I)I

    .line 177
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->getItemParent(I)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$102(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 178
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$100(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$202(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method protected createItemParent()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "parent":Landroid/widget/FrameLayout;
    sget v1, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->sCurrentContainerId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->sCurrentContainerId:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 208
    return-object v0
.end method

.method protected createItemParents(I)V
    .locals 4
    .param p1, "total"    # I

    .prologue
    const/4 v3, -0x1

    .line 196
    :goto_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->getChildCount()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->createItemParent()Landroid/view/ViewGroup;

    move-result-object v1

    .line 198
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 200
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 203
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method protected getItemParent(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected hideChild(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 238
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->hideChild(I)V

    .line 239
    return-void
.end method

.method public onFrameLayoutAnimationEnd()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onFrameLayoutAnimationEnd()V

    .line 151
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPendingLayoutItemRefresh:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->refreshLayoutItems()V

    .line 152
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 165
    invoke-super/range {p0 .. p5}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onLayout(ZIIII)V

    .line 167
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->refreshLayoutItems()V

    .line 168
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onMeasure(II)V

    .line 161
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->refreshLayoutItems()V

    .line 162
    return-void
.end method

.method protected onViewAdded()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected onViewRemoved()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected refreshLayoutItems()V
    .locals 6

    .prologue
    .line 112
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPendingLayoutItemRefresh:Z

    goto :goto_0

    .line 120
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPendingLayoutItemRefresh:Z

    .line 122
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 127
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->createItemParents(I)V

    .line 128
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 130
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->addItem(I)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;

    .line 133
    .local v0, "currentItemInfo":Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$100(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Landroid/view/ViewGroup;

    move-result-object v3

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mCurrentIndex:I

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$200(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 141
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->resetView()V

    goto :goto_0
.end method

.method protected removeItem(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;

    .prologue
    .line 187
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$100(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$400(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)I

    move-result v2

    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$200(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 188
    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->access$100(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->removeView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public setAdapter(Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    .prologue
    .line 85
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 87
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-virtual {v1, p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->removeItem(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    invoke-virtual {v1, p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mCurrentIndex:I

    .line 92
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->resetView()V

    .line 97
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    .line 100
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerObserver:Landroid/database/DataSetObserver;

    if-nez v1, :cond_2

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$PagerObserver;-><init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$1;)V

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerObserver:Landroid/database/DataSetObserver;

    .line 102
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerAdapter:Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->mPagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/adapter/JSAPagerAdapter;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 103
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;->refreshLayoutItems()V

    .line 105
    :cond_3
    return-void
.end method

.method protected showChild(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 224
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->showChild(I)V

    .line 231
    return-void
.end method
