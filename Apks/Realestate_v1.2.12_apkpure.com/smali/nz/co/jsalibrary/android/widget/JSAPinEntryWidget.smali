.class public Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;
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
        Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;,
        Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$CustomTextWatcher;,
        Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;,
        Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;
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

.field private mMode:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

.field private mNumberOfDigits:I

.field private mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

.field protected mTypeFaceAsset:Landroid/graphics/Typeface;

.field private pinFilter:Landroid/text/InputFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->id:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 212
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 212
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    .line 63
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 212
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    .line 68
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
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
    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkPinBox(Landroid/widget/EditText;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "et"    # Landroid/widget/EditText;

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "Number can\'t be blank"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 305
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 307
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
    .line 230
    sget v1, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->id:I

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 232
    sget v1, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->id:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->id:I

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_0
    sget v1, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->id:I

    return v1
.end method

.method public findNextFocus(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "currentFocus"    # Landroid/view/View;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 279
    .local v0, "tag":Ljava/lang/Integer;
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

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
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 284
    .local v0, "tag":Ljava/lang/Integer;
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

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
    .line 242
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 243
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 244
    return-void
.end method

.method public getFirstDigitEditText()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

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
    .line 238
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 239
    return-void
.end method

.method protected initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget-object v9, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v9, Lnz/co/jsalibrary/android/R$styleable;->JSAFontTextView_jsaTypeface:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "typeface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    sget-object v9, Lnz/co/jsalibrary/android/R$styleable;->JSAPinEntryWidget:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 96
    .local v1, "a2":Landroid/content/res/TypedArray;
    sget v9, Lnz/co/jsalibrary/android/R$styleable;->JSAPinEntryWidget_jsaNumberOfPinDigits:I

    const/4 v10, 0x4

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 97
    .local v6, "numberDigits":I
    sget v9, Lnz/co/jsalibrary/android/R$styleable;->JSAPinEntryWidget_jsaPinEntryMode:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 99
    .local v2, "entryMode":I
    packed-switch v2, :pswitch_data_0

    .line 108
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    iput v6, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mNumberOfDigits:I

    .line 111
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->setOrientation(I)V

    .line 113
    iget v9, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mNumberOfDigits:I

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "number of pin digits canno\'t be 0"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 101
    :pswitch_0
    sget-object v9, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;->ENTRY:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

    iput-object v9, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

    goto :goto_0

    .line 104
    :pswitch_1
    sget-object v9, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;->CREATION:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

    iput-object v9, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

    goto :goto_0

    .line 115
    :cond_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    iget v9, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mNumberOfDigits:I

    if-gt v4, v9, :cond_4

    .line 116
    new-instance v7, Landroid/widget/EditText;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/jsalibrary/android/R$style;->JSAPinEntryWidgetPinStyle:I

    invoke-direct {v7, v9, p2, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    .local v7, "pinDigit":Landroid/widget/EditText;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 119
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 120
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 121
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setEms(I)V

    .line 122
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->findId()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setId(I)V

    .line 124
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    iget-object v11, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->pinFilter:Landroid/text/InputFilter;

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 125
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 126
    const/16 v9, 0x12

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 129
    if-eqz v8, :cond_1

    .line 130
    invoke-virtual {p0, p1, v7, v8}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->initialiseTypeface(Landroid/content/Context;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 136
    :cond_1
    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    .line 138
    new-instance v9, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$1;

    invoke-direct {v9, p0, v7}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$1;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    :goto_2
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0, v7}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->addView(Landroid/view/View;)V

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 152
    :cond_2
    iget v9, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mNumberOfDigits:I

    if-ne v4, v9, :cond_3

    .line 153
    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    new-instance v9, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$2;

    invoke-direct {v9, p0, v7}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$2;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    new-instance v9, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$3;

    invoke-direct {v9, p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$3;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_2

    .line 179
    :cond_3
    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    new-instance v9, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$4;

    invoke-direct {v9, p0, v7}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$4;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 191
    .end local v7    # "pinDigit":Landroid/widget/EditText;
    :cond_4
    iget-object v9, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->isInEditMode()Z

    move-result v9

    if-nez v9, :cond_5

    .line 192
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 193
    .local v3, "firstDigit":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 195
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 196
    .local v5, "mgr":Landroid/view/inputmethod/InputMethodManager;
    const/4 v9, 0x1

    invoke-virtual {v5, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 199
    .end local v3    # "firstDigit":Landroid/widget/EditText;
    .end local v5    # "mgr":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    return-void

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initialiseTypeface(Landroid/content/Context;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;
    .param p3, "typeface"    # Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mTypeFaceAsset:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mTypeFaceAsset:Landroid/graphics/Typeface;

    .line 204
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mTypeFaceAsset:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 371
    const/16 v1, 0x43

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 372
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->findPreviousFocus(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "nextFocusView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 375
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 376
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "nextFocusView":Landroid/view/View;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const/4 v1, 0x1

    .line 381
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetPinDigits()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

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

    .line 292
    .local v0, "et":Landroid/widget/EditText;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    .end local v0    # "et":Landroid/widget/EditText;
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->getFirstDigitEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 296
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->forceShowKeyboard()V

    .line 297
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
    .line 84
    .local p1, "invalidPasscodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setInvalidPasscodes([Ljava/lang/String;)V
    .locals 0
    .param p1, "invalidPasscodes"    # [Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPinEntryMode(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;)V
    .locals 0
    .param p1, "mode"    # Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

    .prologue
    .line 76
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

    .line 77
    return-void
.end method

.method public setPinListener(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    .prologue
    .line 72
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    .line 73
    return-void
.end method

.method public validatePin()V
    .locals 6

    .prologue
    .line 315
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "a PinListener must be set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    :cond_0
    const-string v0, ""

    .line 321
    .local v0, "entered_pin":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mDigitEditTexts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 322
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->checkPinBox(Landroid/widget/EditText;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    .end local v1    # "et":Landroid/widget/EditText;
    :goto_1
    return-void

    .line 323
    .restart local v1    # "et":Landroid/widget/EditText;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    goto :goto_0

    .line 325
    .end local v1    # "et":Landroid/widget/EditText;
    :cond_2
    sget-object v3, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$6;->$SwitchMap$nz$co$jsalibrary$android$widget$JSAPinEntryWidget$PinEntryMode:[I

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mMode:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinEntryMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 328
    :pswitch_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mInvalidPasscodes:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    sget-object v4, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->INVALID_PIN:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    invoke-interface {v3, v4, v0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;->onPinEntryFailed(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :cond_3
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    invoke-interface {v3, v0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;->onPinEntrySucceeded(Ljava/lang/String;)V

    goto :goto_1

    .line 335
    :pswitch_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    invoke-interface {v3, v0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;->validatePin(Ljava/lang/String;)Z

    move-result v2

    .line 336
    .local v2, "validated":Z
    if-eqz v2, :cond_4

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    invoke-interface {v3, v0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;->onPinEntrySucceeded(Ljava/lang/String;)V

    goto :goto_1

    .line 337
    :cond_4
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->mPinListener:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;

    sget-object v4, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->VALIDATION_FAILURE:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    invoke-interface {v3, v4, v0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;->onPinEntryFailed(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
