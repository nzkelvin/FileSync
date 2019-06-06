.class public Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "JSAAlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;,
        Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$ItemDialogEvent;,
        Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$SingleChoiceDialogEvent;,
        Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$MultiChoiceDialogEvent;,
        Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    }
.end annotation


# static fields
.field private static final BUILDER:Ljava/lang/String; = "builder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    return-void
.end method

.method public static create(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
    .locals 3
    .param p0, "builder"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 106
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 107
    :cond_0
    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    invoke-direct {v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;-><init>()V

    .line 109
    .local v1, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "builder"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v1
.end method

.method private dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 6
    .param p1, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 686
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;

    if-nez v3, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_perform_callback"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;

    .line 689
    .local v2, "listener":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 690
    .local v1, "dialogId":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 691
    .local v0, "dialogData":Ljava/io/Serializable;
    invoke-interface {v2, v1, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;->onDialogEvent(ILjava/io/Serializable;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    goto :goto_0
.end method

.method private onCreateDialogInternal(Landroid/os/Bundle;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 699
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 700
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 701
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v3, "builder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .line 703
    .local v2, "spec":Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$200(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I

    move-result v3

    if-eqz v3, :cond_a

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_a

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$200(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 706
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$300(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$300(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 707
    :cond_1
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$400(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$400(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 708
    :cond_2
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$500(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$500(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 710
    :cond_3
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$600(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$600(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$2;

    invoke-direct {v4, p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$2;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    :cond_4
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$700(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$700(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$3;

    invoke-direct {v4, p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$3;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    :cond_5
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$800(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$800(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$4;

    invoke-direct {v4, p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$4;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    :cond_6
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$900(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$900(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$5;

    invoke-direct {v4, p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$5;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 731
    :cond_7
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1000(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1000(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Z

    move-result-object v4

    new-instance v5, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$6;

    invoke-direct {v5, p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$6;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    :cond_8
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1200(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1200(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1300(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I

    move-result v4

    new-instance v5, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$7;

    invoke-direct {v5, p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$7;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    :cond_9
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1400(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->setCancelable(Z)V

    .line 745
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1400(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 746
    invoke-static {v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$1500(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {p0, v1, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->onDialogBuilderCreate(Landroid/app/AlertDialog$Builder;Landroid/os/Bundle;)V

    .line 749
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 703
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 704
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 792
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    return-object v0
.end method

.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 765
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 766
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "cancel"

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->dispatchDialogEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    .line 767
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 644
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;)V

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->onCreateDialogInternal(Landroid/os/Bundle;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogBuilderCreate(Landroid/app/AlertDialog$Builder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 758
    return-void
.end method

.method protected putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 814
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 815
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 816
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 817
    return-object v0

    .line 814
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
    .line 828
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 829
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 830
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 831
    return-object v0

    .line 828
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
    .line 807
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 808
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 810
    return-object v0

    .line 807
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
    .line 821
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 822
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 823
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 824
    return-object v0

    .line 821
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
    .line 800
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 801
    .local v0, "arguments":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 803
    return-object v0

    .line 800
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setData(Ljava/io/Serializable;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
    .locals 1
    .param p1, "data"    # Ljava/io/Serializable;

    .prologue
    .line 433
    const-string v0, "dialog_data"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;

    .line 434
    return-object p0
.end method

.method public setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 424
    const-string v0, "dialog_id"

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 425
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
    .line 473
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    const-string v0, "dialog"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 474
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
    .line 483
    .local p1, "activity":Landroid/support/v4/app/FragmentActivity;, "TF;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 485
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

    .line 448
    const-string v0, "dialog"

    invoke-virtual {p0, p1, v0, v1, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 449
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

    .line 458
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 459
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 460
    return-void
.end method

.method public showAllowingStateLossNoCallback(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 497
    const-string v0, "dialog"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 498
    return-void
.end method

.method public showAllowingStateLossNoCallback(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 508
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 509
    return-void
.end method

.method protected showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;
    .param p3, "allowStateLoss"    # Z
    .param p4, "performCallback"    # Z

    .prologue
    .line 540
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 541
    :cond_0
    const-string v3, "dialog_perform_callback"

    invoke-virtual {p0, v3, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->putArgumentBoolean(Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 542
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 543
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 544
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 545
    .local v2, "previousFragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 546
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_2
    invoke-virtual {v1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 549
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public showNoCallback(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    const/4 v1, 0x0

    .line 521
    const-string v0, "dialog"

    invoke-virtual {p0, p1, v0, v1, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 522
    return-void
.end method

.method public showNoCallback(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "fragmentTag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 531
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 532
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->showInternal(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ZZ)V

    .line 533
    return-void
.end method
