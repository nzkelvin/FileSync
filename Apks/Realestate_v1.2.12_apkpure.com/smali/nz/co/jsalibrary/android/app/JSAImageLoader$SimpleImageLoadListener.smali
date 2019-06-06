.class public Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleImageLoadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
        "<TJobItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1903
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener<TJobItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppliedJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1915
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener<TJobItem;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    return-void
.end method

.method public onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1907
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener<TJobItem;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    return-void
.end method

.method public onDesiredJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1911
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener<TJobItem;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    return-void
.end method

.method public onFailure(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1919
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener<TJobItem;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    return-void
.end method
