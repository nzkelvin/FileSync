.class public Lnz/co/jsalibrary/android/util/JSAImageUtil;
.super Ljava/lang/Object;
.source "JSAImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapImageDimensions(Landroid/content/Context;I)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 315
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 318
    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 319
    new-instance v2, Lnz/co/jsalibrary/android/tuple/JSATuple;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getBitmapImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 290
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 291
    :cond_0
    const/4 v2, 0x0

    .line 293
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 303
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 304
    :cond_1
    :goto_0
    return-object v4

    .line 294
    :cond_2
    :try_start_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 295
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 296
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    :try_start_3
    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 298
    new-instance v5, Lnz/co/jsalibrary/android/tuple/JSATuple;

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 304
    goto :goto_0

    .line 299
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "exception":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 304
    :catch_1
    move-exception v5

    goto :goto_0

    .line 302
    .end local v0    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 303
    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 304
    :cond_4
    :goto_4
    throw v4

    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_4

    .line 302
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 299
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getExifImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 328
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 330
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 337
    :cond_1
    :goto_0
    return-object v4

    .line 331
    :cond_2
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v5, "ImageWidth"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 333
    .local v3, "imageWidth":I
    const-string v5, "ImageLength"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 334
    .local v2, "imageHeight":I
    if-eq v3, v7, :cond_1

    if-eq v2, v7, :cond_1

    .line 335
    new-instance v5, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 336
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "imageHeight":I
    .end local v3    # "imageWidth":I
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getExifOrientation(Ljava/io/File;)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 347
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 348
    :cond_0
    const-string v3, "Orientation"

    invoke-static {p0, v3}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getExifTag(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 353
    :goto_0
    return v2

    .line 351
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getExifTag(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 363
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 365
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 369
    :goto_0
    return-object v2

    .line 366
    :cond_2
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v1, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 368
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 268
    :cond_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getExifImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 269
    .local v0, "exifDimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 270
    .end local v0    # "exifDimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    .restart local v0    # "exifDimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getBitmapImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImageDimensionsExifOrientation(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 275
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 276
    :cond_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getExifOrientation(Ljava/io/File;)I

    move-result v1

    .line 277
    .local v1, "orientation":I
    if-eq v1, v2, :cond_1

    if-nez v1, :cond_3

    :cond_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 281
    :cond_2
    :goto_0
    return-object v0

    .line 278
    :cond_3
    const/4 v3, 0x6

    if-eq v1, v3, :cond_4

    const/16 v3, 0x8

    if-ne v1, v3, :cond_5

    .line 279
    .local v2, "rotated":Z
    :cond_4
    :goto_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 280
    .local v0, "dimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    new-instance v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    .line 278
    .end local v0    # "dimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "rotated":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getLoadImageScale(IIII)I
    .locals 1
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadImageScale(IIIIZ)I

    move-result v0

    return v0
.end method

.method public static getLoadImageScale(IIIIZ)I
    .locals 10
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "powerOfTwo"    # Z

    .prologue
    .line 74
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v4, "maxWidth and maxHeight must be positive"

    invoke-direct {v1, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1
    if-gt p0, p2, :cond_2

    if-gt p1, p3, :cond_2

    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 80
    :cond_2
    if-nez p4, :cond_3

    int-to-double v4, p0

    int-to-double v6, p2

    div-double/2addr v4, v6

    int-to-double v6, p1

    int-to-double v8, p3

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0

    .line 83
    :cond_3
    int-to-double v4, p2

    int-to-double v6, p0

    div-double/2addr v4, v6

    int-to-double v6, p3

    int-to-double v8, p1

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 84
    .local v2, "scaleValue":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    .line 87
    .local v0, "scale":I
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public static getLoadImageScale(Ljava/io/File;II)I
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadImageScale(Ljava/io/File;IIZ)I

    move-result v0

    return v0
.end method

.method public static getLoadImageScale(Ljava/io/File;IIZ)I
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "powerOfTwo"    # Z

    .prologue
    .line 54
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 55
    :cond_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getBitmapImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 56
    .local v0, "dimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadImageScale(IIIIZ)I

    move-result v1

    return v1
.end method

.method public static getLoadImageScale(Ljava/lang/String;II)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadImageScale(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public static getLoadImageScale(Ljava/lang/String;IIZ)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "powerOfTwo"    # Z

    .prologue
    .line 43
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 44
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadImageScale(Ljava/io/File;II)I

    move-result v0

    return v0
.end method

.method public static getLoadLargerImageScale(IIII)I
    .locals 1
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadLargerImageScale(IIIIZ)I

    move-result v0

    return v0
.end method

.method public static getLoadLargerImageScale(IIIIZ)I
    .locals 8
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "powerOfTwo"    # Z

    .prologue
    .line 182
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "minWidth and minHeight must be positive"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_1
    if-gt p0, p2, :cond_2

    if-gt p1, p3, :cond_2

    const/4 v2, 0x1

    .line 192
    :goto_0
    return v2

    .line 188
    :cond_2
    if-nez p4, :cond_3

    int-to-double v2, p0

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, p1

    int-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0

    .line 191
    :cond_3
    int-to-double v2, p2

    int-to-double v4, p0

    div-double/2addr v2, v4

    int-to-double v4, p3

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 192
    .local v0, "scaleValue":D
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0
.end method

.method public static getLoadLargerImageScale(Ljava/io/File;II)I
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadLargerImageScale(Ljava/io/File;IIZ)I

    move-result v0

    return v0
.end method

.method public static getLoadLargerImageScale(Ljava/io/File;IIZ)I
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I
    .param p3, "powerOfTwo"    # Z

    .prologue
    .line 160
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 161
    :cond_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getBitmapImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 162
    .local v0, "dimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadLargerImageScale(IIIIZ)I

    move-result v1

    return v1
.end method

.method public static getLoadLargerImageScale(Ljava/lang/String;II)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadLargerImageScale(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public static getLoadLargerImageScale(Ljava/lang/String;IIZ)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I
    .param p3, "powerOfTwo"    # Z

    .prologue
    .line 149
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadLargerImageScale(Ljava/io/File;IIZ)I

    move-result v0

    return v0
.end method

.method public static loadImageFile(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "scale"    # I

    .prologue
    .line 230
    :try_start_0
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFileWithException(Ljava/io/File;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "exception":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadImageFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadImageFile(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "powerOfTwo"    # Z

    .prologue
    .line 119
    invoke-static {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadImageScale(Ljava/io/File;IIZ)I

    move-result v0

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadImageFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadImageFile(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "powerOfTwo"    # Z

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadImageFileExifOrientation(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 129
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 130
    :cond_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getExifOrientation(Ljava/io/File;)I

    move-result v0

    .line 131
    .local v0, "orientation":I
    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 135
    :goto_0
    return-object v2

    .line 133
    :cond_2
    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 134
    .local v1, "rotated":Z
    :cond_3
    :goto_1
    if-nez v1, :cond_5

    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->rotateBitmapExifOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 133
    .end local v1    # "rotated":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 135
    .restart local v1    # "rotated":Z
    :cond_5
    invoke-static {p0, p2, p1}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->rotateBitmapExifOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static loadImageFileWithException(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFileWithException(Ljava/io/File;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadImageFileWithException(Ljava/io/File;IZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "scale"    # I
    .param p2, "smooth"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 244
    :cond_0
    const/4 v1, 0x0

    .line 246
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 248
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 249
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 253
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :cond_1
    :goto_0
    return-object v3

    .line 252
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 253
    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 254
    :cond_2
    :goto_2
    throw v3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 252
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static loadLargerImageFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 217
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getLoadLargerImageScale(Ljava/io/File;II)I

    move-result v0

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadLargerImageFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 201
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 202
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadLargerImageFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static maximiseImage(Landroid/widget/ImageView;II)V
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 435
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 436
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 438
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p0, v1, v2, p1, p2}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->maximiseImage(Landroid/widget/ImageView;IIII)V

    goto :goto_0
.end method

.method public static maximiseImage(Landroid/widget/ImageView;IIII)V
    .locals 9
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    const/4 v8, -0x2

    .line 451
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 452
    :cond_1
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 453
    .local v0, "imageRatio":D
    int-to-double v4, p3

    int-to-double v6, p4

    div-double v2, v4, v6

    .line 454
    .local v2, "maxRatio":D
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    if-gt p1, p3, :cond_3

    :cond_2
    cmpg-double v4, v0, v2

    if-gtz v4, :cond_4

    if-le p2, p4, :cond_4

    .line 455
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 456
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 457
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 458
    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 459
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 460
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 474
    :goto_0
    return-void

    .line 461
    :cond_4
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_5

    .line 462
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 463
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    int-to-double v6, p3

    div-double/2addr v6, v0

    double-to-int v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 464
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 465
    int-to-double v4, p3

    div-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 466
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 468
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 469
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    int-to-double v6, p4

    mul-double/2addr v6, v0

    double-to-int v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 470
    int-to-double v4, p4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 471
    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 472
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public static maximiseWithImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 413
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 414
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->maximiseImage(Landroid/widget/ImageView;IIII)V

    .line 415
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    return-void
.end method

.method public static maximiseWithImage(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;II)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 424
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->maximiseImage(Landroid/widget/ImageView;IIII)V

    .line 426
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    return-void
.end method

.method public static rotateBitmapExifOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I

    .prologue
    .line 396
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 397
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 400
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p0

    .line 398
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 399
    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static setExifTag(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 379
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 381
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v1, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/4 v2, 0x1

    .line 386
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return v2

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setImageAlpha(Landroid/widget/ImageView;I)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "alpha"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 488
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 489
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 491
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method
