.class public Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageViewImageLoadHandler;,
        Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoadHandler;,
        Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$FileImageLoader;,
        Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;,
        Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;,
        Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem::",
        "Ljava/io/Serializable;",
        "ImageSource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final BACKGROUND_ACTION_CLEAR:I = 0x1

.field protected static final DEFAULT_MAX_THREAD_COUNT:I = 0x3

.field public static final ITEM:Ljava/lang/String; = "item"

.field protected static sNextLoaderThreadId:I


# instance fields
.field protected mBackgroundAction:I

.field protected final mContext:Landroid/content/Context;

.field protected final mHoldingBayItemQueue:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation
.end field

.field protected final mHoldingBayLock:Ljava/lang/Object;

.field protected final mItemQueue:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation
.end field

.field protected final mJobClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TImageSource;>;>;"
        }
    .end annotation
.end field

.field protected final mJobItemBitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TJobItem;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mJobItemTokensCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TJobItem;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mLog:Z

.field protected mMaxThreadCount:I

.field protected final mThreadLock:Ljava/lang/Object;

.field protected final mThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader",
            "<TJobItem;TImageSource;>.Image",
            "LoaderThread;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTokenCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "TJobItem;>;"
        }
    .end annotation
.end field

.field protected final mTokenCacheLock:Ljava/lang/Object;

.field protected final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TImageSource;>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 155
    :cond_1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCache:Ljava/util/WeakHashMap;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCacheLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemTokensCache:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemBitmapCache:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreadLock:Ljava/lang/Object;

    .line 161
    const/4 v0, 0x3

    iput v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mMaxThreadCount:I

    .line 162
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayItemQueue:Ljava/util/Stack;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mItemQueue:Ljava/util/Stack;

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mUiThreadHandler:Landroid/os/Handler;

    .line 167
    iput-object p2, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobClass:Ljava/lang/Class;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_2
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mContext:Landroid/content/Context;

    .line 169
    return-void
.end method


# virtual methods
.method protected addItemToHoldingBay(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Z)V
    .locals 3
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
    .line 223
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "item":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null item set against token after immediate set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 226
    :goto_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayItemQueue:Ljava/util/Stack;

    new-instance v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    invoke-direct {v2, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Z)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->balanceThreads()V

    .line 231
    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item added to holding bay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected balanceThreads()V
    .locals 8

    .prologue
    .line 548
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v3, "newThreads":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;>;"
    iget-object v6, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v6

    .line 551
    :try_start_0
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v7, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mMaxThreadCount:I

    if-lt v5, v7, :cond_1

    monitor-exit v6

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mItemQueue:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    iget-object v7, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayItemQueue:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    add-int v2, v5, v7

    .line 553
    .local v2, "itemCount":I
    if-nez v2, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 560
    .end local v2    # "itemCount":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 554
    .restart local v2    # "itemCount":I
    :cond_2
    :try_start_1
    iget v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mMaxThreadCount:I

    iget-object v7, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 555
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 556
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->newThread()Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;

    move-result-object v4

    .line 557
    .local v4, "thread":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    .end local v4    # "thread":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;

    .line 563
    .restart local v4    # "thread":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    invoke-virtual {v4}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->start()V

    goto :goto_2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 465
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mBackgroundAction:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mBackgroundAction:I

    .line 466
    return-void
.end method

.method protected getBitmapFromQueueItemHandlers(Ljava/util/List;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem",
            "<TJobItem;TImageSource;>;>;TImageSource;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .local p2, "source":Ljava/lang/Object;, "TImageSource;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    .line 409
    .local v1, "queueItem":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->getImageLoadHandler()Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    .line 410
    .local v0, "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->getToken()Ljava/lang/Object;

    move-result-object v2

    .line 412
    .local v2, "token":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 413
    iget-object v3, v1, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    invoke-interface {v0, v3, v2, p2}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;->getBitmap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 416
    .end local v0    # "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .end local v1    # "queueItem":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .end local v2    # "token":Ljava/lang/Object;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized getItemFromQueueToLoad(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;)Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader",
            "<TJobItem;TImageSource;>.Image",
            "LoaderThread;",
            ")",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "thread":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mItemQueue:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getItemsWithValidTokens(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem",
            "<TJobItem;TImageSource;>;>;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    .line 448
    .local v0, "item":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    iget-object v5, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mToken:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 449
    .local v3, "token":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 450
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 451
    .local v1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    if-eqz v1, :cond_0

    .line 452
    iget-object v5, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 446
    .end local v0    # "item":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .end local v1    # "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .end local v3    # "token":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 455
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public getMaxThreadCount()I
    .locals 1

    .prologue
    .line 543
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mMaxThreadCount:I

    return v0
.end method

.method public loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;)Z
    .locals 1
    .param p2, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;)Z"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "item":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Z)Z

    move-result v0

    return v0
