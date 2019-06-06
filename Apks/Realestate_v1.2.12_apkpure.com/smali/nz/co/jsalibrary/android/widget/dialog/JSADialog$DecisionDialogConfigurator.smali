.class public Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;
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
    name = "DecisionDialogConfigurator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51e70cbb792e0bc3L


# instance fields
.field private mNegativeButtonText:Ljava/lang/String;

.field private mPositiveButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "positiveButtonTextId"    # I
    .param p3, "negativeButtonTextId"    # I

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "negativeButtonText"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mPositiveButtonText:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mNegativeButtonText:Ljava/lang/String;

    .line 287
    return-void
.end method


# virtual methods
.method public configure(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 3
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 292
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mPositiveButtonText:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mPositiveButtonText:Ljava/lang/String;

    .line 293
    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mPositiveButtonText:Ljava/lang/String;

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$1;

    invoke-direct {v2, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    invoke-virtual {p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mNegativeButtonText:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mNegativeButtonText:Ljava/lang/String;

    .line 301
    :cond_1
    const/4 v0, -0x2

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;->mNegativeButtonText:Ljava/lang/String;

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$2;

    invoke-direct {v2, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator$2;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V

    invoke-virtual {p1, v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 306
    return-void
.end method

.method protected onNegativeButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 4
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 314
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->dismiss()V

    .line 315
    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->access$000(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v2, 0x1

    const-string v3, "cancel"

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 316
    return-void
.end method

.method protected onNeutralButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 4
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 319
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->dismiss()V

    .line 320
    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->access$000(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v2, 0x2

    const-string v3, "neutral"

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 321
    return-void
.end method

.method protected onPositiveButtonClick(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)V
    .locals 4
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .prologue
    .line 309
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->dismiss()V

    .line 310
    invoke-static {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->access$000(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;)Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    const/4 v2, 0x0

    const-string v3, "ok"

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 311
    return-void
.end method
