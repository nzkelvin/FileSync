.class public Lnz/co/jsalibrary/android/widget/JSACalendarView;
.super Landroid/widget/LinearLayout;
.source "JSACalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$AndroidText1RowWrapper;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsRowWrapper;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsRowWrapper;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysRowWrapper;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysArrayAdapter;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysRowWrapper;,
        Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final GRID_COLUMN_COUNT:I = 0x7

.field private static final GRID_ROW_COUNT:I = 0x6

.field private static final GRID_SIZE:I = 0x2a

.field private static mCalendar:Ljava/util/Calendar;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCyclicViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

.field private mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

.field private mDaysGridView:Landroid/widget/GridView;

.field private mDaysInDifferentMonthLayoutResourceId:I

.field private mDaysInMonthLayoutResourceId:I

.field private mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

.field private mMonthNames:[Ljava/lang/String;

.field private mMonthSpinner:Landroid/widget/Spinner;

.field private mMonthSpinnerDropDownLayoutResourceId:I

.field private mMonthSpinnerItemLayoutResourceId:I

.field private mMonthsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;

.field private mNextMonthButton:Landroid/widget/ImageButton;

.field private mNextMonthImageBackgroundResourceId:I

.field private mPreviousMonthButton:Landroid/widget/ImageButton;

.field private mPreviousMonthImageBackgroundResourceId:I

.field private mSelectedDayLayoutResourceId:I

.field private mStartYear:I

.field private mWeekdayNames:[Ljava/lang/String;

.field private mWeekdayNamesLayoutResourceId:I

.field private mWeekdaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysArrayAdapter;

.field private mWeekdaysGridView:Landroid/widget/GridView;

.field private mYearSpinner:Landroid/widget/Spinner;

.field private mYearSpinnerDropDownLayoutResourceId:I

.field private mYearSpinnerItemLayoutResourceId:I

.field private mYearsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Calendar;I)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Calendar;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->isDayInMonth(Ljava/util/Calendar;I)Z

    move-result v0

    return v0
.end method

.method private createDaysAdapter()V
    .locals 5

    .prologue
    .line 320
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysInMonthLayoutResourceId:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysInDifferentMonthLayoutResourceId:I

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mSelectedDayLayoutResourceId:I

    aput v4, v2, v3

    sget-object v3, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysOfMonthPadded(Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;-><init>(Landroid/content/Context;[ILjava/util/List;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    .line 321
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    return-void
.end method

.method private createMonthsAdapter()V
    .locals 4

    .prologue
    .line 297
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinnerItemLayoutResourceId:I

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthNames:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;

    .line 298
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;

    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinnerDropDownLayoutResourceId:I

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;->setDropDownViewResource(I)V

    .line 299
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 300
    return-void
.end method

.method private createWeekdaysAdapter()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysArrayAdapter;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdayNamesLayoutResourceId:I

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdayNames:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysArrayAdapter;

    .line 289
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    return-void
.end method

.method private createYearsAdapter()V
    .locals 6

    .prologue
    .line 307
    sget-object v3, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 308
    .local v1, "year":I
    iget v3, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mStartYear:I

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/Integer;

    .line 309
    .local v2, "years":[Ljava/lang/Integer;
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    sub-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 310
    :cond_0
    new-instance v3, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    iget v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinnerItemLayoutResourceId:I

    invoke-direct {v3, v4, v5, v2}, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Integer;)V

    iput-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;

    .line 311
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;

    iget v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinnerDropDownLayoutResourceId:I

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;->setDropDownViewResource(I)V

    .line 312
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 313
    return-void
.end method

.method private static getDaysOfMonthPadded(Ljava/util/Calendar;)Ljava/util/List;
    .locals 10
    .param p0, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    .line 331
    invoke-virtual {p0, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 332
    .local v1, "daysInMonth":I
    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysPaddedBefore(Ljava/util/Calendar;)I

    move-result v5

    .line 333
    .local v5, "numBefore":I
    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysPaddedAfter(Ljava/util/Calendar;)I

    move-result v4

    .line 336
    .local v4, "numAfter":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 337
    .local v6, "tempCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 338
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 339
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 342
    .local v2, "daysInPreviousMonth":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "days":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sub-int v7, v2, v5

    add-int/lit8 v3, v7, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-gt v3, v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-gt v3, v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 346
    :cond_2
    return-object v0
.end method

.method private static getDaysPaddedAfter(Ljava/util/Calendar;)I
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 377
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 378
    .local v0, "daysInMonth":I
    rsub-int/lit8 v1, v0, 0x2a

    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysPaddedBefore(Ljava/util/Calendar;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getDaysPaddedBefore(Ljava/util/Calendar;)I
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 366
    .local v0, "tempCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 367
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 368
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private static isDayInMonth(Ljava/util/Calendar;I)Z
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "index"    # I

    .prologue
    .line 354
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 355
    .local v0, "daysInMonth":I
    invoke-static {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysPaddedBefore(Ljava/util/Calendar;)I

    move-result v1

    .line 356
    .local v1, "firstCurrentMonthIndex":I
    if-lt p1, v1, :cond_0

    sub-int v2, p1, v1

    if-ge v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected buildLayout()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 151
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, "headerLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v2, "headerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v4, "wrapParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthButton:Landroid/widget/ImageButton;

    .line 157
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthButton:Landroid/widget/ImageButton;

    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthImageBackgroundResourceId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 159
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthButton:Landroid/widget/ImageButton;

    .line 160
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthButton:Landroid/widget/ImageButton;

    iget v6, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthImageBackgroundResourceId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 163
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v3, "weightParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 165
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 166
    new-instance v5, Landroid/widget/Spinner;

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinner:Landroid/widget/Spinner;

    .line 167
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v5, Landroid/widget/Spinner;

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinner:Landroid/widget/Spinner;

    .line 169
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v5, Landroid/widget/GridView;

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysGridView:Landroid/widget/GridView;

    .line 177
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v0, "gridParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 185
    new-instance v5, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCyclicViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    .line 186
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCyclicViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {v5, v0}, Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->addView(Landroid/view/View;)V

    .line 190
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysGridView:Landroid/widget/GridView;

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->addView(Landroid/view/View;)V

    .line 192
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCyclicViewPager:Lnz/co/jsalibrary/android/widget/JSACyclicViewPager;

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->addView(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0, v11}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->setOrientation(I)V

    .line 195
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->initialiseViews()V

    .line 197
    invoke-virtual {p0, v8}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    .line 198
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateView()V

    .line 199
    return-void
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartYear()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mStartYear:I

    return v0
.end method

.method protected initialiseAttributes(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x109000f

    const v5, 0x1090008

    const v4, 0x1090003

    .line 111
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaMonthNames:I

    sget v3, Lnz/co/jsalibrary/android/R$array;->JSACalendarView_month_names:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthNames:[Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaWeekdayNames:I

    sget v3, Lnz/co/jsalibrary/android/R$array;->JSACalendarView_weekday_names:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdayNames:[Ljava/lang/String;

    .line 118
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaWeekdayNamesLayout:I

    const v2, 0x109000c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdayNamesLayoutResourceId:I

    .line 119
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaDaysLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysInMonthLayoutResourceId:I

    .line 120
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaDifferentMonthDaysLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysInDifferentMonthLayoutResourceId:I

    .line 121
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaSelectedDayLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mSelectedDayLayoutResourceId:I

    .line 122
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaMonthSpinnerItemView:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinnerItemLayoutResourceId:I

    .line 123
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaYearSpinnerItemView:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinnerItemLayoutResourceId:I

    .line 124
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaMonthSpinnerDropdownView:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinnerDropDownLayoutResourceId:I

    .line 125
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaYearSpinnerDropdownView:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinnerDropDownLayoutResourceId:I

    .line 128
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaPreviousMonthImage:I

    const v2, 0x1080025

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthImageBackgroundResourceId:I

    .line 129
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaNextMonthImage:I

    const v2, 0x1080022

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthImageBackgroundResourceId:I

    .line 132
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACalendarView_jsaStartYear:I

    const/16 v2, 0x76c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mStartYear:I

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    return-void
.end method

.method protected initialiseViews()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x2

    .line 206
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 207
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 208
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 209
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 211
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysGridView:Landroid/widget/GridView;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSACalendarView$1;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$1;-><init>(Lnz/co/jsalibrary/android/widget/JSACalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthButton:Landroid/widget/ImageButton;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSACalendarView$2;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$2;-><init>(Lnz/co/jsalibrary/android/widget/JSACalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthButton:Landroid/widget/ImageButton;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSACalendarView$3;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$3;-><init>(Lnz/co/jsalibrary/android/widget/JSACalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinner:Landroid/widget/Spinner;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSACalendarView$4;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$4;-><init>(Lnz/co/jsalibrary/android/widget/JSACalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 237
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinner:Landroid/widget/Spinner;

    new-instance v1, Lnz/co/jsalibrary/android/widget/JSACalendarView$5;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$5;-><init>(Lnz/co/jsalibrary/android/widget/JSACalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 244
    return-void
.end method

.method protected onDayClick(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "day"    # I

    .prologue
    .line 410
    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysPaddedBefore(Ljava/util/Calendar;)I

    move-result v0

    .line 412
    .local v0, "daysBefore":I
    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, p1}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->isDayInMonth(Ljava/util/Calendar;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v2, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    if-gt p1, v0, :cond_2

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 413
    :cond_0
    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 415
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    sget-object v2, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;->onDaySelected(Ljava/util/Date;)V

    .line 416
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    .line 417
    return-void

    .line 412
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 143
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->buildLayout()V

    .line 144
    return-void
.end method

.method protected onMonthSelected(I)V
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 392
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 393
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;->onDateChanged(Ljava/util/Date;)V

    .line 394
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    .line 395
    return-void
.end method

.method protected onNextMonthClick()V
    .locals 3

    .prologue
    .line 398
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 399
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;->onDateChanged(Ljava/util/Date;)V

    .line 400
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    .line 401
    return-void
.end method

.method protected onPreviousMonthClick()V
    .locals 3

    .prologue
    .line 404
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 405
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;->onDateChanged(Ljava/util/Date;)V

    .line 406
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    .line 407
    return-void
.end method

.method protected onYearSelected(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 386
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 387
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;->onDateChanged(Ljava/util/Date;)V

    .line 388
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    .line 389
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 428
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    sput-object p1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    goto :goto_0
.end method

.method public setCalendarListener(Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    .prologue
    .line 569
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mListener:Lnz/co/jsalibrary/android/widget/JSACalendarView$CalendarListener;

    .line 570
    return-void
.end method

.method public setStartYear(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 438
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mStartYear:I

    if-ne v0, p1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mStartYear:I

    .line 440
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->createYearsAdapter()V

    .line 441
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateListAdapters(Z)V

    goto :goto_0
.end method

.method protected updateListAdapters(Z)V
    .locals 2
    .param p1, "recreateDaysAdapter"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->createDaysAdapter()V

    .line 253
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$MonthsArrayAdapter;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->createMonthsAdapter()V

    .line 254
    :cond_2
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->createYearsAdapter()V

    .line 255
    :cond_3
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mWeekdaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$WeekdaysArrayAdapter;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->createWeekdaysAdapter()V

    .line 258
    :cond_4
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->clear()V

    .line 259
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->clearSelectedIndices()V

    .line 261
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    sget-object v1, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysOfMonthPadded(Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->addAllSupport(Ljava/util/Collection;)V

    .line 263
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->updateView()V

    .line 264
    return-void
.end method

.method protected updateView()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 267
    sget-object v4, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 268
    .local v3, "year":I
    sget-object v4, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 269
    .local v2, "month":I
    sget-object v4, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 270
    .local v0, "december":I
    sget-object v4, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    .line 273
    .local v1, "january":I
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 275
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mYearsAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnz/co/jsalibrary/android/widget/JSACalendarView$YearsArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 277
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mDaysAdapter:Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;

    sget-object v7, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sget-object v8, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8}, Lnz/co/jsalibrary/android/widget/JSACalendarView;->getDaysPaddedBefore(Ljava/util/Calendar;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Lnz/co/jsalibrary/android/widget/JSACalendarView$DaysArrayAdapter;->setSelectedIndex(I)V

    .line 279
    iget-object v7, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mNextMonthButton:Landroid/widget/ImageButton;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 280
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mPreviousMonthButton:Landroid/widget/ImageButton;

    iget v7, p0, Lnz/co/jsalibrary/android/widget/JSACalendarView;->mStartYear:I

    if-le v3, v7, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 281
    return-void

    .line 279
    :cond_1
    if-ge v2, v0, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0

    .line 280
    :cond_3
    if-gt v2, v1, :cond_0

    move v5, v6

    goto :goto_1
.end method
