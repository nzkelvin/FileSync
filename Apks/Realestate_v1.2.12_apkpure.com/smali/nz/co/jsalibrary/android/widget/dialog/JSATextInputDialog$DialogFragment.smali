.class public Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
.source "JSATextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;",
        ">;"
    }
.end annotation


# static fields
.field private static final HINT:Ljava/lang/String; = "hint"

.field private static final IME_OPTIONS:Ljava/lang/String; = "ime_options"

.field private static final INPUT_TYPE:Ljava/lang/String; = "input_type"

.field private static final TEXT:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "inputType"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "inputType"    # I
    .param p4, "imeOptions"    # I

    .prologue
    .line 347
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;-><init>()V

    .line 348
    .local v0, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 349
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->putArgumentString(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 350
    const-string v1, "hint"

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->putArgumentString(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 351
    const-string v1, "input_type"

    invoke-virtual {v0, v1, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 352
    const-string v1, "ime_options"

    invoke-virtual {v0, v1, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 353
    return-object v0
.end method

.method public static create(Ljava/lang/String;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;

    .prologue
    .line 357
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;-><init>()V

    .line 358
    .local v0, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;
    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 359
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->putArgumentDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Landroid/os/Bundle;

    .line 360
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    return-object v0
.end method

.method public onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 364
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getArgumentTheme()I

    move-result v5

    .line 365
    .local v5, "theme":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getArgumentTitle()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "title":Ljava/lang/String;
    const-string v7, "text"

    invoke-virtual {p0, v7, v9}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getArgumentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "text":Ljava/lang/String;
    const-string v7, "hint"

    invoke-virtual {p0, v7, v9}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getArgumentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "hint":Ljava/lang/String;
    const-string v7, "input_type"

    invoke-virtual {p0, v7, v8}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v3

    .line 369
    .local v3, "inputType":I
    const-string v7, "ime_options"

    invoke-virtual {p0, v7, v8}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v2

    .line 371
    .local v2, "imeOptions":I
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v5, v6}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    .line 374
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setText(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 375
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setHint(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 376
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setInputType(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 377
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setImeOptions(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 379
    :cond_3
    return-object v0

    .line 372
    .end local v0    # "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    :cond_4
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v6}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    goto :goto_0
.end method
