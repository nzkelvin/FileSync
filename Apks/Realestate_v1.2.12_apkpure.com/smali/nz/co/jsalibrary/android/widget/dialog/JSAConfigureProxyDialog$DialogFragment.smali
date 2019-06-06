.class public Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
.source "JSAConfigureProxyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
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
.field private static final HOST_SUGGESTION:Ljava/lang/String; = "host_suggestion"

.field private static final PORT_SUGGESTION:Ljava/lang/String; = "port_suggestion"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAConfigureProxyDialog_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v0, "192.168.0.2"

    const/16 v1, 0x22b8

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "hostSuggestion"    # Ljava/lang/String;
    .param p2, "portSuggestion"    # I

    .prologue
    .line 229
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 230
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;-><init>()V

    .line 231
    .local v0, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;
    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 232
    const-string v1, "host_suggestion"

    invoke-virtual {v0, v1, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->putArgumentString(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 233
    const-string v1, "port_suggestion"

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 234
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    return-object v0
.end method

.method public bridge synthetic getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->getArgumentTitle()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "title":Ljava/lang/String;
    const-string v3, "host_suggestion"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->getArgumentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "hostSuggestion":Ljava/lang/String;
    const-string v3, "port_suggestion"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v1

    .line 241
    .local v1, "portSuggestion":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    move-result-object v3

    return-object v3
.end method
