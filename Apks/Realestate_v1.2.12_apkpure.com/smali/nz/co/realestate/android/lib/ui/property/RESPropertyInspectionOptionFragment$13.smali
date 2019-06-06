.class Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;
.super Ljava/lang/Object;
.source "RESPropertyInspectionOptionFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onEditNoteClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

.field final synthetic val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;ILnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 311
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iput p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->val$index:I

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 5
    .param p1, "event"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 313
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->dismiss()V

    .line 314
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->val$index:I

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->updateComment(ILjava/lang/String;I)V

    .line 318
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v1

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)I

    move-result v2

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->val$index:I

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startServiceUpdateComment(Landroid/content/Context;IIILjava/lang/String;)V

    .line 319
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$800(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    .line 321
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    goto :goto_0
.end method
