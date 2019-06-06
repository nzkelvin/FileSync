.class Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$handler:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

.field final synthetic val$item:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

.field final synthetic val$token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;

    .prologue
    .line 386
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->this$1:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;

    iput-object p2, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$handler:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    iput-object p3, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$item:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    iput-object p4, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$token:Ljava/lang/Object;

    iput-object p5, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 388
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$handler:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$item:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    iget-object v1, v1, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$token:Ljava/lang/Object;

    iget-object v3, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;->setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 389
    return-void
.end method
