.class public Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
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
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader",
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
    .line 1646
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader<TJobItem;>;"
    .local p2, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<Ljava/io/File;>;>;"
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1647
    return-void
.end method


# virtual methods
.method protected getImageViewImageLoadHandler(ZJJ)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .locals 2
    .param p1, "fade"    # Z
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJ)",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1650
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader<TJobItem;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileCrossFadeImageViewImageLoadHandler;

    invoke-direct {v0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileCrossFadeImageViewImageLoadHandler;-><init>(JJ)V

    .line 1651
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;-><init>()V

    goto :goto_0
.end method
