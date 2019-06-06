.class public final Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESWestpacBranchFragmentActivity.java"


# static fields
.field public static final BRANCH:Ljava/lang/String; = "branch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method public static putBundle(Landroid/content/Intent;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "branch"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .prologue
    .line 22
    const-string v0, "branch"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v1, Lnz/co/realestate/android/lib/R$layout;->westpac_branch_layout:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->westpac_branch_fragment:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;

    .line 35
    .local v0, "fragment":Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "branch"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacBranchListFragment;->setBranch(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)V

    .line 36
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESWestpacBranchFragmentActivity;->finish()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 44
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 45
    :cond_0
    return-void
.end method
