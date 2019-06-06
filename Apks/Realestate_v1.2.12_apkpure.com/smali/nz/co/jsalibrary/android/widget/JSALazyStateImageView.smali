.class public Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;
.super Landroid/widget/ImageView;
.source "JSALazyStateImageView.java"


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
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaPressedFilterColor:I

    sget v3, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_pressed_filter:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mPressedFilterColor:I

    .line 64
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaSelectedFilterColor:I

    sget v3, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_selected_filter:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mSelectedFilterColor:I

    .line 65
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaCheckedFilterColor:I

    sget v3, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_checked_filter:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mCheckedFilterColor:I

    .line 66
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSALazyStateImageView_jsaDisabledAlpha:I

    sget v3, Lnz/co/jsalibrary/android/R$integer;->JSALazyStateImageView_disabled_alpha:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mDisabledAlpha:I

    .line 68
    sget v2, Lnz/co/jsalibrary/android/R$color;->JSALazyStateImageView_no_filter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mNoFilterColor:I

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method public refreshDrawableState()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 78
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-static {p0, v1}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->setImageAlpha(Landroid/widget/ImageView;I)V

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 82
    :goto_1
    return-void

    .line 78
    :cond_0
    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mDisabledAlpha:I

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mSelectedFilterColor:I

    .line 81
    .local v0, "filterColor":I
    :goto_2
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->setColorFilter(I)V

    goto :goto_1

    .line 80
    .end local v0    # "filterColor":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mPressedFilterColor:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSALazyStateImageView;->mNoFilterColor:I

    goto :goto_2
.end method
