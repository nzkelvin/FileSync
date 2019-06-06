.class public Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "JSATextDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    }
.end annotation


# instance fields
.field protected mText:Ljava/lang/CharSequence;

.field protected mTextGravity:I

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;I)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 72
    return-void
.end method

.method public static create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    invoke-direct {v0, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;-><init>(Landroid/content/Context;I)V

    .line 80
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setText(Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    .line 94
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 105
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 106
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setText(Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    .line 108
    return-object v0
.end method

.method public static createFromHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setText(Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    .line 101
    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 118
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lnz/co/jsalibrary/android/R$layout;->jsa__text_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "view":Landroid/view/View;
    sget v3, Lnz/co/jsalibrary/android/R$id;->textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    .line 120
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 121
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextGravity:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextGravity:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setView(Landroid/view/View;)V

    .line 126
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 127
    return-void

    .line 123
    :cond_2
    const/16 v3, 0x8

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->setText(Ljava/lang/CharSequence;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;I)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textGravity"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object p0

    .line 142
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mText:Ljava/lang/CharSequence;

    .line 143
    iput p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextGravity:I

    .line 144
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextGravity:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 147
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
