.class public Lnz/co/jsalibrary/android/widget/adapter/JSACategoryListAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;
.source "JSACategoryListAdapter.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;
.implements Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/adapter/JSAMergeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryListAdapter;->getAdapter(I)Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    move-result-object v0

    .line 43
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v2

    .line 44
    :cond_1
    instance-of v3, v0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 45
    check-cast v1, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;

    .line 46
    .local v1, "newViewAdapter":Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryListAdapter;->getAdapterPosition(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$NewViewListAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public willStickToTop(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryListAdapter;->getAdapter(I)Lnz/co/jsalibrary/android/widget/adapter/JSAViewTypeIndexedAdapter;

    move-result-object v0

    .line 29
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v2

    .line 30
    :cond_1
    instance-of v3, v0, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 31
    check-cast v1, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;

    .line 32
    .local v1, "stickyListAdapter":Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACategoryListAdapter;->getAdapterPosition(I)I

    move-result v2

    invoke-interface {v1, v2}, Lnz/co/jsalibrary/android/widget/JSACategoryHeaderListWrapper$StickyListAdapter;->willStickToTop(I)Z

    move-result v2

    goto :goto_0
.end method
