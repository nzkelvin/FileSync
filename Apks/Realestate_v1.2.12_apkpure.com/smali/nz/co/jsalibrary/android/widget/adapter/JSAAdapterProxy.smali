.class public Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;
.super Ljava/lang/Object;
.source "JSAAdapterProxy.java"

# interfaces
.implements Landroid/widget/Adapter;


# instance fields
.field private final mAdapter:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    .line 27
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 42
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 43
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 47
    return-void
.end method
