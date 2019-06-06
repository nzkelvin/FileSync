.class public Lnz/co/jsalibrary/android/app/JSAImageLoader;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$FileCrossFadeImageViewImageLoadHandler;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoadHandler;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewRunnable;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$CrossFadeImageViewImageLoadHandler;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;,
        Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;
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


# static fields
.field private static final BACKGROUND_ACTION_CLEAR:I = 0x1

.field public static final DEBUG:Z = false

.field private static final DEFAULT_MAX_THREAD_COUNT:I = 0x3

.field public static final ITEM:Ljava/lang/String; = "item"

.field private static sNextLoaderThreadId:I


# instance fields
.field private mBackgroundActions:I

.field private final mContext:Landroid/content/Context;

.field private final mHoldingBayRequests:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request",
            "<TJobItem;>;>;"
        }
    .end annotation
.end field

.field private final mJobClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TImageSource;>;>;"
        }
    .end annotation
.end field

.field private final mJobItemBitmapCache:Ljava/util/Map;
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

.field private final mJobItemRequestsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TJobItem;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest",
            "<TJobItem;TImageSource;>;>;>;"
        }
    .end annotation
.end field

.field private final mLoadingRequests:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation
.end field

.field private mLog:Z

.field private final mMasterThread:Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/app/JSAImageLoader",
            "<TJobItem;TImageSource;>.MasterThread;"
        }
    .end annotation
.end field

.field private final mMasterThreadLock:Ljava/lang/Object;

.field private mMaxThreadCount:I

.field private mRunningThreadCount:I

.field private final mTargetJobItemCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "TJobItem;>;"
        }
    .end annotation
.end field

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private final mUnloadedRequests:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation
.end field

.field private final mWaitLock:Ljava/lang/Object;

.field private mWakeLockNotified:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
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
    .line 311
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mWaitLock:Ljava/lang/Object;

    .line 317
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mTargetJobItemCache:Ljava/util/WeakHashMap;

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemRequestsCache:Ljava/util/Map;

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemBitmapCache:Ljava/util/Map;

    .line 321
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mHoldingBayRequests:Ljava/util/Stack;

    .line 322
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    .line 323
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    .line 325
    const/4 v0, 0x3

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMaxThreadCount:I

    .line 326
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUiThreadHandler:Landroid/os/Handler;

    .line 328
    iput-object p2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobClass:Ljava/lang/Class;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_2
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mContext:Landroid/content/Context;

    .line 331
    new-instance v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThread:Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;

    .line 332
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThread:Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->start()V

    .line 333
    return-void
.end method

