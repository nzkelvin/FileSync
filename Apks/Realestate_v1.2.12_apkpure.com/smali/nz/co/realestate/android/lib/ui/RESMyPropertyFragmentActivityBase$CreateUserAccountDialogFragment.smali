.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RESMyPropertyFragmentActivityBase.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateUserAccountDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 384
    return-void
.end method

.method public static newInstance()Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;
    .locals 2

    .prologue
    .line 376
    new-instance v1, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;-><init>()V

    .line 377
    .local v1, "fragment":Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 379
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 433
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    sget v2, Lnz/co/realestate/android/lib/R$string;->new_account:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$layout;->create_account_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 436
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 439
    sget v2, Lnz/co/realestate/android/lib/R$string;->create:I

    new-instance v3, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$2;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 443
    sget v2, Lnz/co/realestate/android/lib/R$string;->cancel:I

    new-instance v3, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$3;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 450
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 387
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 389
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/support/v7/app/AlertDialog;

    .line 390
    .local v7, "dialog":Landroid/support/v7/app/AlertDialog;
    sget v0, Lnz/co/realestate/android/lib/R$id;->name_edittext:I

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 391
    .local v2, "nameEditText":Landroid/widget/EditText;
    sget v0, Lnz/co/realestate/android/lib/R$id;->email_edittext:I

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 392
    .local v3, "emailEditText":Landroid/widget/EditText;
    sget v0, Lnz/co/realestate/android/lib/R$id;->password_edittext:I

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 393
    .local v4, "passwordEditText":Landroid/widget/EditText;
    sget v0, Lnz/co/realestate/android/lib/R$id;->confirm_password_edittext:I

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 394
    .local v5, "confirmPasswordEditText":Landroid/widget/EditText;
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 396
    .local v6, "button":Landroid/widget/Button;
    new-instance v0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    return-void
.end method
