.class public final Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESEnquiryFragmentActivity.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;


# static fields
.field public static final EXTRA_LISTING:Ljava/lang/String; = "listing"


# instance fields
.field private mEnquiryFragment:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v2, Lnz/co/realestate/android/lib/R$layout;->enquiry_layout:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "listing"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 32
    .local v1, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->enquiry_fragment:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->mEnquiryFragment:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;

    .line 33
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->mEnquiryFragment:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;

    invoke-virtual {v2, p0}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->setFragmentListener(Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment$FragmentListener;)V

    .line 34
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->mEnquiryFragment:Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;

    invoke-virtual {v2, v1}, Lnz/co/realestate/android/lib/ui/enquiry/RESEnquiryFragment;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    .line 36
    if-eqz v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v4, v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->getAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "address":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void

    .line 36
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->finish()V

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 46
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 47
    :cond_0
    return-void
.end method

.method public onSendPressed()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;->finish()V

    .line 55
    return-void
.end method