.method static synthetic access$1000(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->moveRequstsFromHoldingBay()V

    return-void
.end method

.method static synthetic access$1100(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->startRequiredThreads()V

    return-void
.end method

.method static synthetic access$1200(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mWaitLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mWakeLockNotified:Z

    return v0
.end method

.method static synthetic access$1302(Lnz/co/jsalibrary/android/app/JSAImageLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mWakeLockNotified:Z

    return p1
.end method

.method static synthetic access$1400(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1500(Lnz/co/jsalibrary/android/app/JSAImageLoader;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mRunningThreadCount:I

    return v0
.end method

.method static synthetic access$1502(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;
    .param p1, "x1"    # I

    .prologue
    .line 228
    iput p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mRunningThreadCount:I

    return p1
.end method

.method static synthetic access$1600(Lnz/co/jsalibrary/android/app/JSAImageLoader;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMaxThreadCount:I

    return v0
.end method

.method static synthetic access$1700(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1800(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->loadNextUnloadedImage(I)V

    return-void
.end method

.method static synthetic access$1900(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->notifyMasterThread()V

    return-void
.end method

.method static synthetic access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 228
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->processBackgroundActions()V

    return-void
.end method

.method private addItemToHoldingBay(Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request added to holding bay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mHoldingBayRequests:Ljava/util/Stack;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mHoldingBayRequests:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->notifyMasterThread()V

    .line 562
    return-void

    .line 559
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getBitmapForJobItem(Ljava/io/Serializable;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;TImageSource;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p2, "source":Ljava/lang/Object;, "TImageSource;"
    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemRequestsCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1009
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 1010
    .local v1, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->access$500(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    .line 1011
    .local v0, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    if-eqz v0, :cond_0

    .line 1012
    invoke-direct {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->getBitmapFromHandler(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Ljava/io/Serializable;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1015
    .end local v0    # "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .end local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getBitmapFromHandler(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Ljava/io/Serializable;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;TJobItem;TImageSource;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .local p2, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "source":Ljava/lang/Object;, "TImageSource;"
    :try_start_0
    invoke-interface {p1, p2, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->getBitmap(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1023
    :goto_0
    return-object v1

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->catchOutOfMemoryError(Ljava/io/Serializable;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    .line 1023
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isBitmapResampledIdentically(Ljava/io/Serializable;Ljava/io/Serializable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;TJobItem;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "i1":Ljava/io/Serializable;, "TJobItem;"
    .local p2, "i2":Ljava/io/Serializable;, "TJobItem;"
    const/4 v3, 0x0

    .line 1380
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1381
    :cond_1
    instance-of v2, p1, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;

    move-object v0, v2

    .line 1382
    .local v0, "r1":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :goto_0
    instance-of v2, p2, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;

    move-object v1, v2

    .line 1383
    .local v1, "r2":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    const/4 v2, 0x1

    .line 1385
    :goto_2
    return v2

    .end local v0    # "r1":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    .end local v1    # "r2":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :cond_2
    move-object v0, v3

    .line 1381
    goto :goto_0

    .restart local v0    # "r1":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :cond_3
    move-object v1, v3

    .line 1382
    goto :goto_1

    .line 1384
    .restart local v1    # "r2":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;->isBitmapResampledIdentically(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    .line 1385
    :cond_5
    invoke-interface {v1, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;->isBitmapResampledIdentically(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2
.end method

.method private isJobItemLoadRequired(Ljava/io/Serializable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;)Z"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemRequestsCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 989
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 990
    .local v0, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 991
    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 992
    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mTargetJobItemCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 995
    .end local v0    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    .end local v2    # "target":Ljava/lang/Object;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isJobItemUnloadedOrLoading(Ljava/io/Serializable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    const/4 v1, 0x1

    .line 711
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 712
    .local v0, "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    .end local v0    # "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :goto_0
    return v1

    .line 713
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 714
    .restart local v0    # "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 715
    .end local v0    # "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRequestUnloadedOrLoading(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest",
            "<TJobItem;TImageSource;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    const/4 v1, 0x1

    .line 693
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 694
    .local v0, "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    .end local v0    # "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :goto_0
    return v1

    .line 695
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 696
    .restart local v0    # "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 697
    .end local v0    # "item":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadNextUnloadedImage(I)V
    .locals 11
    .param p1, "threadId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 909
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    monitor-enter v8

    .line 912
    :try_start_0
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    invoke-virtual {p0, v7, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->pullItemFromQueueToLoad(Ljava/util/Stack;I)Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    move-result-object v5

    .line 915
    .local v5, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->isJobItemLoadRequired(Ljava/io/Serializable;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 916
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "job item load not required: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 917
    monitor-exit v8

    .line 974
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-virtual {v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;

    .line 924
    .local v4, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v7, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading request added: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", loading request count: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 926
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 931
    :try_start_1
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobClass:Ljava/lang/Class;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 932
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 933
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 934
    .local v3, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 935
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "item"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 938
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "job executed for job item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 941
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUiThreadHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-interface {v3, v7, v1, v8, v9}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;

    move-result-object v6

    .line 944
    .local v6, "source":Ljava/lang/Object;, "TImageSource;"
    if-nez v6, :cond_2

    .line 945
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "job ignored due to null source: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 968
    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    monitor-enter v8

    .line 969
    if-nez v5, :cond_1

    :try_start_2
    monitor-exit v8

    goto/16 :goto_0

    .line 972
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 926
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .end local v3    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .end local v4    # "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .end local v5    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    .end local v6    # "source":Ljava/lang/Object;, "TImageSource;"
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 970
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .restart local v3    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .restart local v4    # "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .restart local v5    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    .restart local v6    # "source":Ljava/lang/Object;, "TImageSource;"
    :cond_1
    :try_start_4
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v7, v5}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 971
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading request removed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", loading request count: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 972
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 949
    :cond_2
    :try_start_5
    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 952
    :try_start_6
    invoke-direct {p0, v4, v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->getBitmapForJobItem(Ljava/io/Serializable;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 955
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "job ignored do to null bitmap: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 957
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 968
    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    monitor-enter v8

    .line 969
    if-nez v5, :cond_3

    :try_start_7
    monitor-exit v8

    goto/16 :goto_0

    .line 972
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v7

    .line 970
    :cond_3
    :try_start_8
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v7, v5}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 971
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading request removed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", loading request count: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 972
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    .line 961
    :cond_4
    :try_start_9
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemBitmapCache:Ljava/util/Map;

    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    invoke-direct {p0, v0, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->setBitmap(Landroid/graphics/Bitmap;Ljava/io/Serializable;)V

    .line 965
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 968
    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    monitor-enter v8

    .line 969
    if-nez v5, :cond_5

    :try_start_a
    monitor-exit v8

    goto/16 :goto_0

    .line 972
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v7

    .line 965
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_4
    move-exception v7

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 968
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .end local v3    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .end local v6    # "source":Ljava/lang/Object;, "TImageSource;"
    :catchall_5
    move-exception v7

    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMasterThreadLock:Ljava/lang/Object;

    monitor-enter v8

    .line 969
    if-nez v5, :cond_6

    :try_start_d
    monitor-exit v8

    goto/16 :goto_0

    .line 972
    :catchall_6
    move-exception v7

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v7

    .line 970
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .restart local v3    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .restart local v6    # "source":Ljava/lang/Object;, "TImageSource;"
    :cond_5
    :try_start_e
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v7, v5}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 971
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading request removed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", loading request count: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 972
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_0

    .line 970
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .end local v3    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .end local v6    # "source":Ljava/lang/Object;, "TImageSource;"
    :cond_6
    :try_start_f
    iget-object v9, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v9, v5}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 971
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loading request removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", loading request count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLoadingRequests:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 972
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v7
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1440
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLog:Z

    if-nez v0, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1441
    :cond_0
    invoke-static {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->logInner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1446
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLog:Z

    if-nez v0, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1447
    :cond_0
    invoke-static {p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->logInner(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static logInner(Ljava/lang/String;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1452
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "threadName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/app/JSAImageLoader;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1454
    return-void
.end method

.method private static logInner(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1458
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, "threadName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/app/JSAImageLoader;

    aput-object v4, v2, v3

    invoke-static {v1, p1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 1460
    return-void
.end method

.method private moveRequestFromHoldingBay(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest",
            "<TJobItem;TImageSource;>;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getTarget()Ljava/lang/Object;

    move-result-object v5

    .line 611
    .local v5, "target":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request ignored, null target: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 656
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mTargetJobItemCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/Serializable;

    .line 620
    .local v8, "targetJobItem":Ljava/io/Serializable;, "TJobItem;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request for item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ignored, later item set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemBitmapCache:Ljava/util/Map;

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 627
    .local v6, "bitmapref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 628
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v1, :cond_3

    .line 629
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-static {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->access$500(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v3

    invoke-static {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->access$600(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->setBitmap(Landroid/graphics/Bitmap;Ljava/io/Serializable;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 627
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 634
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemRequestsCache:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 637
    .local v7, "jobItemRequests":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;>;"
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->isRequestUnloadedOrLoading(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request ignored, identical request unloaded or loading: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :cond_4
    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "jobItemRequests":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .restart local v7    # "jobItemRequests":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;>;"
    :cond_5
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemRequestsCache:Ljava/util/Map;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    invoke-direct {p0, v8}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->isJobItemUnloadedOrLoading(Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request not moved to unloaded, identical job item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item moved from holding bay into item queue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private moveRequestFromHoldingBay(Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 666
    .local v0, "target":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request ignored, null target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mTargetJobItemCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 675
    .local v1, "targetJobItem":Ljava/io/Serializable;, "TJobItem;"
    if-eqz v1, :cond_0

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request ignored, later target set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private moveRequstsFromHoldingBay()V
    .locals 9

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    const/4 v6, 0x0

    .line 576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;>;"
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mHoldingBayRequests:Ljava/util/Stack;

    monitor-enter v7

    .line 580
    :try_start_0
    iget-object v5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mHoldingBayRequests:Ljava/util/Stack;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 581
    iget-object v5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mHoldingBayRequests:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    .line 582
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->removeDuplicatesInPlace(Ljava/util/Collection;Z)V

    .line 588
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;

    .line 589
    .local v1, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    invoke-interface {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;->getTarget()Ljava/lang/Object;

    move-result-object v3

    .line 590
    .local v3, "target":Ljava/lang/Object;
    if-nez v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request ignored, null target: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 582
    .end local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    .end local v3    # "target":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 591
    .restart local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    .restart local v3    # "target":Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mTargetJobItemCache:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;->getJobItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 595
    .end local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    .end local v3    # "target":Ljava/lang/Object;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;

    .line 596
    .restart local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    instance-of v5, v1, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;

    move-object v4, v5

    .line 597
    .local v4, "unload":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    :goto_2
    instance-of v5, v1, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    if-eqz v5, :cond_3

    check-cast v1, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .end local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    move-object v0, v1

    .line 598
    .local v0, "load":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :goto_3
    if-eqz v4, :cond_4

    invoke-direct {p0, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->moveRequestFromHoldingBay(Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;)V

    goto :goto_1

    .end local v0    # "load":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    .end local v4    # "unload":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    .restart local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    :cond_2
    move-object v4, v6

    .line 596
    goto :goto_2

    .restart local v4    # "unload":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    :cond_3
    move-object v0, v6

    .line 597
    goto :goto_3

    .line 599
    .end local v1    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request<TJobItem;>;"
    .restart local v0    # "load":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :cond_4
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->moveRequestFromHoldingBay(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)V

    goto :goto_1

    .line 601
    .end local v0    # "load":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    .end local v4    # "unload":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    :cond_5
    return-void
.end method

.method private newImageLoaderThread()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader",
            "<TJobItem;TImageSource;>.Image",
            "LoaderThread;"
        }
    .end annotation

    .prologue
    .line 1425
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    new-instance v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;

    sget v1, Lnz/co/jsalibrary/android/app/JSAImageLoader;->sNextLoaderThreadId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lnz/co/jsalibrary/android/app/JSAImageLoader;->sNextLoaderThreadId:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;ILnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    .line 1426
    .local v0, "thread":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    return-object v0
.end method

.method private notifyMasterThread()V
    .locals 2

    .prologue
    .line 539
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mWaitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mWakeLockNotified:Z

    .line 541
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processBackgroundActions()V
    .locals 1

    .prologue
    .line 1082
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mBackgroundActions:I

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mBackgroundActions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1085
    const-string v0, "image loader cleared"

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mTargetJobItemCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1087
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemRequestsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1088
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 1091
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mBackgroundActions:I

    goto :goto_0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;Ljava/io/Serializable;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "TJobItem;)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mJobItemRequestsCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 730
    .local v7, "requests":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 731
    .local v6, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-virtual {v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getTarget()Ljava/lang/Object;

    move-result-object v5

    .line 732
    .local v5, "target":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 733
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mTargetJobItemCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getJobItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-static {v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->access$500(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v3

    invoke-static {v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->access$600(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->setBitmap(Landroid/graphics/Bitmap;Ljava/io/Serializable;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 736
    .end local v5    # "target":Ljava/lang/Object;
    .end local v6    # "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    :cond_1
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;Ljava/io/Serializable;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Ljava/lang/Object;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "TJobItem;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .local p4, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    if-nez p3, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmap for item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scheduled to set against target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 754
    instance-of v0, p2, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;

    move-object v7, v0

    .line 755
    .local v7, "resampler":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;->resampleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 758
    .local v5, "finalBitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v8, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Ljava/lang/Object;Ljava/io/Serializable;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 754
    .end local v5    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "resampler":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "resampler":Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler<TJobItem;>;"
    :cond_3
    move-object v5, p1

    .line 755
    goto :goto_2
.end method

.method private startRequiredThreads()V
    .locals 6

    .prologue
    .line 1408
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mRunningThreadCount:I

    iget v5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMaxThreadCount:I

    if-lt v4, v5, :cond_1

    .line 1417
    :cond_0
    return-void

    .line 1409
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mUnloadedRequests:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1410
    .local v2, "itemCount":I
    if-eqz v2, :cond_0

    .line 1411
    iget v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMaxThreadCount:I

    iget v5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mRunningThreadCount:I

    sub-int/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1412
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1413
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->newImageLoaderThread()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;

    move-result-object v3

    .line 1414
    .local v3, "thread":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    iget v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mRunningThreadCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mRunningThreadCount:I

    .line 1415
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->start()V

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected catchOutOfMemoryError(Ljava/io/Serializable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;)Z"
        }
    .end annotation

    .prologue
    .line 1040
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1063
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mBackgroundActions:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mBackgroundActions:I

    .line 1064
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->notifyMasterThread()V

    .line 1065
    return-void
.end method

.method public getMaxThreadCount()I
    .locals 1

    .prologue
    .line 1401
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMaxThreadCount:I

    return v0
.end method

.method public loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;)V
    .locals 1
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Z)V

    .line 346
    return-void
.end method

.method public loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Z)V
    .locals 7
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "weaklyReferenceHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ZLnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 358
    return-void
.end method

.method public loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ZLnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V
    .locals 7
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "weaklyReferenceHandler"    # Z
    .param p6, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;Z",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .local p5, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const/4 v5, 0x0

    .line 375
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 378
    :cond_1
    invoke-interface {p3, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->getAppliedJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;

    .line 379
    .local v6, "appliedJobItem":Ljava/io/Serializable;, "TJobItem;"
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->isBitmapResampledIdentically(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_2
    invoke-interface {p3, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->setDesiredJobItem(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    new-instance v3, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;

    invoke-direct {v3, p3, p4, v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ZLnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    .line 386
    .local v3, "handlerRef":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef<TJobItem;TImageSource;>;"
    new-instance v4, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;

    invoke-direct {v4, p5, p6, v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZLnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    .line 387
    .local v4, "listenerRef":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef<TJobItem;>;"
    new-instance v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    .line 388
    .local v0, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->addItemToHoldingBay(Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;)V

    goto :goto_0
.end method

.method protected pullItemFromQueueToLoad(Ljava/util/Stack;I)Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;
    .locals 1
    .param p2, "threadId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest",
            "<TJobItem;TImageSource;>;>;I)",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p1, "unloadedItems":Ljava/util/Stack;, "Ljava/util/Stack<Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;>;"
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    return-object v0
.end method

.method public setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;I)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;I)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 494
    return-void
.end method

.method public setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;I",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .local p4, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const/4 v5, 0x0

    .line 509
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 512
    :cond_1
    invoke-interface {p2, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->getDesiredJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 531
    :cond_2
    :goto_0
    return-void

    .line 515
    :cond_3
    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 516
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 519
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 520
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 521
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set default image against target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 527
    invoke-interface {p2, v5, p1, v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 530
    if-eqz p4, :cond_2

    invoke-interface {p4, v5, p1, v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;->onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 450
    return-void
.end method

.method public setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;",
            "Landroid/graphics/Bitmap;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .local p4, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const/4 v2, 0x0

    .line 465
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 468
    :cond_1
    invoke-interface {p2, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->getDesiredJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 478
    :cond_2
    :goto_0
    return-void

    .line 471
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set default image against target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " using handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->log(Ljava/lang/String;)V

    .line 474
    invoke-interface {p2, v2, p1, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 477
    if-eqz p4, :cond_2

    invoke-interface {p4, v2, p1, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;->onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setLogging(Z)V
    .locals 0
    .param p1, "log"    # Z

    .prologue
    .line 1435
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mLog:Z

    .line 1436
    return-void
.end method

.method public setMaxThreadCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1394
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1395
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader;->mMaxThreadCount:I

    .line 1396
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->notifyMasterThread()V

    .line 1397
    return-void
.end method

.method public unloadTarget(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->unloadTarget(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 403
    return-void
.end method

.method public unloadTarget(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>;"
    .local p2, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const/4 v1, 0x0

    .line 413
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 416
    :cond_1
    invoke-interface {p2, v1, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->setDesiredJobItem(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    if-eqz p3, :cond_2

    invoke-interface {p3, v1, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;->onDesiredJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    :cond_2
    invoke-interface {p2, v1, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->setAppliedJobItem(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    if-eqz p3, :cond_3

    invoke-interface {p3, v1, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;->onAppliedJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    :cond_3
    new-instance v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;

    invoke-direct {v0, p1, v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;-><init>(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    .line 429
    .local v0, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->addItemToHoldingBay(Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;)V

    .line 430
    return-void
.end method
