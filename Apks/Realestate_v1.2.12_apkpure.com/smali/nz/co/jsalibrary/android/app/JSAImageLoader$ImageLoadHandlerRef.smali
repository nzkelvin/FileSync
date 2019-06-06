.class Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadHandlerRef"
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
.field private mStronglyReferencedHandler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation
.end field

.field private mWeaklyReferencedHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Z)V
    .locals 1
    .param p2, "weaklyReferenceHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1305
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef<TJobItem;TImageSource;>;"
    .local p1, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;->mWeaklyReferencedHandler:Ljava/lang/ref/WeakReference;

    .line 1308
    :goto_0
    return-void

    .line 1307
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;->mStronglyReferencedHandler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ZLnz/co/jsalibrary/android/app/JSAImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    .prologue
    .line 1301
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef<TJobItem;TImageSource;>;"
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Z)V

    return-void
.end method

.method static synthetic access$2000(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;

    .prologue
    .line 1301
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;->getImageLoadHandler()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    return-object v0
.end method

.method private getImageLoadHandler()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation

    .prologue
    .line 1311
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;->mStronglyReferencedHandler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;->mStronglyReferencedHandler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;->mWeaklyReferencedHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    goto :goto_0
.end method
