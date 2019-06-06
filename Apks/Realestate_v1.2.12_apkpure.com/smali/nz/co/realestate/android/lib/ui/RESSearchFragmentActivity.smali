.class public final Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESSearchFragmentActivity.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;
.implements Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;


# static fields
.field private static final EXTRA_LOCATION:Ljava/lang/String; = "extra_location"

.field private static final FRAGMENT_DIALOG_ID_FLOOR_AREA:I = 0x2

.field private static final FRAGMENT_DIALOG_ID_PRICE:I = 0x1


# instance fields
.field private mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method public static getStartActivityIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getStartActivityIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 59
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v2, Lnz/co/realestate/android/lib/R$layout;->search_layout:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_location"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "location":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    .line 68
    if-eqz v0, :cond_1

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->newInstance(Ljava/lang/String;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .line 69
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget-object v5, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 74
    :goto_2
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v2, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->setFragmentListener(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;)V

    .line 82
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 83
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$string;->search_for_property_agreement_type:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    return-void

    .line 64
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    .restart local v0    # "location":Ljava/lang/String;
    :cond_1
    new-instance v2, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;-><init>()V

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    goto :goto_2
.end method

.method public onDialogEvent(ILjava/io/Serializable;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 3
    .param p1, "dialogId"    # I
    .param p2, "dialogData"    # Ljava/io/Serializable;
    .param p3, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 140
    invoke-virtual {p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .line 142
    .local v0, "dialog":Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onPriceUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->mSearchFragment:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onFloorAreaUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->finish()V

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 88
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 89
    :cond_0
    return-void
.end method

.method public onUpdateFloorArea(Ljava/util/List;Ljava/util/List;II)V
    .locals 7
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
    .line 130
    .local p1, "fromAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "toAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget v1, Lnz/co/realestate/android/lib/R$string;->floor_area:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->create(Landroid/content/Context;ILjava/util/List;Ljava/util/List;II)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;

    move-result-object v6

    .line 131
    .local v6, "fragment":Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    .line 132
    invoke-virtual {v6, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 133
    return-void
.end method

.method public onUpdatePrice(Ljava/util/List;Ljava/util/List;II)V
    .locals 7
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
    .local p1, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget v1, Lnz/co/realestate/android/lib/R$string;->price:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->create(Landroid/content/Context;ILjava/util/List;Ljava/util/List;II)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;

    move-result-object v6

    .line 121
    .local v6, "fragment":Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    .line 122
    invoke-virtual {v6, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 123
    return-void
.end method

.method public showListing(I)V
    .locals 0
    .param p1, "listingId"    # I

    .prologue
    .line 104
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;I)V

    .line 105
    return-void
.end method

.method public showListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V
    .locals 0
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p2, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .prologue
    .line 112
    invoke-static {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->startActivity(Landroid/app/Activity;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    .line 113
    return-void
.end method

.method public showMapView(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 0
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 96
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->startActivity(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 97
    return-void
.end method
