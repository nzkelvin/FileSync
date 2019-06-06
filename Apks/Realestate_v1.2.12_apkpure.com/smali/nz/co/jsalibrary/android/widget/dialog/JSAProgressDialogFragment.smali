.class public Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "JSAProgressDialogFragment.java"


# static fields
.field private static final TEXT:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;II)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "text"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->create(Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;IIZ)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "text"    # I
    .param p3, "cancelable"    # Z

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->create(Ljava/lang/String;Ljava/lang/String;Z)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->create(Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->create(Ljava/lang/String;Ljava/lang/String;Z)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cancelable"    # Z

    .prologue
    .line 51
    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;

    invoke-direct {v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;-><init>()V

    .line 52
    .local v1, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    invoke-virtual {v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->setCancelable(Z)V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method

.method private dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 6
    .param p1, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 232
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;

    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_perform_callback"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;

    .line 235
    .local v2, "listener":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, "dialogId":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 237
    .local v0, "dialogData":Ljava/io/Serializable;
    invoke-interface {v2, v1, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;->onDialogEvent(ILjava/io/Serializable;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    goto :goto_0
.end method

.method private onCreateDialogInternal(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 213
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v6, "theme"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 215
    .local v4, "theme":I
    const-string v6, "inverse_background_forced"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 216
    .local v2, "inverseBackgroundForced":Z
    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "title":Ljava/lang/String;
    const-string v6, "text"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "text":Ljava/lang/String;
    if-eqz v4, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 220
    .local v1, "dialog":Landroid/app/ProgressDialog;
    :goto_0
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 223
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setInverseBackgroundForced(Z)V

    .line 224
    return-object v1

    .line 219
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 246
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "cancel"

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 247
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->onCreateDialogInternal(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 296
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 297
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 299
    return-object v0

    .line 296
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method protected putArgumentCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 310
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 311
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 313
    return-object v0

    .line 310
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method protected putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 289
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 292
    return-object v0

    .line 289
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method protected putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 303
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 305
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 306
    return-object v0

    .line 303
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method protected putArgumentString(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 283
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 285
    return-object v0

    .line 282
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setData(Ljava/io/Serializable;)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 2
    .param p1, "data"    # Ljava/io/Serializable;

    .prologue
    .line 77
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    const-string v1, "dialog_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    return-object p0

    .line 77
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    return-object p0

    .line 67
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 2
    .param p1, "forced"    # Z

    .prologue
    .line 272
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    const-string v1, "inverse_background_forced"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    return-object p0

    .line 272
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setTheme(I)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 262
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    const-string v1, "theme"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    return-object p0

    .line 262
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public show(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/support/v4/app/FragmentActivity;",
            ":",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;",
            ">(TF;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    const-string v0, "dialog"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 119
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2
    .param p2, "fragmentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/support/v4/app/FragmentActivity;",
            ":",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;",
            ">(TF;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 130
    return-void
.end method

.method public showAllowingStateLoss(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/support/v4/app/FragmentActivity;",
            ":",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;",
            ">(TF;)V"
        }
    .end annotation

    .prologue
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    const/4 v1, 0x1

    .line 93
    const-string v0, "dialog"

    invoke-virtual {p0, p1, v0, v1, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 94
    return-void
.end method

.method public showAllowingStateLoss(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1
    .param p2, "fragmentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/support/v4/app/FragmentActivity;",
            ":",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;",
            ">(TF;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    const/4 v0, 0x1

    .line 103
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 105
    return-void
.end method

.method public showAllowingStateLossNoCallback(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 143
    const-string v0, "dialog"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 144
    return-void
.end method

.method public showAllowingStateLossNoCallback(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 155
    return-void
.end method

.method protected showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;
    .param p3, "allowStateLoss"    # Z
    .param p4, "performCallback"    # Z

    .prologue
    .line 187
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 188
    :cond_0
    const-string v3, "dialog_perform_callback"

    invoke-virtual {p0, v3, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 189
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 190
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 191
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 192
    .local v2, "previousFragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_2
    invoke-virtual {v1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 196
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public showNoCallback(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    const/4 v1, 0x0

    .line 168
    const-string v0, "dialog"

    invoke-virtual {p0, p1, v0, v1, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 169
    return-void
.end method

.method public showNoCallback(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 178
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 179
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 180
    return-void
.end method
