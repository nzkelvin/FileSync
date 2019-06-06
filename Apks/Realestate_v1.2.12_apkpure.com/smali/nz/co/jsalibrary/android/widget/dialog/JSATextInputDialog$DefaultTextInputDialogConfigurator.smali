.class public Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;
.source "JSATextInputDialog.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTextInputDialogConfigurator"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x204aa50bc055bbfL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "positiveButtonTextId"    # I
    .param p3, "negativeButtonTextId"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>(Landroid/content/Context;II)V

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "negativeButtonText"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method


# virtual methods
.method public configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 3
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 282
    move-object v0, p1

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 285
    .local v0, "textInputDialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    iget-object v1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;

    invoke-direct {v2, p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSADialog;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 296
    iget-object v1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$2;

    invoke-direct {v2, p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator$2;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;->updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    .line 306
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    .line 307
    return-void
.end method

.method public onCreate(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V
    .locals 0
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;->updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    .line 311
    return-void
.end method

.method protected updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V
    .locals 2
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .prologue
    .line 314
    iget-boolean v1, p1, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mEmptyStringPermitted:Z

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 316
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
