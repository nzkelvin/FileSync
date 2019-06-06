.class public Lnz/co/jsalibrary/android/util/JSABitmapUtil;
.super Ljava/lang/Object;
.source "JSABitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 487
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bitmap cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 489
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 490
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 491
    return-object v0
.end method

.method public static cropBitmapToRatio(Landroid/graphics/Bitmap;DI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratio"    # D
    .param p3, "gravity"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->cropBitmapToRatio(Landroid/graphics/Bitmap;DIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmapToRatio(Landroid/graphics/Bitmap;DIZ)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratio"    # D
    .param p3, "gravity"    # I
    .param p4, "recycle"    # Z

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-nez v10, :cond_1

    .line 474
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 450
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-wide/16 v10, 0x0

    cmpg-double v10, p1, v10

    if-gez v10, :cond_2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 451
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 452
    .local v0, "bitmapRatio":F
    float-to-double v10, v0

    cmpl-double v10, p1, v10

    if-eqz v10, :cond_0

    .line 455
    float-to-double v10, v0

    cmpl-double v10, p1, v10

    if-lez v10, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 456
    .local v3, "cropWidth":I
    :goto_1
    float-to-double v10, v0

    cmpl-double v10, p1, v10

    if-lez v10, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v10, p1

    double-to-int v1, v10

    .line 457
    .local v1, "cropHeight":I
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v4, v10, v3

    .line 458
    .local v4, "cropWidthRemains":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int v2, v10, v1

    .line 461
    .local v2, "cropHeightRemains":I
    and-int/lit8 v5, p3, 0x7

    .line 462
    .local v5, "horizontalGravity":I
    and-int/lit8 v7, p3, 0x70

    .line 463
    .local v7, "verticalGravity":I
    const/4 v10, 0x3

    if-ne v5, v10, :cond_6

    const/4 v8, 0x0

    .line 465
    .local v8, "x":I
    :goto_3
    const/16 v10, 0x30

    if-ne v7, v10, :cond_8

    const/4 v9, 0x0

    .line 468
    .local v9, "y":I
    :goto_4
    invoke-static {p0, v8, v9, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 471
    .local v6, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_3

    if-eq v6, p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object p0, v6

    .line 474
    goto :goto_0

    .line 455
    .end local v1    # "cropHeight":I
    .end local v2    # "cropHeightRemains":I
    .end local v3    # "cropWidth":I
    .end local v4    # "cropWidthRemains":I
    .end local v5    # "horizontalGravity":I
    .end local v6    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "verticalGravity":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, p1

    double-to-int v3, v10

    goto :goto_1

    .line 456
    .restart local v3    # "cropWidth":I
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_2

    .line 463
    .restart local v1    # "cropHeight":I
    .restart local v2    # "cropHeightRemains":I
    .restart local v4    # "cropWidthRemains":I
    .restart local v5    # "horizontalGravity":I
    .restart local v7    # "verticalGravity":I
    :cond_6
    const/4 v10, 0x1

    if-ne v5, v10, :cond_7

    div-int/lit8 v8, v4, 0x2

    goto :goto_3

    :cond_7
    move v8, v4

    goto :goto_3

    .line 465
    .restart local v8    # "x":I
    :cond_8
    const/16 v10, 0x10

    if-ne v7, v10, :cond_9

    div-int/lit8 v9, v2, 0x2

    goto :goto_4

    :cond_9
    move v9, v2

    goto :goto_4
.end method

.method public static cropBitmapToRatio(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratioWidth"    # I
    .param p2, "ratioHeight"    # I

    .prologue
    .line 282
    const/16 v0, 0x11

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->cropBitmapToRatio(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmapToRatio(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratioWidth"    # I
    .param p2, "ratioHeight"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 328
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 329
    :cond_1
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {p0, v0, v1, p3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->cropBitmapToRatio(Landroid/graphics/Bitmap;DI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmapToRatioAndRecycle(Landroid/graphics/Bitmap;DI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratio"    # D
    .param p3, "gravity"    # I

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->cropBitmapToRatio(Landroid/graphics/Bitmap;DIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmapToRatioAndRecycle(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratioWidth"    # I
    .param p2, "ratioHeight"    # I

    .prologue
    .line 296
    const/16 v0, 0x11

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->cropBitmapToRatioAndRecycle(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmapToRatioAndRecycle(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratioWidth"    # I
    .param p2, "ratioHeight"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 359
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 360
    :cond_1
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {p0, v0, v1, p3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->cropBitmapToRatioAndRecycle(Landroid/graphics/Bitmap;DI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmapDrawableFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 41
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->loadUnparentedBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a parent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 67
    return-object v0
.end method

.method public static loadBitmapResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resource"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 122
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadUnparentedBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->loadUnparentedBitmapFromView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadUnparentedBitmapFromView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has a parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 112
    return-object v0
.end method

.method public static maskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "background"    # Landroid/graphics/Bitmap;
    .param p1, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 134
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 138
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 139
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # F

    .prologue
    .line 151
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 168
    :goto_0
    return-object v2

    .line 152
    :cond_0
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toRadians(F)F

    move-result v8

    float-to-double v6, v8

    .line 155
    .local v6, "radians":D
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 156
    .local v4, "newWidth":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 156
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v3, v8

    .line 159
    .local v3, "newHeight":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, p1, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v3, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 162
    float-to-int v8, v4

    float-to-int v9, v3

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 165
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 166
    const/high16 v8, 0x42b40000    # 90.0f

    rem-float v8, p1, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    invoke-virtual {v0, p0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 166
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # Ljava/lang/Integer;
    .param p2, "maxHeight"    # Ljava/lang/Integer;

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # Ljava/lang/Integer;
    .param p2, "maxHeight"    # Ljava/lang/Integer;
    .param p3, "smooth"    # Z

    .prologue
    const/4 v4, 0x0

    .line 218
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-nez v5, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v4

    .line 219
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 220
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 221
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 223
    :cond_4
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 224
    .local v2, "scaleValue":D
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 225
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 227
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    .line 228
    .local v1, "newWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v0, v4

    .line 229
    .local v0, "newHeight":I
    invoke-static {p0, v1, v0, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method public static scaleLargerBitmap(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "minWidth"    # Ljava/lang/Integer;
    .param p2, "minHeight"    # Ljava/lang/Integer;

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->scaleLargerBitmap(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static scaleLargerBitmap(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "minWidth"    # Ljava/lang/Integer;
    .param p2, "minHeight"    # Ljava/lang/Integer;
    .param p3, "smooth"    # Z

    .prologue
    const/4 v4, 0x0

    .line 251
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-nez v5, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v4

    .line 252
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 253
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 254
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 256
    :cond_4
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    .line 257
    .local v2, "scaleValue":D
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 258
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 260
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    .line 261
    .local v1, "newWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v0, v4

    .line 262
    .local v0, "newHeight":I
    invoke-static {p0, v1, v0, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method public static tileBitmapEnds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->tileBitmapEnds(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static tileBitmapEnds(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "sliceWidth"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 182
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le p2, v8, :cond_1

    :cond_0
    move-object v4, v7

    .line 196
    :goto_0
    return-object v4

    .line 183
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-lt v8, p1, :cond_2

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 185
    .local v0, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 187
    .local v2, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 188
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {p0, v11, v11, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 189
    .local v3, "leftSlice":Landroid/graphics/Bitmap;
    sub-int v8, v0, p2

    invoke-static {p0, v8, v11, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 191
    .local v5, "rightSlice":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    .local v1, "canvas":Landroid/graphics/Canvas;
    sub-int v8, p1, v0

    div-int/lit8 v6, v8, 0x2

    .line 193
    .local v6, "startOffset":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, p2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 194
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v6, v0

    invoke-direct {v9, v6, v11, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, p2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v6, v0

    invoke-direct {v9, v10, v11, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
