.class public Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
.super Landroid/widget/LinearLayout;
.source "JSANumberPickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$CustomEditText;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;,
        Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_STYLE_RESOURCE_ID:I

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

.field private mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

.field private mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

.field private mFormatter:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

.field private final mHasSelectorWheel:Z

.field private mIgnoreMoveEvents:Z

.field private mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;

.field private mOnValueChangeListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;

.field private mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoftInputEnabled:Z

.field private mSolidColor:I

.field private mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    sget v0, Lnz/co/jsalibrary/android/R$layout;->jsa__number_picker_with_selector_wheel:I

    sput v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 141
    sget v0, Lnz/co/jsalibrary/android/R$style;->Widget_Holo_Light_NumberPicker:I

    sput v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->DEFAULT_STYLE_RESOURCE_ID:I

    .line 146
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->DIGIT_CHARACTERS:[C

    .line 163
    new-instance v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$1;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$1;-><init>()V

    sput-object v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->TWO_DIGIT_FORMATTER:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

    return-void

    .line 146
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 512
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLongPressUpdateInterval:J

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 281
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    .line 301
    const/high16 v0, -0x80000000

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    .line 387
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mHasSelectorWheel:Z

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    .line 443
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSoftInputEnabled:Z

    .line 513
    const/4 v0, 0x0

    sget v1, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->DEFAULT_STYLE_RESOURCE_ID:I

    invoke-virtual {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 514
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 523
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLongPressUpdateInterval:J

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 281
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    .line 301
    const/high16 v0, -0x80000000

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    .line 387
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mHasSelectorWheel:Z

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    .line 443
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSoftInputEnabled:Z

    .line 524
    sget v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->DEFAULT_STYLE_RESOURCE_ID:I

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 525
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 535
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLongPressUpdateInterval:J

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 281
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    .line 301
    const/high16 v0, -0x80000000

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    .line 387
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mHasSelectorWheel:Z

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    .line 443
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSoftInputEnabled:Z

    .line 536
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 537
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1200(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1202(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1300(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1400(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1500(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)J
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget-wide v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1600(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSoftInputEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->showSoftInput()V

    return-void
.end method

.method static synthetic access$1802(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mIgnoreMoveEvents:Z

    return p1
.end method

.method static synthetic access$500()[C
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 86
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    return v0
.end method

.method static synthetic access$900(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;II)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postSetSelectionCommand(II)V

    return-void
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1500
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1501
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->moveToFinalScrollerPosition(Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1502
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->moveToFinalScrollerPosition(Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;)Z

    .line 1504
    :cond_0
    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPreviousScrollerY:I

    .line 1505
    if-eqz p1, :cond_1

    .line 1506
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->startScroll(IIIII)V

    .line 1510
    :goto_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    .line 1518
    return-void

    .line 1508
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1619
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1620
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1619
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1622
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1623
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1624
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    .line 1626
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1627
    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->ensureCachedScrollSelectorValue(I)V

    .line 1628
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1635
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1636
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1637
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1651
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1641
    :cond_1
    const-string v2, ""

    .line 1650
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1643
    :cond_2
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1644
    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int v1, p1, v3

    .line 1645
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1646
    goto :goto_1

    .line 1647
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1885
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 1886
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 1887
    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPreviousScrollerY:I

    .line 1888
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 1889
    if-lez v4, :cond_2

    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 1891
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->startScroll(IIIII)V

    .line 1892
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    .line 1893
    const/4 v1, 0x1

    .line 1895
    :cond_1
    return v1

    .line 1889
    :cond_2
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1575
    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPreviousScrollerY:I

    .line 1577
    if-lez p1, :cond_0

    .line 1578
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->fling(IIIIIIII)V

    .line 1583
    :goto_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    .line 1584
    return-void

    .line 1580
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1654
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFormatter:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFormatter:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1769
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1771
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1795
    :goto_0
    return v1

    .line 1776
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1778
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1779
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1780
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1776
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1789
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1772
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 1795
    :goto_2
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    goto :goto_0

    .line 1790
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1590
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1591
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1595
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1592
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1593
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1068
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1069
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1072
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1075
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1604
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1606
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1607
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1608
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    .line 1610
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1611
    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->ensureCachedScrollSelectorValue(I)V

    .line 1612
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setVerticalFadingEdgeEnabled(Z)V

    .line 1539
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setFadingEdgeLength(I)V

    .line 1540
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1521
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeSelectorWheelIndices()V

    .line 1522
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    .line 1523
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTextSize:I

    mul-int v4, v5, v6

    .line 1524
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1525
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1526
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorTextGapHeight:I

    .line 1527
    iget v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTextSize:I

    iget v6, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    .line 1530
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1531
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    .line 1533
    iget v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    iput v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    .line 1534
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 1535
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1451
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1452
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    .line 1453
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getValue()I

    move-result v0

    .line 1454
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1455
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1456
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1457
    invoke-direct {p0, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1459
    :cond_0
    aput v2, v3, v1

    .line 1460
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->ensureCachedScrollSelectorValue(I)V

    .line 1454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1462
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1374
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1385
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1377
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1378
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1379
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1387
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1383
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1385
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1379
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;)Z
    .locals 7
    .param p1, "scroller"    # Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 704
    invoke-virtual {p1, v3}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->forceFinished(Z)V

    .line 705
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 706
    .local v0, "amountToScroll":I
    iget v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 707
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 708
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 709
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 710
    if-lez v2, :cond_1

    .line 711
    iget v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 716
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 717
    invoke-virtual {p0, v4, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->scrollBy(II)V

    .line 720
    :goto_1
    return v3

    .line 713
    :cond_1
    iget v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 720
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1698
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mOnValueChangeListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mOnValueChangeListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;->onValueChange(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;II)V

    .line 1701
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1562
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    .line 1566
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mOnScrollListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mOnScrollListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;->onScrollStateChange(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;)V
    .locals 2
    .param p1, "scroller"    # Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    .prologue
    .line 1546
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    if-ne p1, v0, :cond_2

    .line 1547
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 1550
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->onScrollStateChange(I)V

    .line 1556
    :cond_1
    :goto_0
    return-void

    .line 1552
    :cond_2
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1553
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 1732
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1733
    new-instance v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;-><init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    .line 1737
    :goto_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1738
    return-void

    .line 1735
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1709
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1710
    new-instance v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;-><init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    .line 1714
    :goto_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->access$200(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1715
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1716
    return-void

    .line 1712
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 1803
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1804
    new-instance v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;-><init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    .line 1808
    :goto_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->access$302(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;I)I

    .line 1809
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->access$402(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;I)I

    .line 1810
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->post(Ljava/lang/Runnable;)Z

    .line 1811
    return-void

    .line 1806
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1756
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1757
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSetSelectionCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1759
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1760
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1762
    :cond_2
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->cancel()V

    .line 1763
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBeginSoftInputOnLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1747
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mChangeCurrentByOneFromLongPressCommand:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1725
    :cond_0
    return-void
.end method

.method public static resolveSizeAndStateInternal(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 1425
    move v0, p0

    .line 1426
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1427
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1428
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 1443
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 1430
    :sswitch_0
    move v0, p0

    .line 1431
    goto :goto_0

    .line 1433
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 1434
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 1436
    :cond_0
    move v0, p0

    .line 1438
    goto :goto_0

    .line 1440
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 1428
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1403
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1404
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1405
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->resolveSizeAndStateInternal(III)I

    move-result p2

    .line 1407
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1471
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1489
    :goto_0
    return-void

    .line 1475
    :cond_0
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1476
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1481
    :goto_1
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    .line 1482
    .local v0, "previous":I
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    .line 1483
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 1484
    if-eqz p2, :cond_1

    .line 1485
    invoke-direct {p0, v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->notifyChange(II)V

    .line 1487
    :cond_1
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeSelectorWheelIndices()V

    .line 1488
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    goto :goto_0

    .line 1478
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1479
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1054
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1055
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1059
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1060
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1062
    :cond_0
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1081
    iget-boolean v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    const/4 v4, 0x0

    .line 1085
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1086
    const/4 v3, 0x0

    .line 1087
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1088
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1089
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1090
    move v3, v1

    .line 1087
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1093
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1094
    .local v5, "numberOfDigits":I
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    .line 1095
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1096
    add-int/lit8 v5, v5, 0x1

    .line 1097
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1099
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1109
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1110
    iget v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1111
    iget v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1112
    iput v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    .line 1116
    :goto_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    goto :goto_0

    .line 1101
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1102
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1103
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1104
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1105
    float-to-int v4, v6

    .line 1102
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1114
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinWidth:I

    iput v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1683
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1685
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1686
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1687
    const/4 v1, 0x1

    .line 1690
    :goto_1
    return v1

    .line 1683
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1690
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1658
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1659
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1661
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 1667
    :goto_0
    return-void

    .line 1664
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1665
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 895
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    .line 896
    .local v1, "scroller":Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    .line 898
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->computeScrollOffset()Z

    .line 903
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->getCurrY()I

    move-result v0

    .line 904
    .local v0, "currentScrollerY":I
    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 905
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->getStartY()I

    move-result v2

    iput v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPreviousScrollerY:I

    .line 907
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->scrollBy(II)V

    .line 908
    iput v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPreviousScrollerY:I

    .line 909
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 910
    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->onScrollerFinished(Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;)V

    goto :goto_0

    .line 912
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 862
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 863
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 869
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 866
    :sswitch_0
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeAllCallbacks()V

    goto :goto_0

    .line 863
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 851
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 857
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 854
    :pswitch_1
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeAllCallbacks()V

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 875
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 881
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 878
    :pswitch_1
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeAllCallbacks()V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1301
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1185
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1296
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    return v0
.end method

.method public initialise(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 542
    sget-object v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v13, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 544
    .local v3, "attributesArray":Landroid/content/res/TypedArray;
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaInternalLayout:I

    sget v13, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->DEFAULT_LAYOUT_RESOURCE_ID:I

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 547
    .local v10, "layoutResId":I
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaSolidColor:I

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSolidColor:I

    .line 549
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaSelectionDivider:I

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 551
    const/4 v12, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    .line 553
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 551
    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v8, v12

    .line 554
    .local v8, "defSelectionDividerHeight":I
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaSelectionDividerHeight:I

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividerHeight:I

    .line 557
    const/4 v12, 0x1

    const/high16 v13, 0x42400000    # 48.0f

    .line 559
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 557
    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v7, v12

    .line 560
    .local v7, "defSelectionDividerDistance":I
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaSelectionDividersDistance:I

    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividersDistance:I

    .line 563
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaInternalMinHeight:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinHeight:I

    .line 566
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaInternalMaxHeight:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxHeight:I

    .line 568
    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinHeight:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxHeight:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxHeight:I

    if-le v12, v13, :cond_0

    .line 570
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "minHeight > maxHeight"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 573
    :cond_0
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaInternalMinWidth:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinWidth:I

    .line 576
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaInternalMaxWidth:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    .line 578
    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    if-le v12, v13, :cond_1

    .line 580
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "minWidth > maxWidth"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 583
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mComputeMaxWidth:Z

    .line 585
    sget v12, Lnz/co/jsalibrary/android/R$styleable;->JSANumberPickerCompat_jsaVirtualButtonPressedDrawable:I

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 590
    new-instance v12, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;-><init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    .line 597
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setWillNotDraw(Z)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 601
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v10, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 604
    sget v12, Lnz/co/jsalibrary/android/R$id;->numberpicker_input:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    .line 605
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    new-instance v13, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$2;-><init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;

    invoke-direct/range {v15 .. v16}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;-><init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 620
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 623
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 624
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTouchSlop:I

    .line 625
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinimumFlingVelocity:I

    .line 626
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v12

    div-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaximumFlingVelocity:I

    .line 628
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getTextSize()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTextSize:I

    .line 631
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 632
    .local v11, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 633
    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 634
    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 635
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 636
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 637
    .local v5, "colors":Landroid/content/res/ColorStateList;
    sget-object v12, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->ENABLED_STATE_SET:[I

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 638
    .local v4, "color":I
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    move-object/from16 v0, p0

    iput-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 642
    new-instance v12, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v12, v13, v14, v15}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    .line 643
    new-instance v12, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x40200000    # 2.5f

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v12, v13, v14}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    .line 645
    invoke-direct/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 646
    return-void

    .line 583
    .end local v4    # "color":I
    .end local v5    # "colors":Landroid/content/res/ColorStateList;
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "paint":Landroid/graphics/Paint;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public isSoftInputEnabled()Z
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSoftInputEnabled:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 1306
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeAllCallbacks()V

    .line 1307
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1315
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v9, v11

    .line 1316
    .local v9, "x":F
    move-object/from16 v0, p0

    iget v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    int-to-float v10, v11

    .line 1319
    .local v10, "y":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    if-nez v11, :cond_1

    .line 1321
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDecrementVirtualButtonPressed:Z

    if-eqz v11, :cond_0

    .line 1322
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1323
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTopSelectionDividerTop:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1326
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mIncrementVirtualButtonPressed:Z

    if-eqz v11, :cond_1

    .line 1327
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1328
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBottomSelectionDividerBottom:I

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v14

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getBottom()I

    move-result v15

    .line 1328
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1335
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    .line 1336
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v6

    if-ge v3, v11, :cond_4

    .line 1337
    aget v5, v6, v3

    .line 1338
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1344
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v3, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_3

    .line 1345
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1347
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1336
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1351
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_5

    .line 1353
    move-object/from16 v0, p0

    iget v8, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTopSelectionDividerTop:I

    .line 1354
    .local v8, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividerHeight:I

    add-int v2, v8, v11

    .line 1355
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v8, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1359
    move-object/from16 v0, p0

    iget v1, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBottomSelectionDividerBottom:I

    .line 1360
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividerHeight:I

    sub-int v7, v1, v11

    .line 1361
    .local v7, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v7, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1364
    .end local v1    # "bottomOfBottomDivider":I
    .end local v2    # "bottomOfTopDivider":I
    .end local v7    # "topOfBottomDivider":I
    .end local v8    # "topOfTopDivider":I
    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 725
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    :goto_0
    return v1

    .line 728
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 729
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 731
    :pswitch_0
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeAllCallbacks()V

    .line 732
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventY:F

    iput v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownOrMoveEventY:F

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventTime:J

    .line 735
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mIgnoreMoveEvents:Z

    .line 736
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mShowSoftInputOnTap:Z

    .line 738
    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventY:F

    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 739
    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    if-nez v3, :cond_1

    .line 740
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->buttonPressDelayed(I)V

    .line 750
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 751
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 752
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual {v3, v2}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->forceFinished(Z)V

    .line 753
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual {v3, v2}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->forceFinished(Z)V

    .line 754
    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->onScrollStateChange(I)V

    :goto_2
    move v1, v2

    .line 770
    goto :goto_0

    .line 743
    :cond_2
    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventY:F

    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 744
    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    if-nez v3, :cond_1

    .line 745
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    invoke-virtual {v3, v2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 755
    :cond_3
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 756
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFlingScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->forceFinished(Z)V

    .line 757
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mAdjustScroller:Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/widget/compat/JSAScrollerCompat;->forceFinished(Z)V

    goto :goto_2

    .line 758
    :cond_4
    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventY:F

    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 759
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->hideSoftInput()V

    .line 761
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    .line 760
    invoke-direct {p0, v1, v4, v5}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_2

    .line 762
    :cond_5
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventY:F

    iget v3, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    .line 763
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->hideSoftInput()V

    .line 765
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v4, v1

    .line 764
    invoke-direct {p0, v2, v4, v5}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_2

    .line 767
    :cond_6
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mShowSoftInputOnTap:Z

    .line 768
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postBeginSoftInputOnLongPressCommand()V

    goto :goto_2

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 654
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMeasuredWidth()I

    move-result v7

    .line 655
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMeasuredHeight()I

    move-result v6

    .line 658
    .local v6, "msrdHght":I
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 659
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 660
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 661
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 662
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 663
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 664
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 666
    if-eqz p1, :cond_0

    .line 668
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeSelectorWheel()V

    .line 669
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeFadingEdges()V

    .line 670
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getHeight()I

    move-result v8

    iget v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTopSelectionDividerTop:I

    .line 672
    iget v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTopSelectionDividerTop:I

    iget v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mBottomSelectionDividerBottom:I

    .line 675
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 684
    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->makeMeasureSpec(II)I

    move-result v2

    .line 685
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->makeMeasureSpec(II)I

    move-result v1

    .line 686
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 688
    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinWidth:I

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 690
    .local v3, "widthSize":I
    iget v4, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinHeight:I

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 692
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setMeasuredDimension(II)V

    .line 693
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 778
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 781
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_0

    .line 782
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 784
    :cond_0
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 786
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 845
    :cond_1
    :goto_0
    const/4 v10, 0x1

    .end local v0    # "action":I
    :goto_1
    return v10

    .line 779
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 788
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mIgnoreMoveEvents:Z

    if-nez v10, :cond_1

    .line 791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 792
    .local v1, "currentMoveY":F
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 793
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 794
    .local v2, "deltaDownY":I
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 795
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeAllCallbacks()V

    .line 796
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->onScrollStateChange(I)V

    .line 803
    .end local v2    # "deltaDownY":I
    :cond_3
    :goto_2
    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 799
    :cond_4
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 800
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->scrollBy(II)V

    .line 801
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    goto :goto_2

    .line 806
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeBeginSoftInputCommand()V

    .line 807
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->removeChangeCurrentByOneFromLongPress()V

    .line 808
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    invoke-virtual {v10}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->cancel()V

    .line 809
    iget-object v9, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 810
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 811
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 812
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_5

    .line 813
    invoke-direct {p0, v7}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->fling(I)V

    .line 814
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->onScrollStateChange(I)V

    .line 841
    :goto_3
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 842
    const/4 v10, 0x0

    iput-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 816
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 817
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 818
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 819
    .local v4, "deltaTime":J
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mTouchSlop:I

    if-gt v3, v10, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_9

    .line 820
    iget-boolean v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSoftInputEnabled:Z

    if-eqz v10, :cond_7

    .line 821
    const/4 v10, 0x0

    iput-boolean v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mShowSoftInputOnTap:Z

    .line 822
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->showSoftInput()V

    .line 839
    :cond_6
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->onScrollStateChange(I)V

    goto :goto_3

    .line 824
    :cond_7
    iget v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 826
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_8

    .line 827
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->changeValueByOne(Z)V

    .line 828
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 830
    :cond_8
    if-gez v8, :cond_6

    .line 831
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->changeValueByOne(Z)V

    .line 832
    iget-object v10, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mPressedStateHelper:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 837
    .end local v8    # "selectorIndexOffset":I
    :cond_9
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 930
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    .line 931
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 933
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 938
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    goto :goto_0

    .line 941
    :cond_2
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    .line 942
    :cond_3
    :goto_1
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 943
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    .line 944
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->decrementSelectorIndices([I)V

    .line 945
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValueInternal(IZ)V

    .line 946
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 947
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    goto :goto_1

    .line 950
    :cond_4
    :goto_2
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 951
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    .line 952
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->incrementSelectorIndices([I)V

    .line 953
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValueInternal(IZ)V

    .line 954
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 955
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInitialScrollOffset:I

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1260
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1263
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    .line 1264
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setMinValue(I)V

    .line 1272
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setMaxValue(I)V

    .line 1277
    :goto_1
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 1278
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeSelectorWheelIndices()V

    .line 1279
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1275
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 918
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 925
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 926
    return-void
.end method

.method public setFormatter(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

    .prologue
    .line 996
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFormatter:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

    if-ne p1, v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 999
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mFormatter:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$Formatter;

    .line 1000
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeSelectorWheelIndices()V

    .line 1001
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1227
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1230
    :cond_0
    if-gez p1, :cond_1

    .line 1231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1233
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    .line 1234
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1235
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    .line 1237
    :cond_2
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1238
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setWrapSelectorWheel(Z)V

    .line 1239
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeSelectorWheelIndices()V

    .line 1240
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 1241
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->tryComputeMaxWidth()V

    .line 1242
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    goto :goto_0

    .line 1237
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1194
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1197
    :cond_0
    if-gez p1, :cond_1

    .line 1198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1200
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    .line 1201
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    if-le v1, v2, :cond_2

    .line 1202
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    iput v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mValue:I

    .line 1204
    :cond_2
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1205
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setWrapSelectorWheel(Z)V

    .line 1206
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initializeSelectorWheelIndices()V

    .line 1207
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->updateInputTextView()Z

    .line 1208
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->tryComputeMaxWidth()V

    .line 1209
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->invalidate()V

    goto :goto_0

    .line 1204
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1167
    iput-wide p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mLongPressUpdateInterval:J

    .line 1168
    return-void
.end method

.method public setOnScrollListener(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;

    .prologue
    .line 981
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mOnScrollListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnScrollListener;

    .line 982
    return-void
.end method

.method public setOnValueChangedListener(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;

    .prologue
    .line 972
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mOnValueChangeListener:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$OnValueChangeListener;

    .line 973
    return-void
.end method

.method public setSoftInputEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1047
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSoftInputEnabled:Z

    .line 1048
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1033
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->setValueInternal(IZ)V

    .line 1034
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1150
    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMaxValue:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1151
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1152
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->mWrapSelectorWheel:Z

    .line 1154
    :cond_1
    return-void

    .line 1150
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
