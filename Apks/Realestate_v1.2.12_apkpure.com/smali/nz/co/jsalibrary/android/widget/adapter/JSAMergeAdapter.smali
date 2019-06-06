.class public Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;
.super Landroid/widget/BaseAdapter;
.source "JSAMergeAdapter.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;
    }
.end annotation


# instance fields
.field protected mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemViewTypeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected observer:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$1;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->observer:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;

    return-void
.end method


# virtual methods
.method public addAdapter(ILnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "adapter"    # Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->observer:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;

    invoke-interface {p2, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 50
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method public addAdapter(Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->addAdapter(ILnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;)V

    .line 44
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter(I)Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 100
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 101
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v1

    .line 102
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 106
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :goto_1
    return-object v0

    .line 103
    .restart local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 104
    goto :goto_0

    .line 106
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAdapterPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 82
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v1

    .line 83
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 87
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    .end local p1    # "position":I
    :goto_1
    return p1

    .line 84
    .restart local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .restart local v1    # "size":I
    .restart local p1    # "position":I
    :cond_0
    sub-int/2addr p1, v1

    .line 85
    goto :goto_0

    .line 87
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 p1, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "total":I
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 132
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 133
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 116
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v1

    .line 117
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 121
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :goto_1
    return-object v2

    .line 118
    .restart local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 119
    goto :goto_0

    .line 121
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 208
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 209
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v1

    .line 210
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getItemId(I)J

    move-result-wide v2

    .line 214
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :goto_1
    return-wide v2

    .line 211
    .restart local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 212
    goto :goto_0

    .line 214
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 151
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 152
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v1

    .line 153
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 154
    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getItemViewType(I)I

    move-result v2

    .line 155
    .local v2, "type":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->getItemViewTypeIds()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 160
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    .end local v2    # "type":I
    :goto_1
    return v3

    .line 157
    .restart local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 158
    goto :goto_0

    .line 160
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getItemViewTypeIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mItemViewTypeIds:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mItemViewTypeIds:Ljava/util/List;

    .line 236
    :goto_0
    return-object v2

    .line 232
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mItemViewTypeIds:Ljava/util/List;

    .line 233
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 234
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getItemViewTypeIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 235
    .local v1, "type":I
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mItemViewTypeIds:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mItemViewTypeIds:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "type":I
    :cond_3
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mItemViewTypeIds:Ljava/util/List;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 193
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 194
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v1

    .line 195
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :goto_1
    return-object v2

    .line 196
    .restart local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 197
    goto :goto_0

    .line 199
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->getItemViewTypeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 178
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 179
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->getCount()I

    move-result v1

    .line 180
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->isEnabled(I)Z

    move-result v2

    .line 184
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :goto_1
    return v2

    .line 181
    .restart local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 182
    goto :goto_0

    .line 184
    .end local v0    # "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeAdapter(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 65
    if-ltz p1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .line 67
    .local v0, "adapter":Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->observer:Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter$ForwardingDataSetObserver;

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 68
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public removeAdapter(Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;->removeAdapter(I)V

    goto :goto_0
.end method
