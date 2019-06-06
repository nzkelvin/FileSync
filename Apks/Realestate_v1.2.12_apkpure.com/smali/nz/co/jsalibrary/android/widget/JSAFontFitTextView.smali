.class public Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;
.super Landroid/widget/TextView;
.source "JSAFontFitTextView.java"


# instance fields
.field private mTestPaint:Landroid/graphics/Paint;

.field protected mTextScaleMax:F

.field protected mTextScaleMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    .line 24
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMax:F

    .line 34
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->initialise()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    .line 24
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMax:F

    .line 28
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->initialise()V

    .line 29
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    .line 24
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMax:F

    .line 39
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->initialise()V

    .line 40
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private initialise()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTestPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method private refitText(Ljava/lang/String;I)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textWidth"    # I

    .prologue
    .line 91
    if-lez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getPaddingLeft()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 93
    .local v1, "targetWidth":I
    const/high16 v2, 0x3f000000    # 0.5f

    .line 95
    .local v2, "threshold":F
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 97
    :goto_1
    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMax:F

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 98
    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMax:F

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 99
    .local v0, "size":F
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMax:F

    goto :goto_1

    .line 101
    :cond_2
    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    goto :goto_1

    .line 104
    .end local v0    # "size":F
    :cond_3
    const/4 v3, 0x0

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    invoke-virtual {p0, v3, v4}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method protected initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 48
    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTypeface:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "typeface":Ljava/lang/String;
    const v2, 0x3dcccccd    # 0.1f

    sget v3, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTextScaleMin:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    .line 51
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMin:F

    sget v3, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTextScaleMax:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->mTextScaleMax:F

    .line 52
    invoke-virtual {p0, p1, v1}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->initialiseTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method protected initialiseTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeface"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "application":Landroid/content/Context;
    const/4 v1, 0x0

    .line 68
    .local v1, "createdTypeFace":Landroid/graphics/Typeface;
    :try_start_0
    instance-of v3, v0, Lnz/co/jsalibrary/android/widget/JSAFontCache;

    if-eqz v3, :cond_2

    check-cast v0, Lnz/co/jsalibrary/android/widget/JSAFontCache;

    .end local v0    # "application":Landroid/content/Context;
    invoke-interface {v0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontCache;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 74
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
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

    .line 71
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

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 110
    .local v1, "parentWidth":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getMeasuredHeight()I

    move-result v0

    .line 111
    .local v0, "height":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->refitText(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p0, v1, v0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->setMeasuredDimension(II)V

    .line 113
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 120
    if-eq p1, p3, :cond_0

    .line 121
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->refitText(Ljava/lang/String;I)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 116
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/JSAFontFitTextView;->refitText(Ljava/lang/String;I)V

    .line 117
    return-void
.end method
