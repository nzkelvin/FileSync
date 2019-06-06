.class Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "JSAAlertDialogFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    .prologue
    .line 644
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 665
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->dismiss()V

    .line 666
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$ItemDialogEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$ItemDialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;I)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 667
    return-void
.end method

.method public onMultiChoiceItemClicked(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 670
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;IZ)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 671
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 5

    .prologue
    .line 653
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->dismiss()V

    .line 654
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "cancel"

    invoke-direct {v1, v2, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 656
    return-void
.end method

.method public onNeutralButtonClick()V
    .locals 5

    .prologue
    .line 659
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->dismiss()V

    .line 660
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "neutral"

    invoke-direct {v1, v2, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 662
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 5

    .prologue
    .line 647
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->dismiss()V

    .line 648
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ok"

    invoke-direct {v1, v2, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    .line 649
    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 650
    return-void
.end method

.method public onSingleChoiceItemClicked(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->dismiss()V

    .line 675
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$SingleChoiceDialogEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$SingleChoiceDialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;I)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 676
    return-void
.end method
