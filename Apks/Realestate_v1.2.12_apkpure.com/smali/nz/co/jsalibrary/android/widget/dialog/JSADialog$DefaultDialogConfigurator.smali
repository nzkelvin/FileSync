.class public Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;
.super Ljava/lang/Object;
.source "JSADialog.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDialogConfigurator"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b20fb074a63e881L


# instance fields
.field private mButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;->mButtonText:Ljava/lang/String;

    .line 247
    return-void
.end method


# virtual methods
.method public configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 3
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 253
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;->mButtonText:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;->mButtonText:Ljava/lang/String;

    .line 254
    :cond_0
    const/4 v0, -0x3

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;->mButtonText:Ljava/lang/String;

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator$1;

    invoke-direct {v2, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    invoke-virtual {p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 259
    return-void
.end method

.method protected onPositiveButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 4
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 262
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->dismiss()V

    .line 263
    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->access$000(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v2, 0x0

    const-string v3, "ok"

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 264
    return-void
.end method
