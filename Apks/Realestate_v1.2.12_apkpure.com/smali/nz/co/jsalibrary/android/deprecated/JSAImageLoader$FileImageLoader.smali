.class public Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoader;
.super Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem::",
        "Ljava/io/Serializable;",
        ">",
        "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader",
        "<TJobItem;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoader<TJobItem;>;"
    .local p2, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<Ljava/io/File;>;>;"
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    return-void
.end method


# virtual methods
.method public loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;)Z
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Landroid/widget/ImageView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoader<TJobItem;>;"
    .local p1, "item":Ljava/io/Serializable;, "TJobItem;"
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;)V

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoader;->loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;)Z

    move-result v0

    return v0
.end method
