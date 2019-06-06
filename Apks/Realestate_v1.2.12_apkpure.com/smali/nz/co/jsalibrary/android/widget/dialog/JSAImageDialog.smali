.class public Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "JSAImageDialog.java"


# instance fields
.field protected mImageResourceId:I

.field protected mImageView:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;I)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    .prologue
    .line 58
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->setImageResourceId(I)Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;

    .line 61
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ILnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 65
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;

    invoke-direct {v0, p0, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 66
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->setImageResourceId(I)Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;

    .line 68
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 78
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lnz/co/jsalibrary/android/R$layout;->jsa__image_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, "view":Landroid/view/View;
    sget v3, Lnz/co/jsalibrary/android/R$id;->imageview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageView:Landroid/widget/ImageView;

    .line 80
    iget v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageResourceId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageView:Landroid/widget/ImageView;

    iget v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageResourceId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :cond_0
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->setView(Landroid/view/View;)V

    .line 83
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public setImageResourceId(I)Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 91
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageResourceId:I

    if-ne p1, v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object p0

    .line 92
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageResourceId:I

    .line 93
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAImageDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
