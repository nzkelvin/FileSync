.class Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;
.super Ljava/lang/Object;
.source "JSATextInputDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field final synthetic val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

.field final synthetic val$textInputDialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSADialog;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    .prologue
    .line 285
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    iput-object p3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;->val$textInputDialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 287
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    .line 291
    :goto_0
    return v3

    .line 288
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 289
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;->val$textInputDialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 290
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;->val$textInputDialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;->onPositiveButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    goto :goto_0
.end method
