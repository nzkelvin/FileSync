.class public abstract Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageViewImageLoadHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        "ImageSource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
        "<TJobItem;TImageSource;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1664
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppliedJobItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TJobItem;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v2, 0x0

    .line 1688
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 1689
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    if-nez v3, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return-object v2

    .line 1690
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    .line 1691
    .local v0, "container":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer<TJobItem;>;"
    if-eqz v0, :cond_0

    .line 1692
    invoke-static {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;->access$2500(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getDesiredJobItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TJobItem;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v2, 0x0

    .line 1674
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 1675
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    if-nez v3, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return-object v2

    .line 1676
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    .line 1677
    .local v0, "container":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer<TJobItem;>;"
    if-eqz v0, :cond_0

    .line 1678
    invoke-static {v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;->access$2300(Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public setAppliedJobItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1696
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    .line 1697
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;->getDesiredJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1698
    .local v0, "desiredJobItem":Ljava/lang/Object;, "TJobItem;"
    new-instance v2, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1699
    return-void
.end method

.method public setBitmap(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
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
    .line 1668
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    .line 1669
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1670
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1671
    return-void
.end method

.method public setDesiredJobItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1682
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/lang/Object;, "TJobItem;"
    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    .line 1683
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewImageLoadHandler;->getAppliedJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1684
    .local v0, "appliedJobItem":Ljava/lang/Object;, "TJobItem;"
    new-instance v2, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageViewTagContainer;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1685
    return-void
.end method
