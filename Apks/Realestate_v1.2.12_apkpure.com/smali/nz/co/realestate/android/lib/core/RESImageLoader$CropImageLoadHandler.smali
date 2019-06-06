.class final Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$FileCrossFadeImageViewImageLoadHandler;
.source "RESImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/core/RESImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CropImageLoadHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileCrossFadeImageViewImageLoadHandler",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRatioHeight:I

.field private final mCropRatioWidth:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "cropRatioWidth"    # I
    .param p2, "cropRatioHeight"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;-><init>(IIZ)V

    .line 129
    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 4
    .param p1, "cropRatioWidth"    # I
    .param p2, "cropRatioHeight"    # I
    .param p3, "fadeIn"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 132
    if-eqz p3, :cond_1

    const-wide/16 v2, 0x64

    :goto_0
    if-eqz p3, :cond_0

    const-wide/16 v0, 0x258

    :cond_0
    invoke-direct {p0, v2, v3, v0, v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileCrossFadeImageViewImageLoadHandler;-><init>(JJ)V

    .line 134
    iput p1, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;->mCropRatioWidth:I

    .line 135
    iput p2, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;->mCropRatioHeight:I

    .line 136
    return-void

    :cond_1
    move-wide v2, v0

    .line 132
    goto :goto_0
.end method

.method synthetic constructor <init>(IIZLnz/co/realestate/android/lib/core/RESImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lnz/co/realestate/android/lib/core/RESImageLoader$1;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBitmap(Ljava/lang/Object;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;->getBitmap(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBitmap(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;->getBitmap(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileCrossFadeImageViewImageLoadHandler;->getBitmap(Ljava/lang/Object;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;->mCropRatioWidth:I

    iget v2, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;->mCropRatioHeight:I

    invoke-static {v0, v1, v2}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->cropBitmapToRatio(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
