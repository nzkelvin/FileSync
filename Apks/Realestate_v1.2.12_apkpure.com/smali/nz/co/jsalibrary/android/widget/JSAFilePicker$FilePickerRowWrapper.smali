.class public Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "JSAFilePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAFilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilePickerRowWrapper"
.end annotation


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 341
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;->mImageView:Landroid/widget/ImageView;

    .line 342
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;->mTextView:Landroid/widget/TextView;

    .line 343
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.example.project:id/textview must be included in the layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    return-void
.end method
