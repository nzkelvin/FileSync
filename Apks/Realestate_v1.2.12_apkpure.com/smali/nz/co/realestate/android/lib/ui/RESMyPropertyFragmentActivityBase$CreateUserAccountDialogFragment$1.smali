.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "RESMyPropertyFragmentActivityBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

.field final synthetic val$confirmPasswordEditText:Landroid/widget/EditText;

.field final synthetic val$emailEditText:Landroid/widget/EditText;

.field final synthetic val$nameEditText:Landroid/widget/EditText;

.field final synthetic val$passwordEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    .prologue
    .line 396
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$nameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$emailEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$passwordEditText:Landroid/widget/EditText;

    iput-object p5, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$confirmPasswordEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 398
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$nameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "names":[Ljava/lang/String;
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "email":Ljava/lang/String;
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "password":Ljava/lang/String;
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->val$confirmPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "confirmPassword":Ljava/lang/String;
    array-length v0, v8

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 404
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    sget v9, Lnz/co/realestate/android/lib/R$string;->please_enter_both_first_name_and_last_name:I

    invoke-virtual {v2, v9}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAEmailUtil;->isEmailAddressValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    sget v9, Lnz/co/realestate/android/lib/R$string;->please_enter_a_valid_email_address:I

    invoke-virtual {v2, v9}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    sget v9, Lnz/co/realestate/android/lib/R$string;->please_enter_a_password:I

    invoke-virtual {v2, v9}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 419
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    sget v9, Lnz/co/realestate/android/lib/R$string;->passwords_do_not_match:I

    invoke-virtual {v2, v9}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 423
    :cond_3
    aget-object v5, v8, v9

    .line 424
    .local v5, "firstName":Ljava/lang/String;
    array-length v0, v8

    const-class v2, Ljava/lang/String;

    invoke-static {v8, v10, v0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->subList([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, " "

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "lastName":Ljava/lang/String;
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .line 426
    .local v1, "activity":Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
    new-instance v0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$102(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    .line 427
    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$100(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    move-result-object v0

    new-array v2, v9, [Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
