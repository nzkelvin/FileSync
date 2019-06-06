.class public Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "JSAButtonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$ButtonDialogEvent;
    }
.end annotation


# instance fields
.field protected mButtonLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;I)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 53
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "buttonLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setButtonLabels(Ljava/util/List;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    .line 77
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;",
            ")",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "buttonLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    invoke-direct {v0, p0, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 82
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-direct {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setButtonLabels(Ljava/util/List;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    .line 84
    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "buttonLabels"    # [Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setButtonLabels(Ljava/util/List;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;

    .line 70
    return-object v0
.end method

.method private setButtonLabels(Ljava/util/List;)Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mButtonLabels:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-object p0

    .line 129
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mButtonLabels:Ljava/util/List;

    .line 130
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->updateButtonLabels()V

    goto :goto_0
.end method


# virtual methods
.method protected createButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;

    invoke-direct {v1, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 94
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lnz/co/jsalibrary/android/R$layout;->jsa__button_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "view":Landroid/view/View;
    sget v3, Lnz/co/jsalibrary/android/R$id;->linearlayout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->updateButtonLabels()V

    .line 97
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->setView(Landroid/view/View;)V

    .line 99
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method protected updateButtonLabels()V
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 105
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mButtonLabels:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 106
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mButtonLabels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "label":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAButtonDialog;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
