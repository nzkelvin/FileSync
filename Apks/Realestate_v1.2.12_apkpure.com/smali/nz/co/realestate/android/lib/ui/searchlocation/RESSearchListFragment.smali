.class public Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "RESSearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;
    }
.end annotation


# static fields
.field private static final REQUEST:Ljava/lang/String; = "extra_request"

.field private static final RESULT:Ljava/lang/String; = "extra_result"


# instance fields
.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

.field private mListHeaderView:Landroid/view/View;

.field private mListSubHeader:Landroid/view/View;

.field private mListViewFromUserInteraction:Z

.field private mListingsRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

.field private mListingsResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

.field private mOrderedByTextView:Landroid/widget/TextView;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListSubHeader:Landroid/view/View;

    return-object v0
.end method

.method private getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 183
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentBaseListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v1

    return-object v1
.end method

.method private onSortClick()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

    invoke-interface {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;->onSortClick()V

    .line 175
    :cond_0
    return-void
.end method

.method private updateListAdapter(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V
    .locals 3
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p2, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .prologue
    .line 135
    invoke-virtual {p0, p2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->constructAdapter(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v1

    .line 136
    .local v1, "baseAdapter":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
    new-instance v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V

    .line 137
    .local v0, "adapter":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 139
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->updateView()V

    .line 140
    return-void
.end method


# virtual methods
.method protected constructAdapter(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
    .locals 4
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .prologue
    .line 143
    instance-of v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;

    .line 144
    .local v0, "fullListingsResult":Z
    const/4 v1, 0x0

    .line 145
    .local v1, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    if-nez p1, :cond_0

    .line 147
    .end local p1    # "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    :goto_0
    new-instance v2, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v2

    .line 146
    .restart local p1    # "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    :cond_0
    if-eqz v0, :cond_1

    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;

    .end local p1    # "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;->listings:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->mapToBasicListing(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    goto :goto_0

    .restart local p1    # "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    :cond_1
    iget-object v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;->listings:Ljava/util/List;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-super {p0, v4}, Landroid/support/v4/app/ListFragment;->setRetainInstance(Z)V

    .line 68
    if-eqz p1, :cond_0

    const-string v0, "extra_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "extra_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "extra_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "extra_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .line 73
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

    :goto_0
    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

    .line 75
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->list_subheader:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListSubHeader:Landroid/view/View;

    .line 76
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->ordered_by_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mOrderedByTextView:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$layout;->search_map_list_header:I

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListHeaderView:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 80
    iput-boolean v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mViewsInitialised:Z

    .line 81
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->updateView()V

    .line 82
    return-void

    .line 73
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    sget v0, Lnz/co/realestate/android/lib/R$layout;->search_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J

    .prologue
    .line 155
    if-nez p3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    add-int/lit8 v8, p3, -0x1

    .line 157
    .local v8, "wrappedIndex":I
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    check-cast v9, Landroid/widget/WrapperListAdapter;

    .line 158
    .local v9, "wrapperAdapter":Landroid/widget/WrapperListAdapter;
    invoke-interface {v9}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;

    .line 159
    .local v6, "adapter":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;
    invoke-virtual {v6}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 160
    invoke-virtual {v6}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;->getWrappedAdapter()Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 163
    .local v7, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListViewFromUserInteraction:Z

    if-eqz v0, :cond_2

    const-string v1, "listings_list"

    .line 164
    .local v1, "category":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v2, "listing"

    iget v3, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 166
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;

    iget v2, v7, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-interface {v0, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$FragmentListener;->showProperty(I)V

    goto :goto_0

    .line 163
    .end local v1    # "category":Ljava/lang/String;
    :cond_2
    const-string v1, "listings_map_cluster_list"

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 96
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->updateView()V

    .line 97
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    const-string v0, "extra_request"

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 101
    const-string v0, "extra_result"

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 90
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_MAP_SEARCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->updateListAdapter(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setListingsRequestAndResult(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V
    .locals 2
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p2, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .prologue
    .line 128
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .line 129
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .line 130
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mViewsInitialised:Z

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListingsResult:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->updateListAdapter(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    goto :goto_0
.end method

.method public updateView()V
    .locals 6

    .prologue
    .line 110
    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mViewsInitialised:Z

    if-nez v3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mListSubHeader:Landroid/view/View;

    new-instance v4, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$1;

    invoke-direct {v4, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 117
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    const-string v5, "listing_sort_options"

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringMapArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "sortOptions":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;

    const-string v4, "description"

    invoke-direct {v3, v4}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    .local v0, "sortDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;

    const-string v4, "value"

    invoke-direct {v3, v4}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 120
    .local v2, "sortValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->mOrderedByTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
