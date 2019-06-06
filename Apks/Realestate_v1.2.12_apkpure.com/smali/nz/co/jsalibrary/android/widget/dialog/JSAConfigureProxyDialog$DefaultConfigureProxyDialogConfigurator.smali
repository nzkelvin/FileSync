.class public Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;
.source "JSAConfigureProxyDialog.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$ConfigureProxyDialogConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultConfigureProxyDialogConfigurator"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x204aa50bc055bbfL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "positiveButtonTextId"    # I
    .param p3, "negativeButtonTextId"    # I

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>(Landroid/content/Context;II)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "negativeButtonText"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method


# virtual methods
.method public configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 3
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 176
    move-object v0, p1

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    .line 178
    .local v0, "proxyDialog":Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
    iget-object v1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator$1;

    invoke-direct {v2, p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;->updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V

    .line 185
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    .line 186
    return-void
.end method

.method public onCreate(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V
    .locals 0
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog$DefaultConfigureProxyDialogConfigurator;->updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V

    .line 190
    return-void
.end method

.method protected onPositiveButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 4
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 198
    move-object v0, p1

    check-cast v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    .line 199
    .local v0, "proxyDialog":Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->onPositiveButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    .line 200
    iget-object v1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "proxySet"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "proxyHost"

    iget-object v3, v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostTextView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "proxyPort"

    iget-object v3, v0, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortTextView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "proxySet"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "proxyHost"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "proxyPort"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected updateDialogView(Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;)V
    .locals 2
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;

    .prologue
    .line 193
    iget-object v0, p1, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mHostTextView:Landroid/widget/EditText;

    iget-object v1, p1, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 194
    iget-object v0, p1, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mPortTextView:Landroid/widget/EditText;

    iget-object v1, p1, Lnz/co/jsalibrary/android/widget/dialog/JSAConfigureProxyDialog;->mEnableProxyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 195
    return-void
.end method
