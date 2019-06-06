.class public Lnz/co/realestate/android/lib/core/RESImageLoader;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader;
.source "RESImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;,
        Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob;

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/core/RESImageLoader;->setLogging(Z)V

    .line 32
    return-void
.end method

.method public static isImageLoading(Landroid/widget/ImageView;)Z
    .locals 5
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 149
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 150
    :cond_0
    new-instance v2, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;-><init>()V

    .line 151
    .local v2, "handler":Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;->getDesiredJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    .line 152
    .local v1, "desiredJobItem":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    if-nez v1, :cond_2

    .line 154
    :cond_1
    :goto_0
    return v3

    .line 153
    :cond_2
    invoke-virtual {v2, p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$FileImageViewImageLoadHandler;->getAppliedJobItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    .line 154
    .local v0, "appliedJobItem":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public loadAdImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "section"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;

    invoke-direct {v0, p2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method public loadAgentImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadAgentImage(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 50
    return-void
.end method

.method public loadAgentImage(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;

    invoke-direct {v0, p2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p3, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    goto :goto_0
.end method

.method public loadAgentLogo(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadAgentLogo(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 64
    return-void
.end method

.method public loadAgentLogo(Landroid/widget/ImageView;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;

    invoke-direct {v0, p2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p3, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    goto :goto_0
.end method

.method public loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;)V
    .locals 9
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "height"    # Ljava/lang/Integer;
    .param p5, "cropRatioWidth"    # I
    .param p6, "cropRatioHeight"    # I
    .param p7, "listingId"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 97
    return-void
.end method

.method public loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 10
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "height"    # Ljava/lang/Integer;
    .param p5, "cropRatioWidth"    # I
    .param p6, "cropRatioHeight"    # I
    .param p7, "listingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "II",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p8, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;)V

    .line 104
    .local v1, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;
    move-object/from16 v0, p8

    instance-of v2, v0, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;

    if-eqz v2, :cond_3

    move-object/from16 v2, p8

    check-cast v2, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;

    invoke-virtual {v2, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->hasFadedInBefore(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v9, 0x1

    .line 105
    .local v9, "fadeIn":Z
    :goto_1
    new-instance v5, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;

    const/4 v2, 0x0

    move/from16 v0, p6

    invoke-direct {v5, p5, v0, v9, v2}, Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;-><init>(IIZLnz/co/realestate/android/lib/core/RESImageLoader$1;)V

    .line 106
    .local v5, "handler":Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v8}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadImage(Ljava/io/Serializable;Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadHandler;ZLnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    goto :goto_0

    .line 104
    .end local v5    # "handler":Lnz/co/realestate/android/lib/core/RESImageLoader$CropImageLoadHandler;
    .end local v9    # "fadeIn":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "height"    # Ljava/lang/Integer;
    .param p5, "listingId"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 78
    return-void
.end method

.method public loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "height"    # Ljava/lang/Integer;
    .param p5, "listingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p6, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    invoke-direct {v0, p2, p3, p4, p5}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 84
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p6, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;Z)V

    goto :goto_0
.end method

.method public loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;JJ)V
    .locals 15
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "height"    # Ljava/lang/Integer;
    .param p5, "listingId"    # Ljava/lang/String;
    .param p7, "fadeDelay"    # J
    .param p9, "fadeDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p6, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v6, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v6, v0, v1, v2, v3}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 91
    .local v6, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;
    const/4 v9, 0x1

    move-object v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v5 .. v13}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;ZJJ)V

    goto :goto_0
.end method

.method public loadWestpacContactImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;

    invoke-direct {v0, p2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadImage(Ljava/io/Serializable;Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method
