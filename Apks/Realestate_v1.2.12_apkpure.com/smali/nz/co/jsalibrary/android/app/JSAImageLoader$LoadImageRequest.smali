.class public Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LoadImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        "ImageSource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request",
        "<TJobItem;>;"
    }
.end annotation


# instance fields
.field private final mImageLoadHandlerRef:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation
.end field

.field private final mImageLoadListenerRef:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef",
            "<TJobItem;>;"
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

.field private final mTargetHashCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;)V
    .locals 1
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef",
            "<TJobItem;TImageSource;>;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    .local p3, "handlerRef":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef<TJobItem;TImageSource;>;"
    .local p4, "listenerRef":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef<TJobItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1125
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mJobItem:Ljava/lang/Object;

    .line 1126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1127
    iput-object p3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mImageLoadHandlerRef:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;

    .line 1128
    iput-object p4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mImageLoadListenerRef:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;

    .line 1129
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mTargetHashCode:I

    .line 1130
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;
    .param p4, "x3"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;
    .param p5, "x4"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    .prologue
    .line 1112
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;)V

    return-void
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .prologue
    .line 1112
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getImageLoadHandler()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .prologue
    .line 1112
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->getImageLoadListener()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

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
    .line 1141
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mImageLoadHandlerRef:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;

    invoke-static {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;->access$2000(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandlerRef;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

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
    .line 1145
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mImageLoadListenerRef:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;

    invoke-static {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;->access$2100(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListenerRef;)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    const/4 v1, 0x0

    .line 1149
    instance-of v2, p1, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    if-nez v2, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1150
    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;

    .line 1151
    .local v0, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mJobItem:Ljava/lang/Object;

    iget-object v3, v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mTargetHashCode:I

    iget v3, v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mTargetHashCode:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

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
    .line 1133
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mJobItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1137
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1155
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mTargetHashCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1159
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest<TJobItem;TImageSource;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadImage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mJobItem:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$LoadImageRequest;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
