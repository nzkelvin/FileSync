.class Lnz/co/jsalibrary/android/app/JSAImageLoader$1;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;->setBitmap(Landroid/graphics/Bitmap;Ljava/io/Serializable;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$handler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

.field final synthetic val$jobItem:Ljava/io/Serializable;

.field final synthetic val$listener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Ljava/lang/Object;Ljava/io/Serializable;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;

    .prologue
    .line 758
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$1;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$1;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    iput-object p2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$handler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    iput-object p3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    iput-object p4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    iput-object p5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$listener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 760
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$1;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$1;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$handler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->getDesiredJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 761
    .local v1, "desiredJobItem":Ljava/io/Serializable;, "TJobItem;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$handler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->getAppliedJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 764
    .local v0, "appliedJobItem":Ljava/io/Serializable;, "TJobItem;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 765
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap for item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ignored, no longer desired for target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". desired item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 771
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap for item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ignored, already applied to target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_2
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap for item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set against target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$handler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 778
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$handler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    iget-object v5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v4, v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 779
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$listener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$listener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    iget-object v5, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v4, v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;->onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 780
    :cond_3
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$handler:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;->setAppliedJobItem(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 781
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$listener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$listener:Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$jobItem:Ljava/io/Serializable;

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$1;->val$target:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;->onAppliedJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
