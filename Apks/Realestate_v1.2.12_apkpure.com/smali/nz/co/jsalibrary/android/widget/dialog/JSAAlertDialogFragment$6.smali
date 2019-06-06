.class Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$6;
.super Ljava/lang/Object;
.source "JSAAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;->onCreateDialogInternal(Landroid/os/Bundle;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

.field final synthetic val$listener:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    .prologue
    .line 732
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$6;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;

    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$6;->val$listener:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$6;->val$listener:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;

    invoke-interface {v0, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$InternalDialogListener;->onMultiChoiceItemClicked(IZ)V

    .line 735
    return-void
.end method
