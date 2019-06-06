.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$4;
.super Ljava/lang/Object;
.source "RESMyPropertyFragmentActivityBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    .prologue
    .line 356
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkClick(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "link"    # Ljava/lang/CharSequence;

    .prologue
    .line 358
    invoke-static {}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->newInstance()Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    move-result-object v0

    .line 359
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "create_account_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 361
    return-void
.end method
