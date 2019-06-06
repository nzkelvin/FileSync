.class public abstract Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "JSACustomArrayAdapter.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "W:",
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;",
        "Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;",
        "Landroid/widget/AbsListView$RecyclerListener;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mResourceIds:[I

.field private final mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

.field private final mWrapperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TW;>;"
        }
    .end annotation
.end field

.field private mWrapperConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TW;>;"
        }
    .end annotation
.end field

.field private mWrapperContextConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TW;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-direct {p0, p1, p2, v0, p4}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-direct {p0, p1, p2, v0, p4}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;[I[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz p4, :cond_0

    .end local p4    # "objects":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :goto_0
    invoke-direct {p0, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 77
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    .line 79
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperClass:Ljava/lang/Class;

    .line 80
    iput-object p3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mResourceIds:[I

    .line 81
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->initialiseWrapperConstructor()V

    .line 82
    return-void

    .line 76
    .restart local p4    # "objects":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_0
    new-instance p4, Ljava/util/ArrayList;

    .end local p4    # "objects":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;[I[Ljava/lang/Object;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "[I[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 61
    aget v1, p3, v0

    if-eqz p4, :cond_0

    .end local p4    # "objects":[Ljava/lang/Object;, "[TT;"
    :goto_0
    invoke-direct {p0, p2, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 63
    new-instance v0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    .line 64
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperClass:Ljava/lang/Class;

    .line 65
    iput-object p3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mResourceIds:[I

    .line 66
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->initialiseWrapperConstructor()V

    .line 67
    return-void

    .line 61
    .restart local p4    # "objects":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p4, v0

    goto :goto_0
.end method

.method protected static addAll(Landroid/widget/ArrayAdapter;Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ArrayAdapter",
            "<TT;>;",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 270
    :try_start_0
    const-class v4, Landroid/widget/ArrayAdapter;

    const-string v5, "addAll"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/util/Collection;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 271
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 273
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 274
    goto :goto_0
.end method


# virtual methods
.method public addAllSupport(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->addAll(Landroid/widget/ArrayAdapter;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    return-void

    .line 189
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 190
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ArrayAdapter cannot be initialised with T[] and then have items added (Arrays.ArrayList is static). Initialise with List<T>."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addAllSupport([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->addAllSupport(Ljava/util/Collection;)V

    .line 200
    return-void
.end method

.method public clearSelectedIndices()V
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->clearSelectedIndices()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getItemViewTypeIds()Ljava/util/List;
    .locals 1
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
    .line 207
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mResourceIds:[I

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAIntegerUtil;->toArrayList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedIndices()Ljava/util/List;
    .locals 1
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
    .line 257
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->getSelectedIndices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "row"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->inflateRow(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    .line 112
    .local v2, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    if-nez v2, :cond_1

    .line 114
    :try_start_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    move-object v2, v0

    .line 116
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :goto_1
    return-object p2

    .line 115
    :cond_2
    :try_start_2
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error creating row wrapper, ensure wrapper class is static: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "error updating row"

    invoke-static {v3, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mResourceIds:[I

    array-length v0, v0

    return v0
.end method

.method protected inflateRow(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 144
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mResourceIds:[I

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->getItemViewType(I)I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initialiseWrapperConstructor()V
    .locals 5

    .prologue
    .line 91
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredConstructorNoException(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    .line 92
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperConstructor:Ljava/lang/reflect/Constructor;

    .line 98
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error initialising row wrapper constructor, ensure wrapper class is static: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mWrapperClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isIndexSelected(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 261
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->isIndexSelected(I)Z

    move-result v0

    return v0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 167
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    .line 168
    .local v1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error recycling row"

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    return-void
.end method

.method public selectIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 233
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->selectIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 223
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->setSelectedIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSelectedIndices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->setSelectedIndices(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public toggleIndexSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 248
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->toggleIndexSelection(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public unselectIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 238
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->unselectIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;I)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter<TT;TW;>;"
    .local p1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    :try_start_0
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "error updating row"

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;TT;)V"
        }
    .end annotation
.end method
