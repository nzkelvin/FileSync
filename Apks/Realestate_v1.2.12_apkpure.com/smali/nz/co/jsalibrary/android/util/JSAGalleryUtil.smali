.class public Lnz/co/jsalibrary/android/util/JSAGalleryUtil;
.super Ljava/lang/Object;
.source "JSAGalleryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialiseGalleryLeftAligned(Landroid/app/Activity;IILandroid/widget/Gallery;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageWidth"    # I
    .param p2, "marginInDips"    # I
    .param p3, "gallery"    # Landroid/widget/Gallery;

    .prologue
    .line 24
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getPixelsForDips(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 27
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 28
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, p1

    int-to-float v4, p2

    invoke-static {v4, p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getPixelsForDips(FLandroid/content/Context;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 32
    .local v0, "adjustment":I
    invoke-virtual {p3}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_0

    .line 34
    neg-int v3, v0

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    neg-int v3, v0

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method
