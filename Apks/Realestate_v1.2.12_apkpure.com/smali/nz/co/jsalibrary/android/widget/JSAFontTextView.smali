.class public Lnz/co/jsalibrary/android/widget/JSAFontTextView;
.super Landroid/widget/TextView;
.source "JSAFontTextView.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final MAX_MEASURE_SIZE:I = 0x100000

.field private static final MAX_SEARCH_ITERATIONS:I = 0xa


# instance fields
.field protected mResizeRequired:Z

.field protected mTextBounds:Landroid/graphics/Rect;

.field protected mTextPaint:Landroid/text/TextPaint;

.field protected mTextScaleMax:F

.field protected mTextScaleMin:F

.field protected mTextSize:F

.field protected mTextSizeScaleMax:F

.field protected mTextSizeScaleMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 47
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    .line 48
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    .line 50
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    .line 51
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    .line 71
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 47
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    .line 48
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    .line 50
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    .line 51
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    .line 82
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 47
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    .line 48
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    .line 50
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    .line 51
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    .line 88
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeface"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 47
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    .line 48
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    .line 50
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    .line 51
    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    .line 76
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    .line 77
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->initialiseTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected getMeasuredWidth(FF)I
    .locals 2
    .param p1, "size"    # F
    .param p2, "scale"    # F

    .prologue
    .line 325
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 326
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 327
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 328
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method protected getScaleForWidth(IFF)F
    .locals 5
    .param p1, "targetWidth"    # I
    .param p2, "lowerScale"    # F
    .param p3, "upperScale"    # F

    .prologue
    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 286
    add-float v3, p2, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 287
    .local v1, "nextScale":F
    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    invoke-virtual {p0, v3, v1}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getMeasuredWidth(FF)I

    move-result v2

    .line 288
    .local v2, "nextWidth":I
    if-ne v2, p1, :cond_0

    .line 293
    .end local v1    # "nextScale":F
    .end local v2    # "nextWidth":I
    :goto_1
    return v1

    .line 289
    .restart local v1    # "nextScale":F
    .restart local v2    # "nextWidth":I
    :cond_0
    if-ge v2, p1, :cond_1

    move p2, v1

    .line 285
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    move p3, v1

    goto :goto_2

    .end local v1    # "nextScale":F
    .end local v2    # "nextWidth":I
    :cond_2
    move v1, p2

    .line 293
    goto :goto_1
.end method

.method protected getSizeForWidth(IFF)F
    .locals 5
    .param p1, "targetWidth"    # I
    .param p2, "lowerSize"    # F
    .param p3, "upperSize"    # F

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 302
    add-float v3, p2, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 303
    .local v1, "nextSize":F
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getTextScaleX()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getMeasuredWidth(FF)I

    move-result v2

    .line 304
    .local v2, "nextWidth":I
    if-ne v2, p1, :cond_0

    .line 309
    .end local v1    # "nextSize":F
    .end local v2    # "nextWidth":I
    :goto_1
    return v1

    .line 305
    .restart local v1    # "nextSize":F
    .restart local v2    # "nextWidth":I
    :cond_0
    if-ge v2, p1, :cond_1

    move p2, v1

    .line 301
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    move p3, v1

    goto :goto_2

    .end local v1    # "nextSize":F
    .end local v2    # "nextWidth":I
    :cond_2
    move v1, p2

    .line 309
    goto :goto_1
.end method

.method public getTextScaleMax()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    return v0
.end method

.method public getTextScaleMin()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    return v0
.end method

.method public getTextSizeScaleMax()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    return v0
.end method

.method public getTextSizeScaleMin()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    return v0
.end method

