.class public Lnz/co/jsalibrary/android/widget/JSACustomTextView;
.super Landroid/view/View;
.source "JSACustomTextView.java"


# static fields
.field protected static final DEFAULT_ALIGN:I = 0x1

.field protected static final DEFAULT_ROTATION:F = 0.0f

.field protected static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field protected static final DEFAULT_TEXT_SIZE:I = 0x10

.field protected static final DEFAULT_TEXT_STYLE:I = 0x0

.field protected static final DEFAULT_TEXT_UNDERLINE_OFFSET:I = 0x6


# instance fields
.field protected mRotationDegrees:F

.field protected mText:Ljava/lang/String;

.field protected mTextAlign:Landroid/graphics/Paint$Align;

.field protected mTextBounds:Landroid/graphics/Rect;

.field protected mTextPaint:Landroid/text/TextPaint;

.field private mTextUnderline:Z

.field private mTextUnderlineOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderlineOffset:I

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 36
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextAlign:Landroid/graphics/Paint$Align;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    .line 59
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->initialise()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v10, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderlineOffset:I

    .line 35
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 36
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextAlign:Landroid/graphics/Paint$Align;

    .line 37
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 38
    iput v7, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    .line 64
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->initialise()V

    .line 67
    sget-object v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_android_text:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setText(Ljava/lang/String;)V

    .line 69
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_android_textColor:I

    const/high16 v6, -0x1000000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextColor(I)V

    .line 70
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_android_textSize:I

    const/16 v6, 0x10

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextSize(F)V

    .line 71
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_jsaTextRotation:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextRotation(F)V

    .line 72
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_jsaTextUnderline:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextUnderline(Z)V

    .line 73
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_jsaTextUnderlineOffset:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextUnderlineOffset(I)V

    .line 74
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_jsaTextAlign:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextAlign(I)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object v5, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTypeface:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "typeface":Ljava/lang/String;
    sget v5, Lnz/co/jsalibrary/android/R$styleable;->JSACustomTextView_jsaTextStyle:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 82
    .local v3, "textStyle":I
    if-eqz v4, :cond_1

    .line 83
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 84
    .local v2, "face":Landroid/graphics/Typeface;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextFont(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "face":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void

    .line 85
    .restart local v2    # "face":Landroid/graphics/Typeface;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setDefaultTextFont(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    .end local v2    # "face":Landroid/graphics/Typeface;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "exception":Ljava/lang/Exception;
    const-string v5, "error assigning font"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Lnz/co/jsalibrary/android/widget/JSACustomTextView;

    aput-object v7, v6, v8

    invoke-static {v5, v1, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0

    .line 86
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setDefaultTextFont(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected static alignmentFraction(Landroid/graphics/Paint$Align;DZ)D
    .locals 7
    .param p0, "align"    # Landroid/graphics/Paint$Align;
    .param p1, "radians"    # D
    .param p3, "horizontal"    # Z

    .prologue
    .line 327
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne p0, v0, :cond_0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 336
    :goto_0
    return-wide v0

    .line 329
    :cond_0
    if-nez p3, :cond_1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v0, p1, v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->boundCircularValue(DDD)D

    move-result-wide p1

    .line 330
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne p0, v0, :cond_2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, p1

    const-wide/16 v2, 0x0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->boundCircularValue(DDD)D

    move-result-wide p1

    .line 332
    :cond_2
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 333
    :cond_3
    const-wide v0, 0x4002d97c7f3321d2L    # 2.356194490192345

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double v0, p1, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr v0, v2

    goto :goto_0

    .line 334
    :cond_4
    const-wide v0, 0x400f6a7a2955385eL    # 3.9269908169872414

    cmpg-double v0, p1, v0

    if-gez v0, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 335
    :cond_5
    const-wide v0, 0x4015fdbbe9bba775L    # 5.497787143782138

    cmpg-double v0, p1, v0

    if-gez v0, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x400f6a7a2955385eL    # 3.9269908169872414

    sub-double v2, p1, v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    goto :goto_0

    .line 336
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private measureHeight(I)I
    .locals 12
    .param p1, "measureSpec"    # I

    .prologue
    .line 258
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 259
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 261
    .local v4, "specSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_0

    .line 265
    .end local v4    # "specSize":I
    :goto_0
    return v4

    .line 262
    .restart local v4    # "specSize":I
    :cond_0
    iget v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toRadians(F)F

    move-result v5

    float-to-double v2, v5

    .line 263
    .local v2, "radians":D
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v6, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingBottom()I

    move-result v6

    add-int v0, v5, v6

    .line 264
    .local v0, "height":I
    const/high16 v5, -0x80000000

    if-ne v1, v5, :cond_1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v0

    .line 265
    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 12
    .param p1, "measureSpec"    # I

    .prologue
    .line 247
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 248
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 250
    .local v3, "specSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    .line 254
    .end local v3    # "specSize":I
    :goto_0
    return v3

    .line 251
    .restart local v3    # "specSize":I
    :cond_0
    iget v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toRadians(F)F

    move-result v5

    float-to-double v0, v5

    .line 252
    .local v0, "radians":D
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v6, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v8, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingRight()I

    move-result v6

    add-int v4, v5, v6

    .line 253
    .local v4, "width":I
    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 254
    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextFont()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTextRotation()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextUnderline()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderline:Z

    return v0
.end method

.method public getTextUnderlineOffset()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderlineOffset:I

    return v0
.end method

.method protected initialise()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 101
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 102
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 273
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toRadians(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v14, v0

    .line 280
    .local v14, "radians":D
    double-to-float v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 281
    .local v17, "sin":F
    double-to-float v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 284
    .local v6, "cos":F
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v6

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    const/16 v18, 0x0

    cmpg-float v18, v17, v18

    if-gez v18, :cond_2

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    :cond_2
    const/16 v18, 0x0

    cmpg-float v18, v6, v18

    if-gez v18, :cond_3

    neg-float v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    neg-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingRight()I

    move-result v19

    add-int v12, v18, v19

    .line 293
    .local v12, "measuredWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getPaddingBottom()I

    move-result v19

    add-int v7, v18, v19

    .line 294
    .local v7, "measuredHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextAlign:Landroid/graphics/Paint$Align;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v14, v15, v1}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->alignmentFraction(Landroid/graphics/Paint$Align;DZ)D

    move-result-wide v8

    .line 295
    .local v8, "fractionHorizontal":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextAlign:Landroid/graphics/Paint$Align;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v14, v15, v1}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->alignmentFraction(Landroid/graphics/Paint$Align;DZ)D

    move-result-wide v10

    .line 296
    .local v10, "fractionVertical":D
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getWidth()I

    move-result v18

    sub-int v16, v18, v12

    .line 297
    .local v16, "remainingWidth":I
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->getHeight()I

    move-result v18

    sub-int v13, v18, v7

    .line 298
    .local v13, "remainingHeight":I
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-double v0, v13

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 242
    :goto_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderlineOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 243
    :cond_0
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setMeasuredDimension(II)V

    .line 244
    return-void

    .line 241
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 211
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    .line 212
    return-void
.end method

.method public setDefaultTextFont(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 198
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextFont(Landroid/graphics/Typeface;)V

    .line 199
    return-void
.end method

.method public setDefaultTextFont(ZZ)V
    .locals 2
    .param p1, "bold"    # Z
    .param p2, "italic"    # Z

    .prologue
    const/4 v0, 0x0

    .line 202
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextFont(Landroid/graphics/Typeface;)V

    .line 203
    return-void

    :cond_1
    move v1, v0

    .line 202
    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mText:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->requestLayout()V

    .line 116
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextAlign(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 145
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Landroid/graphics/Paint$Align;->values()[Landroid/graphics/Paint$Align;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint$Align;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextAlign:Landroid/graphics/Paint$Align;

    .line 152
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 137
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 183
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->requestLayout()V

    .line 184
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextFont(Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeface"    # Ljava/lang/String;
    .param p2, "style"    # I

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextFont(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public setTextFont(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "typeface"    # Ljava/lang/String;
    .param p2, "bold"    # Z
    .param p3, "italic"    # Z

    .prologue
    const/4 v0, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz p3, :cond_1

    const/4 v0, 0x2

    :cond_1
    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->setTextFont(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public setTextRotation(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 223
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {p1, v0, v1}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->boundCircularValue(FFF)F

    move-result p1

    .line 224
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mRotationDegrees:F

    .line 226
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->requestLayout()V

    .line 227
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 126
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->requestLayout()V

    .line 127
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextUnderline(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 160
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderline:Z

    if-ne v0, p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 162
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderline:Z

    .line 163
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextUnderlineOffset(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 171
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderlineOffset:I

    if-ne v0, p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->mTextUnderlineOffset:I

    .line 173
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACustomTextView;->invalidate()V

    goto :goto_0
.end method
