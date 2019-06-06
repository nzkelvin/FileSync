.class public Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        "ImageSource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mJobItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJobItem;"
        }
    .end annotation
.end field

.field protected mStronglyReferencedHandler:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation
.end field

.field protected mToken:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeaklyReferencedHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Z)V
    .locals 1
    .param p2, "token"    # Ljava/lang/Object;
    .param p4, "weaklyReferenceHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 498
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    .line 499
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mToken:Ljava/lang/ref/WeakReference;

    .line 500
    if-eqz p4, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mWeaklyReferencedHandler:Ljava/lang/ref/WeakReference;

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_2
    iput-object p3, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mStronglyReferencedHandler:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    goto :goto_0
.end method


# virtual methods
.method public getImageLoadHandler()Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mStronglyReferencedHandler:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mStronglyReferencedHandler:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mWeaklyReferencedHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    goto :goto_0
.end method

.method public getJobItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TJobItem;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getToken()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mToken:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
