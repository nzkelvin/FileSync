.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;
.super Ljava/lang/Object;
.source "RESMyPropertyFragmentActivityBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

.field final synthetic val$emailEditText:Landroid/widget/EditText;

.field final synthetic val$passwordEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    .prologue
    .line 300
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->val$emailEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->val$passwordEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 302
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->val$emailEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "email":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->val$passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "password":Ljava/lang/String;
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAEmailUtil;->isEmailAddressValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    sget v5, Lnz/co/realestate/android/lib/R$string;->please_enter_a_valid_email_address:I

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 318
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 311
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    sget v5, Lnz/co/realestate/android/lib/R$string;->please_enter_a_password:I

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .line 316
    .local v0, "activity":Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
    new-instance v3, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0, v0, v1, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$002(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    .line 317
    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$000(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
