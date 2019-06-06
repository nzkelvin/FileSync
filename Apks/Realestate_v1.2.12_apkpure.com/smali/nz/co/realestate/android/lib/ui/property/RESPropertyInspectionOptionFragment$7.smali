.class Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;
.super Ljava/lang/Object;
.source "RESPropertyInspectionOptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->initialiseRatingImageView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

.field final synthetic val$rating:I


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 146
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iput p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->val$rating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->val$rating:I

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->setRating(II)V

    .line 150
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v1

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)I

    move-result v2

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->val$rating:I

    invoke-static {v0, v1, v2, v3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startServiceSetRating(Landroid/content/Context;III)V

    .line 151
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    goto :goto_0
.end method
