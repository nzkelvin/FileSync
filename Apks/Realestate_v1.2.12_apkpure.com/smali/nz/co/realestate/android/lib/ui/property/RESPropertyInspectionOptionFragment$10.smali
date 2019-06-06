.class Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;
.super Ljava/lang/Object;
.source "RESPropertyInspectionOptionFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onAddNoteClick()V
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


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 269
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 269
    check-cast p1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 4
    .param p1, "event"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 271
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->dismiss()V

    .line 272
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_INSPECTION:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil;->buildPageViewUrl([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->addComment(Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v1

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)I

    move-result v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startServiceAddComment(Landroid/content/Context;IILjava/lang/String;)V

    .line 278
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$800(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    .line 280
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    goto :goto_0
.end method
