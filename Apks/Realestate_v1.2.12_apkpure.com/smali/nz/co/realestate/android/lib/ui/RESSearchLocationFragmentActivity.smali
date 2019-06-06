.class public final Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESSearchLocationFragmentActivity.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;


# static fields
.field public static final ACTIVITY_RESULT_EXTRA_BOUNDS:Ljava/lang/String; = "bounds"

.field public static final ACTIVITY_RESULT_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public moveToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 2
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "bounds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;->finish()V

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v1, Lnz/co/realestate/android/lib/R$layout;->search_location_layout:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->location_fragment:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .line 28
    .local v0, "locationFragment":Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;
    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->setFragmentListener(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;)V

    .line 29
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
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchLocationFragmentActivity;->finish()V

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
    .line 32
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 33
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 34
    :cond_0
    return-void
.end method