.end method

.method public loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Z)Z
    .locals 6
    .param p2, "token"    # Ljava/lang/Object;
    .param p4, "weaklyReferenceHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "item":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 195
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 196
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemBitmapCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 197
    .local v1, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 199
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_2

    .line 200
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 201
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p3, p1, p2, v0, v4}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;->setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 209
    :cond_3
    if-nez v0, :cond_6

    move-object v2, p1

    :goto_1
    invoke-virtual {p0, v2, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->addItemToHoldingBay(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Z)V

    .line 212
    if-eqz v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cached bitmap for item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set against token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 215
    :cond_4
    if-eqz v0, :cond_7

    move v2, v4

    :goto_2
    return v2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    move-object v0, v3

    .line 197
    goto :goto_0

    .line 202
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_6
    move-object v2, v3

    .line 209
    goto :goto_1

    .line 215
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 584
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mLog:Z

    if-nez v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected logThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 590
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mLog:Z

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected declared-synchronized moveItemsFromHoldingBay()V
    .locals 8

    .prologue
    .line 238
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayItemQueue:Ljava/util/Stack;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v4, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mHoldingBayItemQueue:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 243
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    .line 247
    .local v0, "queueItem":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    iget-object v5, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mToken:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 248
    .local v2, "token":Ljava/lang/Object;
    if-nez v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue item ignored in holding bay due to null token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 249
    :cond_1
    if-eqz v2, :cond_0

    .line 252
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    :try_start_3
    iget-object v6, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCache:Ljava/util/WeakHashMap;

    iget-object v7, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v6, v2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 257
    :try_start_4
    iget-object v5, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 260
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemTokensCache:Ljava/util/Map;

    iget-object v6, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 261
    .local v3, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v3    # "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    :cond_2
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemTokensCache:Ljava/util/Map;

    iget-object v6, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mItemQueue:Ljava/util/Stack;

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item moved from holding bay into item queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 238
    .end local v0    # "queueItem":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .end local v1    # "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .end local v2    # "token":Ljava/lang/Object;
    .end local v3    # "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 243
    .restart local v1    # "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 254
    .restart local v0    # "queueItem":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .restart local v2    # "token":Ljava/lang/Object;
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 271
    .end local v0    # "queueItem":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .end local v2    # "token":Ljava/lang/Object;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method protected newThread()Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader",
            "<TJobItem;TImageSource;>.Image",
            "LoaderThread;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;)V

    .line 569
    .local v0, "thread":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->setPriority(I)V

    .line 570
    return-object v0
.end method

.method protected declared-synchronized processBackgroundActions()V
    .locals 1

    .prologue
    .line 474
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mBackgroundAction:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 484
    :goto_0
    monitor-exit p0

    return-void

    .line 476
    :cond_0
    :try_start_1
    iget v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mBackgroundAction:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 477
    const-string v0, "image loader cleared"

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 479
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemTokensCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 480
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mItemQueue:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 483
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mBackgroundAction:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized pullItemsFromQueue(Ljava/io/Serializable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v2, "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    iget-object v3, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mItemQueue:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 428
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    .line 430
    .local v0, "item":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    iget-object v3, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 426
    .end local v0    # "item":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .end local v2    # "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 435
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .restart local v2    # "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public setLogging(Z)V
    .locals 0
    .param p1, "log"    # Z

    .prologue
    .line 579
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mLog:Z

    .line 580
    return-void
.end method

.method public setMaxThreadCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 532
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>;"
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 534
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_0
    iput p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mMaxThreadCount:I

    .line 536
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->balanceThreads()V

    .line 539
    return-void

    .line 536
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
