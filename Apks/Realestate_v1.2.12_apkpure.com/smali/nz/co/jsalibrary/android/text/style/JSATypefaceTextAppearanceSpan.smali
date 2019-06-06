.class public Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;
.super Landroid/text/style/TextAppearanceSpan;
.source "JSATypefaceTextAppearanceSpan.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTypeface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->initSpan(Landroid/content/Context;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I
    .param p3, "colorList"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 34
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->initSpan(Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    .line 24
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->initSpan(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "style"    # I
    .param p4, "size"    # I
    .param p5, "color"    # Landroid/content/res/ColorStateList;
    .param p6, "linkColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->initSpan(Landroid/content/Context;I)V

    .line 40
    return-void
.end method

.method private initSpan(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mContext:Landroid/content/Context;

    .line 44
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    sget-object v1, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTypeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void

    .line 44
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 8
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 52
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->getTextStyle()I

    move-result v3

    .line 53
    .local v3, "textStyle":I
    iget-object v6, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mTypeface:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v5, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 54
    .local v5, "typeface":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_0

    if-eqz v3, :cond_4

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .line 56
    .local v4, "tf":Landroid/graphics/Typeface;
    const/4 v1, 0x0

    .line 58
    .local v1, "style":I
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 60
    :cond_1
    or-int/2addr v1, v3

    .line 62
    if-eqz v5, :cond_8

    .line 63
    iget-object v6, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lnz/co/jsalibrary/android/widget/JSAFontCache;

    if-eqz v6, :cond_7

    .line 64
    iget-object v6, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lnz/co/jsalibrary/android/widget/JSAFontCache;

    iget-object v7, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7, v5}, Lnz/co/jsalibrary/android/widget/JSAFontCache;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 72
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    xor-int/lit8 v6, v6, -0x1

    and-int v0, v1, v6

    .line 74
    .local v0, "fake":I
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 76
    :cond_2
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_3

    const/high16 v6, -0x41800000    # -0.25f

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 78
    :cond_3
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    .end local v0    # "fake":I
    .end local v1    # "style":I
    .end local v4    # "tf":Landroid/graphics/Typeface;
    :cond_4
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->getTextSize()I

    move-result v2

    .line 82
    .local v2, "textSize":I
    if-lez v2, :cond_5

    int-to-float v6, v2

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 83
    :cond_5
    return-void

    .line 53
    .end local v2    # "textSize":I
    .end local v5    # "typeface":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 67
    .restart local v1    # "style":I
    .restart local v4    # "tf":Landroid/graphics/Typeface;
    .restart local v5    # "typeface":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lnz/co/jsalibrary/android/text/style/JSATypefaceTextAppearanceSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_1

    .line 69
    :cond_8
    if-nez v4, :cond_9

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_1

    .line 70
    :cond_9
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_1
.end method
