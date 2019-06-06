.class public Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "JSASaveFileDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePathRoot"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    .line 117
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iput-object p1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->context:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iput-object p2, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->filePathRoot:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->initialiseDefaultProperties()V

    .line 120
    return-void
.end method


# virtual methods
.method public addCancelClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->cancelClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-object p0

    .line 134
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->cancelClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    goto :goto_0
.end method

.method public addSaveClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$DialogEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->saveClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-object p0

    .line 140
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->saveClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    goto :goto_0
.end method

.method public create()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 151
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;-><init>(Landroid/app/AlertDialog;Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;)V

    .line 152
    .local v0, "controller":Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->addCancelClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;

    .line 153
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->addSaveClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;

    .line 154
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->cancelClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    invoke-virtual {v2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->setController(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;)V

    .line 155
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->saveClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    invoke-virtual {v2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;->setController(Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Controller;)V

    .line 156
    return-object v1
.end method

.method protected initialiseDefaultProperties()V
    .locals 4

    .prologue
    .line 123
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSASaveFileDialog_title:I

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 124
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    const-string v2, "save"

    invoke-direct {v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->saveClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    .line 125
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    new-instance v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    const-string v2, "cancel"

    invoke-direct {v1, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->cancelClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    .line 126
    sget v0, Lnz/co/jsalibrary/android/R$string;->JSASaveFileDialog_save:I

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->saveClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    const/high16 v0, 0x1040000

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->cancelClickHandler:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$ClickHandler;

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lnz/co/jsalibrary/android/R$layout;->jsa__save_file_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->view:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 130
    return-void
.end method

.method public setStartingFileName(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$Builder;->mBuilderParams:Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;

    iput-object p1, v0, Lnz/co/jsalibrary/android/widget/dialog/JSASaveFileDialogUtil$BuilderParams;->startingFileName:Ljava/lang/String;

    .line 146
    return-object p0
.end method
