.class public abstract Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "JSADialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DialogFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;",
        ">",
        "Landroid/support/v4/app/DialogFragment;"
    }
.end annotation


# static fields
.field protected static final ARGUMENT_CANCELABLE:Ljava/lang/String; = "cancelable"

.field protected static final ARGUMENT_DIALOG_CONFIGURATOR:Ljava/lang/String; = "dialog_configurator"

.field protected static final ARGUMENT_INVERSE_BACKGROUND_FORCED:Ljava/lang/String; = "inverse_background_forced"

.field protected static final ARGUMENT_THEME:Ljava/lang/String; = "theme"

.field protected static final ARGUMENT_TITLE:Ljava/lang/String; = "title"

.field public static final DEFAULT_FRAGMENT_TAG:Ljava/lang/String; = "dialog"

.field protected static final DIALOG_DATA:Ljava/lang/String; = "dialog_data"

.field protected static final DIALOG_ID:Ljava/lang/String; = "dialog_id"

.field protected static final DIALOG_PERFORM_CALLBACK:Ljava/lang/String; = "dialog_perform_callback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    return-void
.end method

.method private dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 6
    .param p1, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 602
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;

    if-nez v3, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_perform_callback"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;

    .line 605
    .local v2, "listener":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 606
    .local v1, "dialogId":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 607
    .local v0, "dialogData":Ljava/io/Serializable;
    invoke-interface {v2, v1, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;->onDialogEvent(ILjava/io/Serializable;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    goto :goto_0
.end method

.method public static removeDialog(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 493
    const-string v0, "dialog"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialog(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeDialog(Landroid/support/v4/app/FragmentManager;)Z
    .locals 1
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 507
    const-string v0, "dialog"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialog(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeDialog(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialogInternal(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static removeDialogAllowingStateLoss(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 521
    const-string v0, "dialog"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialogAllowingStateLoss(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeDialogAllowingStateLoss(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialogAllowingStateLoss(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeDialogAllowingStateLoss(Landroid/support/v4/app/FragmentManager;)Z
    .locals 1
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 535
    const-string v0, "dialog"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialogAllowingStateLoss(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeDialogAllowingStateLoss(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 540
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->removeDialogInternal(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static removeDialogInternal(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragmentTag"    # Ljava/lang/String;
    .param p2, "allowStateLoss"    # Z

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 556
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v2

    .line 557
    :cond_1
    instance-of v3, v1, Landroid/support/v4/app/DialogFragment;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 558
    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 559
    .local v0, "df":Landroid/support/v4/app/DialogFragment;
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 561
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_1
.end method


# virtual methods
.method protected getArgumentBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 723
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 724
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method protected getArgumentCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 733
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 734
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 735
    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method protected getArgumentDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    .locals 1

    .prologue
    .line 696
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "dialog_configurator"

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArgumentSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    return-object v0
.end method

.method protected getArgumentInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 718
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 719
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method protected getArgumentInverseBackgroundForced()Z
    .locals 2

    .prologue
    .line 704
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "inverse_background_forced"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArgumentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getArgumentSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 728
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 729
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getArgumentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 712
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 713
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 714
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected getArgumentTheme()I
    .locals 2

    .prologue
    .line 700
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "theme"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArgumentInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getArgumentTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 692
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArgumentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 615
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 592
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 593
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "cancel"

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 594
    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 569
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v1

    .line 570
    .local v1, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArgumentInverseBackgroundForced()Z

    move-result v3

    invoke-virtual {v1, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->setInverseBackgroundForced(Z)V

    .line 572
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArgumentTitle()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArgumentDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    move-result-object v0

    .line 576
    .local v0, "configurator":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->setDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 578
    :cond_1
    new-instance v3, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;

    invoke-direct {v3, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    .line 584
    return-object v1
.end method

.method protected abstract onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.end method

.method protected putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 667
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 668
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 669
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 670
    return-object v0

    .line 667
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
    .line 681
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 682
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 684
    return-object v0

    .line 681
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method protected putArgumentDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    .local p1, "configurator":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;, "TC;"
    const-string v0, "dialog_configurator"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 660
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 661
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 663
    return-object v0

    .line 660
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method protected putArgumentInverseBackgroundForced(Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 645
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "inverse_background_forced"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 674
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 675
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 676
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 677
    return-object v0

    .line 674
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
    .line 653
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 654
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 656
    return-object v0

    .line 653
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method protected putArgumentTheme(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 641
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "theme"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected putArgumentTitle(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # I

    .prologue
    .line 633
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "title"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentString(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 629
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentString(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/io/Serializable;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
    .locals 1
    .param p1, "data"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "dialog_data"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;

    .line 368
    return-object p0
.end method

.method public setDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    .local p1, "configurator":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;, "TC;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Landroid/os/Bundle;

    .line 753
    return-object p0
.end method

.method public setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "dialog_id"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 355
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
    .locals 0
    .param p1, "forced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 770
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentInverseBackgroundForced(Z)Landroid/os/Bundle;

    .line 771
    return-object p0
.end method

.method public setTheme(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
    .locals 0
    .param p1, "theme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentTheme(I)Landroid/os/Bundle;

    .line 762
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentTitle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 744
    return-object p0
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
    .line 407
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    const-string v0, "dialog"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 408
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
    .line 417
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 419
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
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    const/4 v1, 0x1

    .line 382
    const-string v0, "dialog"

    invoke-virtual {p0, p1, v0, v1, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 383
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
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    const/4 v0, 0x1

    .line 392
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 393
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 394
    return-void
.end method

.method public showAllowingStateLossNoCallback(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 431
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const-string v0, "dialog"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 432
    return-void
.end method

.method public showAllowingStateLossNoCallback(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 441
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 442
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 443
    return-void
.end method

.method protected showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;
    .param p3, "allowStateLoss"    # Z
    .param p4, "performCallback"    # Z

    .prologue
    .line 474
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 475
    :cond_0
    const-string v3, "dialog_perform_callback"

    invoke-virtual {p0, v3, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 476
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 477
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 478
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 479
    .local v2, "previousFragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 480
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 482
    :cond_2
    invoke-virtual {v1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 483
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public showNoCallback(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const/4 v1, 0x0

    .line 455
    const-string v0, "dialog"

    invoke-virtual {p0, p1, v0, v1, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 456
    return-void
.end method

.method public showNoCallback(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;, "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment<TC;>;"
    const/4 v0, 0x0

    .line 465
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 466
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 467
    return-void
.end method
