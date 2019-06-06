.class public Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrossFadeImageViewRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        "ImageSource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mDuration:J

.field private final mImageLoadHandler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation
.end field

.field private final mJobItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJobItem;"
        }
    .end annotation
.end field

.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;J)V
    .locals 1
    .param p3, "target"    # Ljava/lang/Object;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;TJobItem;",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1785
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable<TJobItem;TImageSource;>;"
    .local p1, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .local p2, "jobItem":Ljava/lang/Object;, "TJobItem;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1787
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mImageLoadHandler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    .line 1788
    iput-object p2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mJobItem:Ljava/lang/Object;

    .line 1789
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1790
    iput-object p4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1791
    iput-wide p5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mDuration:J

    .line 1792
    return-void
.end method


# virtual methods
.method protected getInitialDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 1829
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable<TJobItem;TImageSource;>;"
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 1830
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1831
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 1834
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 1832
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    .line 1833
    .local v2, "td":Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1832
    .end local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1834
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0xffffff

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable<TJobItem;TImageSource;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1795
    iget-object v6, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 1798
    .local v4, "target":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v4

    .line 1803
    check-cast v1, Landroid/widget/ImageView;

    .line 1804
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mImageLoadHandler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    invoke-interface {v6, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->getDesiredJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1807
    .local v0, "desiredJobItem":Ljava/lang/Object;, "TJobItem;"
    iget-object v6, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1814
    invoke-virtual {p0, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->getInitialDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1815
    .local v2, "initialDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v9

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v3, v10

    .line 1816
    .local v3, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1817
    .local v5, "transition":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 1823
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1824
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1825
    iget-wide v6, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;->mDuration:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0
.end method
