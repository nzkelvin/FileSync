.class public Lnz/co/jsalibrary/android/widget/JSALazyStateButton;
.super Lnz/co/jsalibrary/android/widget/JSAFontButton;
.source "JSALazyStateButton.java"


# instance fields
.field private mCheckedFilterColor:I

.field private mDisabledAlpha:I

.field private mNoFilterColor:I

.field private mPressedFilterColor:I

.field private mSelectedFilterColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAFontButton;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAFontButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/JSAFontButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaPressedFilterColor:I

    sget v3, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_pressed_filter:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mPressedFilterColor:I

    .line 62
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaSelectedFilterColor:I

    sget v3, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_selected_filter:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mSelectedFilterColor:I

    .line 63
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaCheckedFilterColor:I

    sget v3, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_checked_filter:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mCheckedFilterColor:I

    .line 64
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaDisabledAlpha:I

    sget v3, Lnz/co/jsalibrary/android/R$integer;->JSALazyStateImageView_disabled_alpha:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mDisabledAlpha:I

    .line 66
    sget v2, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_no_filter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mNoFilterColor:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method public refreshDrawableState()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lnz/co/jsalibrary/android/widget/JSAFontButton;->refreshDrawableState()V

    .line 76
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 79
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mSelectedFilterColor:I

    .line 80
    .local v1, "filterColor":I
    :goto_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 78
    .end local v1    # "filterColor":I
    :cond_1
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mDisabledAlpha:I

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mPressedFilterColor:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateButton;->mNoFilterColor:I

    goto :goto_2
.end method
