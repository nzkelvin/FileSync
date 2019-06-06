.class public Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;
.super Ljava/lang/Object;
.source "JSASaveFileDialogUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Controller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
        ">;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field protected mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

.field protected mDialog:Landroid/app/AlertDialog;

.field protected mEditText:Landroid/widget/EditText;

.field protected mOverwriteTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "params"    # Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mDialog:Landroid/app/AlertDialog;

    .line 53
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    .line 54
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->view:Landroid/view/View;

    sget v1, Lnz/co/jsalibrary/android/R$id;->overwrite_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mOverwriteTextView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->view:Landroid/view/View;

    sget v1, Lnz/co/jsalibrary/android/R$id;->filename_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mEditText:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->startingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 59
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->updateView()V

    .line 60
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 104
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->updateView()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 102
    return-void
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->filePathRoot:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->getFileName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelClick()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 92
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 81
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    .line 83
    :goto_0
    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->saveClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->onEvent()V

    goto :goto_0
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;

    .prologue
    .line 76
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->onSaveClick()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->onCancelClick()V

    goto :goto_0
.end method

.method protected onSaveClick()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 88
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 103
    return-void
.end method

.method protected updateView()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v1, v5

    .line 69
    .local v1, "empty":Z
    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v7, v7, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->filePathRoot:Ljava/lang/String;

    aput-object v7, v6, v4

    aput-object v3, v6, v5

    invoke-static {v6}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->exists([Ljava/lang/String;)Z

    move-result v2

    .line 70
    .local v2, "exists":Z
    iget-object v7, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mOverwriteTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    move v6, v4

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;->mDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 72
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    :cond_1
    return-void

    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "empty":Z
    .end local v2    # "exists":Z
    :cond_2
    move v1, v4

    .line 68
    goto :goto_0

    .line 70
    .restart local v1    # "empty":Z
    .restart local v2    # "exists":Z
    :cond_3
    const/16 v6, 0x8

    goto :goto_1

    .restart local v0    # "button":Landroid/widget/Button;
    :cond_4
    move v5, v4

    .line 72
    goto :goto_2
.end method
