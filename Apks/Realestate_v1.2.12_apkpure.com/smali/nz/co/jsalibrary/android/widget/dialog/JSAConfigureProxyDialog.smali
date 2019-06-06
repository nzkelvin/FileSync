.class public Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "JSAConfigureProxyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DialogFragment;,
        Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;,
        Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$ConfigureProxyDialogConfigurator;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOST_SUGGESTION:Ljava/lang/String; = "192.168.0.2"

.field private static final DEFAULT_PORT_SUGGESTION:I = 0x22b8


# instance fields
.field protected mEnableProxyCheckBox:Landroid/widget/CheckBox;

.field protected mHostSuggestion:Ljava/lang/String;

.field protected mHostTextView:Landroid/widget/EditText;

.field protected mPortSuggestion:I

.field protected mPortTextView:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hostSuggestion"    # Ljava/lang/String;
    .param p4, "portSuggestion"    # I

    .prologue
    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 81
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    iput-object p3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostSuggestion:Ljava/lang/String;

    .line 83
    iput p4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortSuggestion:I

    .line 84
    return-void
.end method

.method public static create(Landroid/content/Context;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSAConfigureProxyDialog_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.0.2"

    const/16 v2, 0x22b8

    invoke-static {p0, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "hostSuggestion"    # Ljava/lang/String;
    .param p3, "portSuggestion"    # I

    .prologue
    .line 95
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 96
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iput-object p2, v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostSuggestion:Ljava/lang/String;

    .line 99
    iput p3, v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortSuggestion:I

    .line 100
    return-object v0
.end method


# virtual methods
.method public addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "handler":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;>;"
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    return-object v0
.end method

.method public bridge synthetic addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "exception":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 110
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lnz/co/jsalibrary/android/R$layout;->jsa__configure_proxy_dialog:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 111
    .local v3, "view":Landroid/view/View;
    sget v4, Lnz/co/jsalibrary/android/R$id;->host_edittext:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostTextView:Landroid/widget/EditText;

    .line 112
    sget v4, Lnz/co/jsalibrary/android/R$id;->port_edittext:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortTextView:Landroid/widget/EditText;

    .line 113
    sget v4, Lnz/co/jsalibrary/android/R$id;->enable_checkbox:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    .line 116
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->isProxySet()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostTextView:Landroid/widget/EditText;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostSuggestion:Ljava/lang/String;

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->getProxyHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortTextView:Landroid/widget/EditText;

    iget v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortSuggestion:I

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSANetworkUtil;->getProxyPort(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostTextView:Landroid/widget/EditText;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 120
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortTextView:Landroid/widget/EditText;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->setView(Landroid/view/View;)V

    .line 123
    new-instance v4, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;

    invoke-direct {v4}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;-><init>()V

    invoke-super {p0, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->setDialogConfigurator(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 124
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->getDialogConfigurator()Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;

    .line 127
    .local v0, "configurator":Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;
    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;->onCreate(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V

    .line 128
    return-void
.end method
