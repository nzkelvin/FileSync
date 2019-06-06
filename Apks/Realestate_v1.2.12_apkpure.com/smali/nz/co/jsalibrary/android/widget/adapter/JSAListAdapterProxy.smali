.class public Lnz/co/jsalibrary/android/widget/adapter/JSAListAdapterProxy;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;
.source "JSAListAdapterProxy.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;-><init>(Landroid/widget/Adapter;)V

    .line 22
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAListAdapterProxy;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAListAdapterProxy;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAAdapterProxy;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAListAdapterProxy;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
