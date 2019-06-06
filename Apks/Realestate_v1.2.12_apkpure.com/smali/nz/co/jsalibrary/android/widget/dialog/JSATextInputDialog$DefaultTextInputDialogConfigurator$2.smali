.class Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$2;
.super Ljava/lang/Object;
.source "JSATextInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;->configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

.field final synthetic val$textInputDialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    .prologue
    .line 296
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$2;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$2;->val$textInputDialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 298
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 297
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$2;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$2;->val$textInputDialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;->updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    return-void
.end method
