.class public Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
.source "JSATextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;",
        ">;"
    }
.end annotation


# static fields
.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TEXT_GRAVITY:Ljava/lang/String; = "text_gravity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;II)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "textId"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;IILnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "textId"    # I
    .param p3, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/CharSequence;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    .param p3, "textGravity"    # I

    .prologue
    .line 187
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;-><init>()V

    .line 188
    .local v0, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 189
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->putArgumentCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/os/Bundle;

    .line 190
    const-string v1, "text_gravity"

    invoke-virtual {v0, v1, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 191
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->putArgumentDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Landroid/os/Bundle;

    .line 192
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    return-object v0
.end method

.method public onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getArgumentTheme()I

    move-result v3

    .line 197
    .local v3, "theme":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getArgumentTitle()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "title":Ljava/lang/String;
    const-string v5, "text"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getArgumentCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 199
    .local v1, "text":Ljava/lang/CharSequence;
    const-string v5, "text_gravity"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 201
    .local v2, "textGravity":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v0

    .line 203
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setText(Ljava/lang/CharSequence;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    .line 204
    :cond_0
    return-object v0

    .line 202
    .end local v0    # "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v0

    goto :goto_0
.end method
