.class public abstract Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "JSACustomCursorAdapter.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;",
        ">",
        "Landroid/widget/CursorAdapter;",
        "Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;",
        "Landroid/widget/AbsListView$RecyclerListener;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mResourceIds:[I

.field private final mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

.field private final mThemedContext:Landroid/content/Context;

.field private final mUniqueLongIdColumnName:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "resourceId"    # I
    .param p5, "uniqueLongIdColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[ILjava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[ILjava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "resourceIds"    # [I
    .param p5, "uniqueLongIdColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "[I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    .local p1, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 85
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 86
    new-instance v0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    .line 87
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperClass:Ljava/lang/Class;

    .line 88
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mThemedContext:Landroid/content/Context;

    .line 89
    iput-object p4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mResourceIds:[I

    .line 90
    iput-object p5, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mUniqueLongIdColumnName:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->initialiseWrapperConstructor()V

    .line 92
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 127
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    .line 129
    .local v1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    :try_start_0
    invoke-virtual {p0, v1, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "error updating row"

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearSelectedIndices()V
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->clearSelectedIndices()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    const-wide/16 v2, 0x0

    .line 227
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mUniqueLongIdColumnName:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v2

    .line 233
    :cond_0
    :goto_0
    return-wide v2

    .line 228
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 229
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mUniqueLongIdColumnName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

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
    .line 209
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mResourceIds:[I

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAIntegerUtil;->toArrayList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

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
    .line 275
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->getSelectedIndices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mResourceIds:[I

    array-length v0, v0

    return v0
.end method

.method protected initialiseWrapperConstructor()V
    .locals 5

    .prologue
    .line 101
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperClass:Ljava/lang/Class;

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

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    .line 102
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperConstructor:Ljava/lang/reflect/Constructor;

    .line 108
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error initialising row wrapper constructor, ensure wrapper class is static: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperClass:Ljava/lang/Class;

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
    .line 279
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->isIndexSelected(I)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    const/4 v7, 0x0

    .line 140
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mResourceIds:[I

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->getItemViewType(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, "row":Landroid/view/View;
    const/4 v3, 0x0

    .line 144
    .local v3, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    :try_start_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperContextConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    move-object v3, v0

    .line 146
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :try_start_1
    invoke-virtual {p0, v3, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    return-object v2

    .line 145
    :cond_0
    :try_start_2
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error creating row wrapper, ensure wrapper class is static: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mWrapperClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "error updating row"

    invoke-static {v4, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 181
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;

    .line 182
    .local v1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1    # "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
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
    .line 194
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    .local p1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    return-void
.end method

.method public selectIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 251
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->selectIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 241
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->setSelectedIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->notifyDataSetChanged()V

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
    .line 246
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    .local p1, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->setSelectedIndices(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public toggleIndexSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 266
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->toggleIndexSelection(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public unselectIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 256
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter<TW;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->mSelectionMixin:Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterSelectionMixin;->unselectIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected abstract updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation
.end method
