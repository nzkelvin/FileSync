.class public Lnz/co/jsalibrary/android/widget/JSAClearableEditText;
.super Landroid/widget/EditText;
.source "JSAClearableEditText.java"


# static fields
.field public static final CLEAR_MODE_ALWAYS:I = 0x7

.field public static final CLEAR_MODE_EDITING:I = 0x1

.field public static final CLEAR_MODE_EMPTY_TEXT:I = 0x4

.field public static final CLEAR_MODE_NEVER:I = 0x0

.field public static final CLEAR_MODE_NOT_EDITING:I = 0x2


# instance fields
.field protected mClearDrawable:Landroid/graphics/drawable/Drawable;

.field protected mClearMode:I

.field protected mProxiedOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field protected mProxiedOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    .line 47
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->initialise()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    .line 52
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->initialise()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    .line 58
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 59
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->initialise()V

    .line 60
    return-void
.end method


# virtual methods
.method protected createClearDrawable()V
    .locals 1

    .prologue
    .line 139
    sget v0, Lnz/co/jsalibrary/android/R$drawable;->jsa__ic_input_delete:I

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->createClearDrawable(I)V

    .line 140
    return-void
.end method

.method protected createClearDrawable(I)V
    .locals 4
    .param p1, "resource"    # I

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    return-void
.end method

.method public getClearDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getClearMode()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    return v0
.end method

.method protected initialise()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;-><init>(Lnz/co/jsalibrary/android/widget/JSAClearableEditText;)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$2;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$2;-><init>(Lnz/co/jsalibrary/android/widget/JSAClearableEditText;)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$3;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$3;-><init>(Lnz/co/jsalibrary/android/widget/JSAClearableEditText;)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    return-void
.end method

.method protected initialiseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lnz/co/jsalibrary/android/R$styleable;->JSAClearableEditText:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAClearableEditText_jsaClearDrawable:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 69
    .local v1, "clearDrawableResource":I
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->createClearDrawable(I)V

    .line 70
    :cond_0
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAClearableEditText_jsaClearMode:I

    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method protected makeClearDrawableVisible()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 123
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    if-nez v7, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v6

    .line 124
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->hasFocus()Z

    move-result v0

    .line 125
    .local v0, "editing":Z
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 126
    .local v4, "textLength":I
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    move v1, v5

    .line 127
    .local v1, "editingFlag":Z
    :goto_1
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    move v3, v5

    .line 128
    .local v3, "notEditingFlag":Z
    :goto_2
    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_5

    move v2, v5

    .line 129
    .local v2, "emptyTextFlag":Z
    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-nez v2, :cond_2

    if-eqz v4, :cond_6

    :cond_2
    move v6, v5

    goto :goto_0

    .end local v1    # "editingFlag":Z
    .end local v2    # "emptyTextFlag":Z
    .end local v3    # "notEditingFlag":Z
    :cond_3
    move v1, v6

    .line 126
    goto :goto_1

    .restart local v1    # "editingFlag":Z
    :cond_4
    move v3, v6

    .line 127
    goto :goto_2

    .restart local v3    # "notEditingFlag":Z
    :cond_5
    move v2, v6

    .line 128
    goto :goto_3

    .line 130
    .restart local v2    # "emptyTextFlag":Z
    :cond_6
    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_7

    if-eqz v4, :cond_0

    :cond_7
    move v6, v5

    goto :goto_0
.end method

.method public setClearDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 170
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->updateClearDrawable()V

    goto :goto_0
.end method

.method public setClearMode(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 156
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    if-ne p1, v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearMode:I

    .line 158
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->updateClearDrawable()V

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 188
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mProxiedOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 189
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 180
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mProxiedOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 181
    return-void
.end method

.method protected updateClearDrawable()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v2, v4, v5

    .line 115
    .local v2, "visibleDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->makeClearDrawableVisible()Z

    move-result v0

    .line 116
    .local v0, "makeVisible":Z
    if-eqz v0, :cond_0

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->createClearDrawable()V

    .line 117
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    .local v1, "targetDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ne v2, v1, :cond_2

    .line 120
    :goto_1
    return-void

    .end local v1    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v1, v3

    .line 117
    goto :goto_0

    .line 119
    .restart local v1    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0, v3, v3, v1, v3}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
