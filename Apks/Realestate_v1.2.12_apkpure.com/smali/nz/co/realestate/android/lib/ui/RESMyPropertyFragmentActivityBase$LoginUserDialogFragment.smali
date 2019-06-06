.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;
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
    name = "LoginUserDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 288
    return-void
.end method

.method public static newInstance()Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;
    .locals 2

    .prologue
    .line 280
    new-instance v1, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;-><init>()V

    .line 281
    .local v1, "fragment":Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 283
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 323
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    sget v8, Lnz/co/realestate/android/lib/R$string;->login:I

    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lnz/co/realestate/android/lib/R$layout;->login_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 326
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 329
    sget v8, Lnz/co/realestate/android/lib/R$id;->email_edittext:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 330
    .local v2, "emailEditText":Landroid/widget/EditText;
    sget v8, Lnz/co/realestate/android/lib/R$id;->label_textview:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 331
    .local v4, "linkTextView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    sget v8, Lnz/co/realestate/android/lib/R$string;->_create_a_something:I

    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "text":Ljava/lang/String;
    sget v8, Lnz/co/realestate/android/lib/R$string;->new_account:I

    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "link":Ljava/lang/String;
    new-array v8, v12, [Ljava/lang/Object;

    aput-object v3, v8, v11

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 337
    new-array v8, v12, [Ljava/lang/String;

    aput-object v3, v8, v11

    invoke-static {v8}, Lnz/co/jsalibrary/android/util/JSARegexUtil;->compileMatchWordsPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 340
    .local v5, "pattern":Ljava/util/regex/Pattern;
    sget v8, Lnz/co/realestate/android/lib/R$string;->login:I

    new-instance v9, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$2;

    invoke-direct {v9, p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;)V

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 344
    sget v8, Lnz/co/realestate/android/lib/R$string;->cancel:I

    new-instance v9, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$3;

    invoke-direct {v9, p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;)V

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 354
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const-string v8, ""

    invoke-static {v4, v5, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 356
    new-instance v8, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$4;

    invoke-direct {v8, p0, v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$4;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;Landroid/app/Dialog;)V

    invoke-static {v4, v8}, Lnz/co/jsalibrary/android/util/JSALinkifyUtil;->hijackLinks(Landroid/widget/TextView;Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;)V

    .line 365
    return-object v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 291
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 293
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    .line 294
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    sget v4, Lnz/co/realestate/android/lib/R$id;->email_edittext:I

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 295
    .local v2, "emailEditText":Landroid/widget/EditText;
    sget v4, Lnz/co/realestate/android/lib/R$id;->password_edittext:I

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 296
    .local v3, "passwordEditText":Landroid/widget/EditText;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 298
    .local v0, "button":Landroid/widget/Button;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "aemery@juliusspencer.co.nz"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    new-instance v4, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;

    invoke-direct {v4, p0, v2, v3}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-void
.end method
