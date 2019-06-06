.class public final Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESSearchRefineFragmentActivity.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;
.implements Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;


# static fields
.field public static final ACTIVITY_RESULT_REFINED:I = 0x1

.field private static final FRAGMENT_DIALOG_ID_FLOOR_AREA:I = 0x2

.field private static final FRAGMENT_DIALOG_ID_PRICE:I = 0x1


# instance fields
.field private mRefineFragment:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->setResult(I)V

    .line 67
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onBackPressed()V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lnz/co/realestate/android/lib/R$layout;->search_refine_layout:I

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->refine_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->mRefineFragment:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    .line 44
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->mRefineFragment:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->setFragmentListener(Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$FragmentListener;)V

    .line 45
    return-void
.end method

.method public onDialogEvent(ILjava/io/Serializable;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 3
    .param p1, "dialogId"    # I
    .param p2, "dialogData"    # Ljava/io/Serializable;
    .param p3, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 95
    invoke-virtual {p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->mRefineFragment:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .line 97
    .local v0, "dialog":Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->mRefineFragment:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->onPriceUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->mRefineFragment:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->onFloorAreaUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->finish()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRefineClick()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchRefineFragmentActivity;->finish()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 49
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 50
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
    .line 85
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

    .line 86
    .local v6, "fragment":Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    .line 87
    invoke-virtual {v6, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 88
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
    .line 75
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

    .line 76
    .local v6, "fragment":Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    .line 77
    invoke-virtual {v6, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 78
    return-void
.end method
