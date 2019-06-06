.class public Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;
.super Lcom/commonsware/cwac/endless/EndlessAdapter;
.source "RESPropertyArrayAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndlessPropertyArrayAdapter"
.end annotation


# instance fields
.field private mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

.field private mResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapped"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
    .param p3, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .prologue
    .line 253
    sget v0, Lnz/co/realestate/android/lib/R$layout;->my_property_list_pending_row:I

    invoke-direct {p0, p1, p2, v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mUiThreadHandler:Landroid/os/Handler;

    .line 254
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .line 255
    return-void
.end method


# virtual methods
.method protected appendCachedData()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;->listings:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;->addAllSupport(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected cacheInBackground()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;->getCount()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;-><init>()V

    .line 260
    .local v0, "job":Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v1

    .line 261
    .local v1, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;->getCount()I

    move-result v4

    invoke-static {v1, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->buildBundleGetListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;I)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    move-result-object v3

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .line 262
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    if-eqz v3, :cond_0

    .line 263
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->mResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    iget-boolean v2, v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;->more:Z

    goto :goto_0
.end method

.method public bridge synthetic getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    return-object v0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 276
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v0

    .line 277
    .local v0, "wrappedAdapter":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 278
    :cond_0
    return-void
.end method
