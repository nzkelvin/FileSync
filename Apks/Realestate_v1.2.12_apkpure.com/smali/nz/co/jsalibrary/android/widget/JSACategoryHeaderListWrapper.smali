.class public Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;
.super Landroid/widget/RelativeLayout;
.source "JSACategoryHeaderListWrapper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;,
        Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;,
        Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;
    }
.end annotation


# instance fields
.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mListAdapter:Landroid/widget/ListAdapter;

.field protected mListView:Landroid/widget/ListView;

.field protected mStickyViewPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStuckPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;-><init>(Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;-><init>(Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$SimpleDataSetObserver;-><init>(Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    .line 67
    return-void
.end method


# virtual methods
.method protected addStickyView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 167
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;

    .line 169
    .local v0, "newViewListAdapter":Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;
    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    invoke-interface {v0, v3, p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 173
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2, v3, v4}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->measureChild(Landroid/view/View;II)V

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/widget/RelativeLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 205
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    return-object v0
.end method

.method protected getStickyPositionAfter(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 137
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v1, v3

    .line 142
    :cond_1
    :goto_0
    return v1

    .line 138
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 139
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 140
    .local v1, "p":I
    if-ge v1, p1, :cond_1

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "p":I
    :cond_3
    move v1, v3

    .line 142
    goto :goto_0
.end method

.method protected getStickyPositionBefore(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 127
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v1, v3

    .line 132
    :cond_1
    :goto_0
    return v1

    .line 128
    :cond_2
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 129
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    .local v1, "p":I
    if-le v1, p1, :cond_1

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "p":I
    :cond_3
    move v1, v3

    .line 132
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->updateStickyViewPositions()V

    .line 91
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->updateView()V

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    .line 96
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 97
    .local v0, "adapterValid":Z
    :goto_1
    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "list adapter must implement StickyListAdapter and NewViewAdapter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "adapterValid":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 98
    .restart local v0    # "adapterValid":Z
    :cond_3
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 99
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->updateStickyViewPositions()V

    .line 100
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->updateView()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->updateView()V

    .line 215
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 217
    return-void
.end method

.method public setList(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 74
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-ne v0, p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 76
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    .line 77
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 79
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected updateStickyViewPositions()V
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    .line 119
    :cond_0
    return-void

    .line 114
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    .line 115
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;

    .line 116
    .local v1, "stickyListAdapter":Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 117
    invoke-interface {v1, v0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;->willStickToTop(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStickyViewPositions:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateStuckView()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 179
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    if-ne v6, v9, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 181
    .local v0, "firstVisiblePosition":I
    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->getStickyPositionAfter(I)I

    move-result v1

    .line 182
    .local v1, "nextPositionToStick":I
    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 186
    .local v3, "stuckChild":Landroid/view/View;
    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    if-ne v0, v6, :cond_2

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-gez v6, :cond_4

    :cond_2
    move v5, v8

    .line 187
    .local v5, "visible":Z
    :goto_1
    if-eqz v5, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    if-eq v1, v9, :cond_3

    add-int/lit8 v6, v0, 0x1

    if-ne v1, v6, :cond_3

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    const/4 v9, 0x2

    if-ge v6, v9, :cond_6

    :cond_3
    const/4 v4, 0x0

    .line 194
    .local v4, "top":I
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 195
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "top":I
    .end local v5    # "visible":Z
    :cond_4
    move v5, v7

    .line 186
    goto :goto_1

    .line 187
    .restart local v5    # "visible":Z
    :cond_5
    const/4 v6, 0x4

    goto :goto_2

    .line 191
    :cond_6
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v6, v8

    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4    # "top":I
    goto :goto_3
.end method

.method protected updateView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 151
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 152
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->getStickyPositionBefore(I)I

    move-result v1

    .line 153
    .local v1, "positionToStick":I
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    if-ne v2, v1, :cond_1

    .line 154
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->updateStuckView()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->removeAllViews()V

    .line 159
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->mStuckPosition:I

    .line 160
    if-eq v1, v3, :cond_0

    .line 161
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->addStickyView()V

    .line 162
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper;->updateStuckView()V

    goto :goto_0
.end method
