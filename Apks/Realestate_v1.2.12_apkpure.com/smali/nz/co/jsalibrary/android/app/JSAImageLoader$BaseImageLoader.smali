.class public abstract Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem::",
        "Ljava/io/Serializable;",
        "ImageSource:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader",
        "<TJobItem;TImageSource;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
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
    .line 1474
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p2, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1475
    return-void
.end method


# virtual methods
.method protected getImageViewImageLoadHandler()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    const-wide/16 v2, 0x0

    .line 1630
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->getImageViewImageLoadHandler(ZJJ)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getImageViewImageLoadHandler(ZJJ)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJ)",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler",
            "<TJobItem;TImageSource;>;"
        }
    .end annotation
.end method

.method public loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "target"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1483
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 1484
    return-void
.end method

.method public loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 1
    .param p2, "target"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Landroid/widget/ImageView;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .line 1494
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 1495
    return-void
.end method

.method public loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V
    .locals 10
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p4, "fade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Landroid/widget/ImageView;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1514
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const-wide/16 v6, 0x64

    .line 1515
    .local v6, "defaultDelay":J
    const-wide/16 v8, 0x258

    .local v8, "defaultDuration":J
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1516
    invoke-virtual/range {v1 .. v9}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V

    .line 1517
    return-void
.end method

.method public loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V
    .locals 7
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p4, "fade"    # Z
    .param p5, "delay"    # J
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Landroid/widget/ImageView;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;ZJJ)V"
        }
    .end annotation

    .prologue
    .line 1532
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    move-object v0, p0

    move v1, p4

    move-wide v2, p5

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->getImageViewImageLoadHandler(ZJJ)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ZLnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 1533
    return-void
.end method

.method public loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Z)V
    .locals 1
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "fade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Landroid/widget/ImageView;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1503
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    invoke-virtual {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 1504
    return-void
.end method

.method public loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;ZJJ)V
    .locals 10
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "fade"    # Z
    .param p4, "delay"    # J
    .param p6, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;",
            "Landroid/widget/ImageView;",
            "ZJJ)V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p1, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V

    .line 1522
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "resourceId"    # I

    .prologue
    .line 1592
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 1593
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "I",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .line 1597
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 1598
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V
    .locals 10
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "resourceId"    # I
    .param p4, "fade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "I",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1611
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const-wide/16 v6, 0x64

    .line 1612
    .local v6, "defaultDelay":J
    const-wide/16 v8, 0x258

    .local v8, "defaultDuration":J
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 1613
    invoke-virtual/range {v1 .. v9}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V

    .line 1614
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "resourceId"    # I
    .param p4, "fade"    # Z
    .param p5, "delay"    # J
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "I",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;ZJJ)V"
        }
    .end annotation

    .prologue
    .line 1618
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    move-object v0, p0

    move v1, p4

    move-wide v2, p5

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->getImageViewImageLoadHandler(ZJJ)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 1619
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;IZ)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "resourceId"    # I
    .param p3, "fade"    # Z

    .prologue
    .line 1606
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;ILnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 1607
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1557
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 1558
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Bitmap;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 1563
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V
    .locals 10
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Bitmap;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1576
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    const-wide/16 v6, 0x64

    .line 1577
    .local v6, "defaultDelay":J
    const-wide/16 v8, 0x258

    .local v8, "defaultDuration":J
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1578
    invoke-virtual/range {v1 .. v9}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V

    .line 1579
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fade"    # Z
    .param p5, "delay"    # J
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Bitmap;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;ZJJ)V"
        }
    .end annotation

    .prologue
    .line 1583
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    move-object v0, p0

    move v1, p4

    move-wide v2, p5

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->getImageViewImageLoadHandler(ZJJ)Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 1584
    return-void
.end method

.method public setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "fade"    # Z

    .prologue
    .line 1571
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->setDefaultImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    .line 1572
    return-void
.end method

.method public unloadTarget(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 1541
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->unloadTarget(Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 1542
    return-void
.end method

.method public unloadTarget(Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 2
    .param p1, "target"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<TJobItem;>;)V"
        }
    .end annotation

    .prologue
    .line 1546
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader<TJobItem;TImageSource;>;"
    .local p2, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<TJobItem;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->getImageViewImageLoadHandler()Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;

    move-result-object v0

    .line 1547
    .local v0, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1548
    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$BaseImageLoader;->unloadTarget(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;)V

    .line 1549
    return-void
.end method
