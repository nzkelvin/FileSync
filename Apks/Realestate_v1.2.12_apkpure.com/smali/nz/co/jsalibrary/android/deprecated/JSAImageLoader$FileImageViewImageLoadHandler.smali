.class public Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;
.super Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FileImageViewImageLoadHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader",
        "<TJobItem;TImageSource;>.FileImage",
        "LoadHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    .prologue
    .line 624
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.FileImageViewImageLoadHandler;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;)V

    return-void
.end method


# virtual methods
.method public setBitmap(Ljava/io/Serializable;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "immediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.FileImageViewImageLoadHandler;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "token":Ljava/lang/Object;
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 628
    return-void
.end method

.method public bridge synthetic setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 624
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.FileImageViewImageLoadHandler;"
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;->setBitmap(Ljava/io/Serializable;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
