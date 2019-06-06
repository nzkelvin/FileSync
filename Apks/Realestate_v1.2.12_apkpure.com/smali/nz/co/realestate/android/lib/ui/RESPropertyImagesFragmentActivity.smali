.class public final Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESPropertyImagesFragmentActivity.java"


# static fields
.field private static final EXTRA_INDEX:Ljava/lang/String; = "index"

.field private static final EXTRA_LISTING:Ljava/lang/String; = "listing"


# instance fields
.field private mPropertyImagesFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method public static putBundle(Landroid/content/Intent;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "index"    # I

    .prologue
    .line 33
    const-string v0, "listing"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    const-string v0, "index"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lnz/co/realestate/android/lib/R$layout;->property_images_layout:I

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->property_images_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->mPropertyImagesFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    .line 49
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->mPropertyImagesFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "listing"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    .line 50
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->mPropertyImagesFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->setListingIndex(I)V

    .line 51
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->finish()V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 59
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 60
    :cond_0
    return-void
.end method
