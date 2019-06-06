.class public Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;
.super Landroid/widget/LinearLayout;
.source "JSAPinEntryWidget.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;,
        Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;,
        Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;
    }
.end annotation


# static fields
.field static id:I


# instance fields
.field private mDigitEditTexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mInvalidPasscodes:[Ljava/lang/String;

.field private mMode:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

.field private mNumberOfDigits:I

.field private mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

.field private mTypeFaceAsset:Landroid/graphics/Typeface;

.field private pinFilter:Landroid/text/InputFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->id:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 218
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$5;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$5;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 218
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$5;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$5;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    .line 60
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 218
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$5;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$5;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    .line 65
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 235
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkPinBox(Landroid/widget/EditText;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "et"    # Landroid/widget/EditText;

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const-string v0, "Number can\'t be blank"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 318
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public findId()I
    .locals 3

    .prologue
    .line 241
    sget v1, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->id:I

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 243
    sget v1, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->id:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->id:I

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_0
    sget v1, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->id:I

    return v1
.end method

.method public findNextFocus(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "currentFocus"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 292
    .local v0, "tag":Ljava/lang/Integer;
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public findPreviousFocus(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "currentFocus"    # Landroid/view/View;

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 297
    .local v0, "tag":Ljava/lang/Integer;
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public forceShowKeyboard()V
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 254
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 255
    return-void
.end method

.method public getFirstDigitEditText()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getFocus()V
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 250
    return-void
.end method

.method protected initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 91
    sget-object v9, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v9, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTypeface:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "typeface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    sget-object v9, Lnz/co/jsalibrary/android/R$styleable;->JSAPinEntryWidget:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 97
    .local v1, "a2":Landroid/content/res/TypedArray;
    sget v9, Lnz/co/jsalibrary/android/R$styleable;->JSAPinEntryWidget_jsaNumberOfPinDigits:I

    const/4 v10, 0x4

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 98
    .local v6, "numberDigits":I
    sget v9, Lnz/co/jsalibrary/android/R$styleable;->JSAPinEntryWidget_jsaPinEntryMode:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 100
    .local v2, "entryMode":I
    packed-switch v2, :pswitch_data_0

    .line 115
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iput v6, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 118
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->setOrientation(I)V

    .line 120
    iget v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mNumberOfDigits:I

    if-nez v9, :cond_0

    .line 121
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "number of pin digits canno\'t be 0"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 102
    :pswitch_0
    sget-object v9, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->ENTRY:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    iput-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    goto :goto_0

    .line 105
    :pswitch_1
    sget-object v9, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->CREATION:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    iput-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    goto :goto_0

    .line 108
    :pswitch_2
    sget-object v9, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->CONFIRM:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    iput-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    goto :goto_0

    .line 123
    :cond_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    iget v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mNumberOfDigits:I

    if-gt v4, v9, :cond_5

    .line 124
    new-instance v7, Landroid/widget/EditText;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/jsalibrary/android/R$style;->JSAPinEntryWidgetPinStyle:I

    invoke-direct {v7, v9, p2, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    .local v7, "pinDigit":Landroid/widget/EditText;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 127
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 128
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 129
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setEms(I)V

    .line 130
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->findId()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setId(I)V

    .line 132
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    iget-object v11, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 133
    const/16 v9, 0x12

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 136
    if-eqz v8, :cond_2

    .line 137
    iget-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mTypeFaceAsset:Landroid/graphics/Typeface;

    if-nez v9, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mTypeFaceAsset:Landroid/graphics/Typeface;

    .line 139
    :cond_1
    iget-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mTypeFaceAsset:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    :cond_2
    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    .line 147
    new-instance v9, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$1;

    invoke-direct {v9, p0, v7}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$1;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    :goto_2
    iget-object v10, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->addView(Landroid/view/View;)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    :cond_3
    iget v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mNumberOfDigits:I

    if-ne v4, v9, :cond_4

    .line 163
    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    new-instance v9, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$2;

    invoke-direct {v9, p0, v7}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$2;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    new-instance v9, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$3;

    invoke-direct {v9, p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$3;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 192
    new-instance v9, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$4;

    invoke-direct {v9, p0, v7}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$4;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 204
    .end local v7    # "pinDigit":Landroid/widget/EditText;
    :cond_5
    iget-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->isInEditMode()Z

    move-result v9

    if-nez v9, :cond_6

    .line 205
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 206
    .local v3, "firstDigit":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 208
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 209
    .local v5, "mgr":Landroid/view/inputmethod/InputMethodManager;
    const/4 v9, 0x1

    invoke-virtual {v5, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 212
    .end local v3    # "firstDigit":Landroid/widget/EditText;
    .end local v5    # "mgr":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    return-void

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 415
    const/16 v1, 0x43

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 416
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 417
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->findPreviousFocus(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, "nextFocusView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 420
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "nextFocusView":Landroid/view/View;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const/4 v1, 0x1

    .line 425
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetPinDigits()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 305
    .local v0, "et":Landroid/widget/EditText;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    .end local v0    # "et":Landroid/widget/EditText;
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 309
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->forceShowKeyboard()V

    .line 310
    return-void
.end method

.method public setInvalidPasscodes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "invalidPasscodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setInvalidPasscodes([Ljava/lang/String;)V
    .locals 0
    .param p1, "invalidPasscodes"    # [Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setInvalidPins()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setPinEntryMode(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;)V
    .locals 0
    .param p1, "mode"    # Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    .prologue
    .line 73
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    .line 74
    return-void
.end method

.method public setPinListener(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    .prologue
    .line 69
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    .line 70
    return-void
.end method

.method public validatePin()V
    .locals 5

    .prologue
    .line 328
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    if-nez v2, :cond_0

    .line 329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "a PinListener must be set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    const-string v0, ""

    .line 335
    .local v0, "entered_pin":Ljava/lang/String;
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 336
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->checkPinBox(Landroid/widget/EditText;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 363
    .end local v1    # "et":Landroid/widget/EditText;
    :goto_1
    return-void

    .line 338
    .restart local v1    # "et":Landroid/widget/EditText;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    goto :goto_0

    .line 340
    .end local v1    # "et":Landroid/widget/EditText;
    :cond_2
    sget-object v2, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$6;->$SwitchMap$nz$co$jsalibrary$android$deprecated$JSAPinEntryWidget$PinEntryMode:[I

    iget-object v3, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 343
    :pswitch_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->onInvalidPin(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_3
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->onPinCreated(Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :pswitch_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->validatePin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->onPinConfirmed(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_4
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->onPinConfirmFailed()V

    goto :goto_1

    .line 356
    :pswitch_2
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->validatePin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 357
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->onPinEntryFinished(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    :cond_5
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;

    invoke-interface {v2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;->onPinConfirmFailed()V

    goto :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
