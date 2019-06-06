.class public Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;
.super Ljava/lang/Object;
.source "JSAFilePicker.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAFilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilePickerFilenameFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/JSAFilePicker;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    .prologue
    .line 361
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;->this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;->this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    iget v1, v1, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 366
    :goto_0
    return v1

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;->this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileFilterPattern:Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 366
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$FilePickerFilenameFilter;->this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->mFileFilterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method
