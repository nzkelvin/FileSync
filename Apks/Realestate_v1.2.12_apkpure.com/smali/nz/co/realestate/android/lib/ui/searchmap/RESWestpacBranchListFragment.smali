.class public final Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "RESWestpacBranchListFragment.java"


# instance fields
.field private mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

.field private mBranchPhoneTextView:Landroid/widget/TextView;

.field private mBranchTextView:Landroid/widget/TextView;

.field private mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

.field private mOpenWeekendsImageView:Landroid/widget/ImageView;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mViewsInitialised:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranchTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mOpenWeekendsImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    iget-boolean v0, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->open_weekends:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranchPhoneTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contact_phone:Ljava/lang/String;

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contact_phone:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranchPhoneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contact_phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranchPhoneTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 74
    goto :goto_1

    :cond_4
    move v1, v2

    .line 77
    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, v3}, Landroid/support/v4/app/ListFragment;->setRetainInstance(Z)V

    .line 39
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->branch_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranchTextView:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->branch_phone_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranchPhoneTextView:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->open_weekends_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mOpenWeekendsImageView:Landroid/widget/ImageView;

    .line 43
    new-instance v1, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contacts:Ljava/util/List;

    :goto_0
    invoke-direct {v1, v2, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    .line 44
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 45
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iput-boolean v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mViewsInitialised:Z

    .line 48
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->updateView()V

    .line 49
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    sget v0, Lnz/co/realestate/android/lib/R$layout;->westpac_branch_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setBranch(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V
    .locals 5
    .param p1, "branch"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .prologue
    .line 56
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .line 57
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;->clear()V

    .line 58
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;

    iget-object v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;->addAllSupport(Ljava/util/Collection;)V

    .line 59
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_WESTPAC_BRANCH:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->mBranch:Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->updateView()V

    .line 61
    return-void
.end method
