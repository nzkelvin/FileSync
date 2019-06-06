.class public Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "JSATextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DialogFragment;,
        Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;,
        Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;
    }
.end annotation


# instance fields
.field protected mEmptyStringPermitted:Z

.field protected mFilters:[Landroid/text/InputFilter;

.field protected mHint:Ljava/lang/String;

.field protected mImeOptions:I

.field protected mInputTextView:Landroid/widget/EditText;

.field protected mInputType:I

.field protected mMaxLines:I

.field protected mSingleLine:Z

.field protected mText:Ljava/lang/String;

.field protected mTextClearMode:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mSingleLine:Z

    .line 70
    iput v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mTextClearMode:I

    .line 78
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mSingleLine:Z

    .line 70
    iput v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mTextClearMode:I

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;

    .prologue
    const/4 v1, 0x1

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 66
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mSingleLine:Z

    .line 70
    iput v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mTextClearMode:I

    .line 90
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 66
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mSingleLine:Z

    .line 70
    iput v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mTextClearMode:I

    .line 86
    return-void
.end method

.method public static create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {v0, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setText(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 112
    invoke-virtual {v0, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setHint(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 113
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "inputType"    # I

    .prologue
    .line 117
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setText(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 120
    invoke-virtual {v0, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setHint(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 121
    invoke-virtual {v0, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setInputType(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 122
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "inputType"    # I
    .param p5, "imeOptions"    # I

    .prologue
    .line 126
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setText(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 129
    invoke-virtual {v0, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setHint(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 130
    invoke-virtual {v0, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setInputType(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 131
    invoke-virtual {v0, p5}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setImeOptions(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 132
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;

    .prologue
    .line 136
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {v0, p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;)V

    .line 137
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    return-object v0
.end method

.method public addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "handler":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;>;"
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    return-object v0
.end method

.method protected bridge synthetic getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;

    move-result-object v0

    return-object v0
.end method

.method protected getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mText:Ljava/lang/String;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 148
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lnz/co/jsalibrary/android/R$layout;->jsa__text_input_dialog:I

    invoke-virtual {v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, "view":Landroid/view/View;
    sget v4, Lnz/co/jsalibrary/android/R$id;->input_edittext:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    .line 150
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    instance-of v4, v4, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    check-cast v4, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    move-object v0, v4

    .line 151
    .local v0, "clearableTextView":Lnz/co/jsalibrary/android/widget/JSAClearableEditText;
    :cond_0
    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mImeOptions:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    iget v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mImeOptions:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 152
    :cond_1
    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputType:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    iget v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputType:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 153
    :cond_2
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mText:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_3
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mHint:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mHint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 155
    :cond_4
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    iget-boolean v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mSingleLine:Z

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 156
    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mMaxLines:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    iget v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mMaxLines:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 157
    :cond_5
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mFilters:[Landroid/text/InputFilter;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 158
    :cond_6
    if-eqz v0, :cond_7

    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mTextClearMode:I

    invoke-virtual {v0, v4}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->setClearMode(I)V

    .line 159
    :cond_7
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;

    move-result-object v4

    if-nez v4, :cond_8

    new-instance v4, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    invoke-direct {v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;-><init>()V

    invoke-virtual {p0, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 162
    :cond_8
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;

    move-result-object v4

    invoke-interface {v4, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;->onCreate(Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    .line 165
    return-void
.end method

.method public setClearMode(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 244
    iget v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mTextClearMode:I

    if-ne p1, v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object p0

    .line 245
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mTextClearMode:I

    .line 246
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    instance-of v1, v1, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    if-eqz v1, :cond_0

    .line 247
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    check-cast v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    .line 248
    .local v0, "clearableTextView":Lnz/co/jsalibrary/android/widget/JSAClearableEditText;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->setClearMode(I)V

    goto :goto_0
.end method

.method public setEmptyStringPermitted(Z)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 220
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mEmptyStringPermitted:Z

    if-ne p1, v0, :cond_0

    .line 222
    :goto_0
    return-object p0

    .line 221
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mEmptyStringPermitted:Z

    goto :goto_0
.end method

.method public setFilters([Landroid/text/InputFilter;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "value"    # [Landroid/text/InputFilter;

    .prologue
    .line 233
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mFilters:[Landroid/text/InputFilter;

    if-ne p1, v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object p0

    .line 234
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mFilters:[Landroid/text/InputFilter;

    .line 235
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mHint:Ljava/lang/String;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object p0

    .line 200
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mHint:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setImeOptions(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 185
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mImeOptions:I

    if-ne p1, v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object p0

    .line 186
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mImeOptions:I

    .line 187
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method public setInputType(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 192
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputType:I

    if-ne p1, v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object p0

    .line 193
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputType:I

    .line 194
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public setMaxLength(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setFilters([Landroid/text/InputFilter;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    return-object v0
.end method

.method public setMaxLines(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 226
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mMaxLines:I

    if-ne p1, v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object p0

    .line 227
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mMaxLines:I

    .line 228
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    goto :goto_0
.end method

.method public setSingleLine(Z)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 213
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mSingleLine:Z

    if-ne p1, v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object p0

    .line 214
    :cond_1
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mSingleLine:Z

    .line 215
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mText:Ljava/lang/String;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object p0

    .line 207
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mText:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->mInputTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
