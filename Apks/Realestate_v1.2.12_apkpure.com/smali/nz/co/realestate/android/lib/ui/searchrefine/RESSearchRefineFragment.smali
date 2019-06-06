.class public final Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESSearchRefineFragment.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;
    }
.end annotation


# instance fields
.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

.field private mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mViewsInitialised:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->updateView()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-super {p0, v3}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 46
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->refine_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "refineButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->refine_options:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 49
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->setOptionsListener(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;)V

    .line 51
    new-instance v1, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-boolean v3, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mViewsInitialised:Z

    .line 58
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->updateView()V

    .line 59
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->updateView()V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    sget v0, Lnz/co/realestate/android/lib/R$layout;->search_refine_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFloorAreaUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V
    .locals 1
    .param p1, "dialog"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .prologue
    .line 124
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->onFloorAreaUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onPriceUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V
    .locals 1
    .param p1, "dialog"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .prologue
    .line 116
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->onPriceUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected onRefineClick()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    invoke-interface {v0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;->onRefineClick()V

    .line 91
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 72
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_MAP_REFINE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onUpdateFloorArea(Ljava/util/List;Ljava/util/List;II)V
    .locals 1
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "fromAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "toAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;->onUpdateFloorArea(Ljava/util/List;Ljava/util/List;II)V

    .line 121
    :cond_0
    return-void
.end method

.method public onUpdatePrice(Ljava/util/List;Ljava/util/List;II)V
    .locals 1
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;->onUpdatePrice(Ljava/util/List;Ljava/util/List;II)V

    .line 113
    :cond_0
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    .prologue
    .line 98
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;

    .line 99
    return-void
.end method