.method protected initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 97
    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTypeface:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "typeface":Ljava/lang/String;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTextScaleMin:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    .line 100
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    sget v3, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTextScaleMax:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    .line 101
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTextSizeScaleMin:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    .line 102
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    sget v3, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTextSizeScaleMax:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0, p1, v1}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->initialiseTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected initialiseTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeface"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "application":Landroid/content/Context;
    const/4 v1, 0x0

    .line 120
    .local v1, "createdTypeFace":Landroid/graphics/Typeface;
    :try_start_0
    instance-of v3, v0, Lnz/co/jsalibrary/android/widget/JSAFontCache;

    if-eqz v3, :cond_2

    check-cast v0, Lnz/co/jsalibrary/android/widget/JSAFontCache;

    .end local v0    # "application":Landroid/content/Context;
    invoke-interface {v0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontCache;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 126
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error assigning font to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v0    # "application":Landroid/content/Context;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 216
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 217
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mResizeRequired:Z

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 219
    .local v1, "width":I
    sub-int v2, p5, p3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 220
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->updateTextScale(II)V

    .line 221
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mResizeRequired:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 208
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mResizeRequired:Z

    .line 209
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 197
    .local v1, "width":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 198
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->updateTextScale(II)V

    .line 200
    return-void
.end method

.method public setTextScaleMax(F)V
    .locals 2
    .param p1, "max"    # F

    .prologue
    .line 152
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 153
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    .line 154
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    .line 155
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->requestLayout()V

    .line 156
    return-void
.end method

.method public setTextScaleMin(F)V
    .locals 2
    .param p1, "min"    # F

    .prologue
    .line 146
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 147
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    .line 148
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    .line 149
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    .line 189
    return-void
.end method

.method protected setTextSizePixels(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    return-void
.end method

.method public setTextSizeScaleMax(F)V
    .locals 2
    .param p1, "max"    # F

    .prologue
    .line 177
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 178
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    .line 179
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    .line 180
    return-void
.end method

.method public setTextSizeScaleMin(F)V
    .locals 2
    .param p1, "min"    # F

    .prologue
    .line 171
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 172
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    .line 173
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    .line 174
    return-void
.end method

.method protected updateTextScale(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_0

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    iget v8, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMin:F

    mul-float v6, v7, v8

    .line 232
    .local v6, "textSizeMin":F
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    iget v8, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSizeScaleMax:F

    mul-float v5, v7, v8

    .line 235
    .local v5, "textSizeMax":F
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    iget v8, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    .line 237
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextScaleX(F)V

    .line 238
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextSizePixels(F)V

    goto :goto_0

    .line 243
    :cond_2
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    invoke-virtual {p0, v6, v7}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getMeasuredWidth(FF)I

    move-result v7

    if-lt v7, p1, :cond_3

    .line 245
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextScaleX(F)V

    .line 246
    invoke-virtual {p0, v6}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextSizePixels(F)V

    goto :goto_0

    .line 251
    :cond_3
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    iget v8, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    invoke-virtual {p0, v7, v8}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getMeasuredWidth(FF)I

    move-result v0

    .line 254
    .local v0, "maxWidth":I
    if-gt v0, p1, :cond_4

    .line 256
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextScaleX(F)V

    .line 257
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextSizePixels(F)V

    goto :goto_0

    .line 262
    :cond_4
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    iget v8, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    invoke-virtual {p0, v7, v8}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getMeasuredWidth(FF)I

    move-result v2

    .line 265
    .local v2, "minWidth":I
    if-gt v2, p1, :cond_5

    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    .end local v6    # "textSizeMin":F
    :cond_5
    invoke-virtual {p0, v6}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextSizePixels(F)V

    .line 268
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMin:F

    iget v8, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextScaleMax:F

    invoke-virtual {p0, p1, v7, v8}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getScaleForWidth(IFF)F

    move-result v3

    .line 269
    .local v3, "scale":F
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextScaleX(F)V

    .line 272
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    invoke-virtual {p0, v7, v3}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getMeasuredWidth(FF)I

    move-result v1

    .line 273
    .local v1, "measuredWidth":I
    if-eq v1, p1, :cond_0

    .line 276
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->mTextSize:F

    invoke-virtual {p0, p1, v7, v5}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->getSizeForWidth(IFF)F

    move-result v4

    .line 277
    .local v4, "size":F
    invoke-virtual {p0, v4}, Lnz/co/jsalibrary/android/widget/JSAFontTextView;->setTextSizePixels(F)V

    goto :goto_0
.end method
