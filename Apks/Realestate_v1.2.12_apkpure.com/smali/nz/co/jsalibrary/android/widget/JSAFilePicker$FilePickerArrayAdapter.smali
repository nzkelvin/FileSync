.class public Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "JSAFilePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAFilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilePickerArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Ljava/io/File;",
        "Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDirectoryImageResource:I

.field protected mFileImageResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p4, "fileImageResource"    # I
    .param p5, "directoryImageResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-class v0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;

    invoke-direct {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 322
    iput p4, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->mFileImageResource:I

    .line 323
    iput p5, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->mDirectoryImageResource:I

    .line 324
    return-void
.end method


# virtual methods
.method protected updateRow(Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;Ljava/io/File;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;
    .param p2, "item"    # Ljava/io/File;

    .prologue
    .line 327
    iget-object v0, p1, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->mDirectoryImageResource:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :cond_0
    iget-object v0, p1, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void

    .line 327
    :cond_1
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->mFileImageResource:I

    goto :goto_0
.end method

.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerArrayAdapter;->updateRow(Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerRowWrapper;Ljava/io/File;)V

    return-void
.end method
