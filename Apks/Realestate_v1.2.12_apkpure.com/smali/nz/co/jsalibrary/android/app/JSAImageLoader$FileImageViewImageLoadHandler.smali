.class public Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileImageViewImageLoadHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler",
        "<TJobItem;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1863
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler<TJobItem;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/Object;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/io/File;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1866
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler<TJobItem;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFileWithException(Ljava/io/File;I)Landroid/graphics/Bitmap;

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
    .line 1863
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler<TJobItem;>;"
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;->getBitmap(Ljava/lang/Object;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
