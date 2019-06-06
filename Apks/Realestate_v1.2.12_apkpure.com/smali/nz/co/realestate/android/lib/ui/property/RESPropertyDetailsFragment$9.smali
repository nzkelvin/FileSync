.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$9;
.super Ljava/lang/Object;
.source "RESPropertyDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->onOpenHomeTimesClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .prologue
    .line 397
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$9;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$9;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$9;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$9;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->onProperty(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V

    .line 400
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 401
    return-void
.end method
