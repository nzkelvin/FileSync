.class public abstract Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "FileImageLoadHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler",
        "<TJobItem;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    .prologue
    .line 613
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.FileImageLoadHandler;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
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
    .line 616
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.FileImageLoadHandler;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFileWithException(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBitmap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.FileImageLoadHandler;"
    check-cast p1, Ljava/io/Serializable;

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;->getBitmap(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
