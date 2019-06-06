.class Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadListenerRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mStronglyReferencedListener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;"
        }
    .end annotation
.end field

.field private mWeaklyReferencedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V
    .locals 1
    .param p2, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef<TJobItem;>;"
    .local p1, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->mWeaklyReferencedListener:Ljava/lang/ref/WeakReference;

    .line 1346
    :goto_0
    return-void

    .line 1345
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->mStronglyReferencedListener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZLnz/co/jsalibrary/android/app/JSAImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    .prologue
    .line 1339
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef<TJobItem;>;"
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    return-void
.end method

.method static synthetic access$2100(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;

    .prologue
    .line 1339
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->getImageLoadListener()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    move-result-object v0

    return-object v0
.end method

.method private getImageLoadListener()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef<TJobItem;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->mStronglyReferencedListener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->mStronglyReferencedListener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    .line 1351
    :goto_0
    return-object v0

    .line 1350
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->mWeaklyReferencedListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1351
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->mWeaklyReferencedListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    goto :goto_0
.end method
