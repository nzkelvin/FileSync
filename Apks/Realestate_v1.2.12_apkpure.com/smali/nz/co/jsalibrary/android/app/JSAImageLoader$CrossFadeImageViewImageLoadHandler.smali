.class public abstract Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CrossFadeImageViewImageLoadHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        "ImageSource:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler",
        "<TJobItem;TImageSource;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_DELAY:J = 0x64L

.field protected static final DEFAULT_DURATION:J = 0x258L


# instance fields
.field private final mFadeDelay:J

.field private final mFadeDuration:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 1737
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    const-wide/16 v0, 0x64

    const-wide/16 v2, 0x258

    invoke-direct {p0, v0, v1, v2, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;-><init>(JJ)V

    .line 1738
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 1740
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;-><init>()V

    .line 1741
    iput-wide p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;->mFadeDelay:J

    .line 1742
    iput-wide p3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;->mFadeDuration:J

    .line 1743
    return-void
.end method


# virtual methods
.method public setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 10
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
    .line 1747
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    if-nez p3, :cond_1

    .line 1764
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v8, p2

    .line 1748
    check-cast v8, Landroid/widget/ImageView;

    .line 1749
    .local v8, "imageView":Landroid/widget/ImageView;
    if-eqz v8, :cond_0

    .line 1751
    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1752
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 1754
    .local v9, "uiThreadHandler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 1761
    new-instance v1, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;

    iget-wide v6, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;->mFadeDuration:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;J)V

    .line 1762
    .local v1, "runnable":Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable<TJobItem;TImageSource;>;"
    iget-wide v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;->mFadeDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;->mFadeDelay:J

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1763
    :cond_2
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->run()V

    goto :goto_0
.end method
