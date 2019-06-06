.class public Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;
.super Ljava/lang/Object;
.source "JSAAdapterSelectionMixin.java"


# instance fields
.field protected mSelectedIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public clearSelectedIndices()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedIndices()Ljava/util/List;
    .locals 2
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
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isIndexSelected(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public selectIndex(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 69
    if-gez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelectedIndex(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 36
    if-ge p1, v4, :cond_0

    move v0, v1

    .line 42
    :goto_0
    return v0

    .line 37
    :cond_0
    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    if-ne p1, v4, :cond_3

    move v0, v2

    goto :goto_0

    .line 41
    :cond_3
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 42
    goto :goto_0
.end method

.method public setSelectedIndices(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction;-><init>()V

    invoke-static {p1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object p1

    .line 56
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 57
    .local v0, "existingIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v1, "newIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 60
    :goto_0
    return v2

    .line 59
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    .line 60
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toggleIndexSelection(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->isIndexSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->unselectIndex(I)Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->selectIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method public unselectIndex(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->mSelectedIndices:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method
