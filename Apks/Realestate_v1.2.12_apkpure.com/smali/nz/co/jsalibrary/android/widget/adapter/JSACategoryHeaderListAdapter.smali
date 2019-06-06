.class public abstract Lnz/co/jsalibrary/android/widget/adapter/JSACategoryHeaderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "JSACategoryHeaderListAdapter.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;
.implements Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;
.implements Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;


# instance fields
.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryHeaderListAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getItemViewTypeId()I
.end method

.method public getItemViewTypeIds()Ljava/util/List;
    .locals 3
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
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryHeaderListAdapter;->getItemViewTypeId()I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAIntegerUtil;->toArrayList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryHeaderListAdapter;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryHeaderListAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryHeaderListAdapter;->mView:Landroid/view/View;

    .line 38
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryHeaderListAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public willStickToTop(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
