.class public Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.source "JSADateTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$DialogFragment;
    }
.end annotation


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mIncludeCalendar:Z

.field private mIncludeTime:Z

.field private mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;III)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->updateDate(III)V

    return-void
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;II)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->updateTime(II)V

    return-void
.end method

.method private static correctShonkyDatePicker(Landroid/widget/DatePicker;)V
    .locals 9
    .param p0, "picker"    # Landroid/widget/DatePicker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    const-string v4, "android.widget.NumberPicker"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    .line 275
    :goto_0
    return-void

    .line 263
    :cond_0
    const-class v4, Landroid/widget/DatePicker;

    const-string v5, "mDayPicker"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 264
    .local v0, "dayNumberPicker":Landroid/widget/NumberPicker;
    const-class v4, Landroid/widget/DatePicker;

    const-string v5, "mMonthPicker"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 265
    .local v2, "monthNumberPicker":Landroid/widget/NumberPicker;
    const-class v4, Landroid/widget/DatePicker;

    const-string v5, "mYearPicker"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 266
    .local v3, "yearNumberPicker":Landroid/widget/NumberPicker;
    const-class v4, Landroid/widget/NumberPicker;

    const-string v5, "mText"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 267
    const-class v4, Landroid/widget/NumberPicker;

    const-string v5, "mText"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 268
    const-class v4, Landroid/widget/NumberPicker;

    const-string v5, "mText"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 269
    const-class v4, Landroid/widget/NumberPicker;

    const-string v5, "setSpeed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-class v4, Landroid/widget/NumberPicker;

    const-string v5, "setSpeed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-class v4, Landroid/widget/NumberPicker;

    const-string v5, "setSpeed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 272
    .end local v0    # "dayNumberPicker":Landroid/widget/NumberPicker;
    .end local v2    # "monthNumberPicker":Landroid/widget/NumberPicker;
    .end local v3    # "yearNumberPicker":Landroid/widget/NumberPicker;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "exception":Ljava/lang/Exception;
    const-string v4, "error correcting shonky date picker"

    invoke-static {v4, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static correctShonkyTimePicker(Landroid/widget/TimePicker;)V
    .locals 8
    .param p0, "picker"    # Landroid/widget/TimePicker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    const-string v3, "android.widget.NumberPicker"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    .line 297
    :goto_0
    return-void

    .line 288
    :cond_0
    const-class v3, Landroid/widget/TimePicker;

    const-string v4, "mHourPicker"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 289
    .local v1, "hourNumberPicker":Landroid/widget/NumberPicker;
    const-class v3, Landroid/widget/TimePicker;

    const-string v4, "mMinutePicker"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 290
    .local v2, "minuteNumberPicker":Landroid/widget/NumberPicker;
    const-class v3, Landroid/widget/NumberPicker;

    const-string v4, "mText"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 291
    const-class v3, Landroid/widget/NumberPicker;

    const-string v4, "mText"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 292
    const-class v3, Landroid/widget/NumberPicker;

    const-string v4, "setSpeed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-class v3, Landroid/widget/NumberPicker;

    const-string v4, "setSpeed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 294
    .end local v1    # "hourNumberPicker":Landroid/widget/NumberPicker;
    .end local v2    # "minuteNumberPicker":Landroid/widget/NumberPicker;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "exception":Ljava/lang/Exception;
    const-string v3, "error correcting shonky time picker"

    invoke-static {v3, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static create(Landroid/content/Context;ILjava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    invoke-direct {v0, p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;-><init>(Landroid/content/Context;I)V

    .line 93
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "includeTime"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;ZLnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;ZLnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "includeTime"    # Z
    .param p4, "dialogConfigurator"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;

    .prologue
    .line 120
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p4}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)V

    .line 121
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/GregorianCalendar;

    .end local p2    # "calendar":Ljava/util/Calendar;
    invoke-direct {p2}, Ljava/util/GregorianCalendar;-><init>()V

    :cond_0
    invoke-virtual {v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setDate(Ljava/util/Calendar;)V

    .line 123
    invoke-virtual {v0, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setIncludeTime(Z)V

    .line 124
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isLarge(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setIncludeCalendar(Z)V

    .line 125
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "includeTime"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 107
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    invoke-static {p0, p1, v0, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Z)Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    move-result-object v1

    return-object v1
.end method

.method private updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 180
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 181
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 182
    return-void
.end method

.method private updateTime(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 186
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 187
    return-void
.end method

.method private updateView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    .line 191
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 192
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    if-eqz v1, :cond_1

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-boolean v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mIncludeCalendar:Z

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 193
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 194
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 195
    :cond_3
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mIncludeTime:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 196
    :cond_4
    return-void

    .line 195
    :cond_5
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 206
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 207
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    .line 208
    .local v1, "day":I
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    .line 209
    .local v2, "month":I
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    .line 210
    .local v3, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 211
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3, v2, v1}, Ljava/util/Calendar;->set(III)V

    .line 212
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 214
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "day":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    goto :goto_0
.end method

.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 134
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 135
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 136
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lnz/co/jsalibrary/android/R$layout;->jsa__datetime_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 138
    .local v4, "view":Landroid/view/View;
    sget v5, Lnz/co/jsalibrary/android/R$id;->datepicker:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/DatePicker;

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 139
    sget v5, Lnz/co/jsalibrary/android/R$id;->timepicker:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TimePicker;

    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 141
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 146
    .local v1, "calender":Ljava/util/Calendar;
    const/16 v5, 0x76d

    invoke-virtual {v1, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 147
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 150
    .end local v1    # "calender":Ljava/util/Calendar;
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    .line 151
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setView(Landroid/view/View;)V

    .line 153
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    new-instance v9, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$1;

    invoke-direct {v9, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;)V

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 159
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 160
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 161
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 162
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    new-instance v6, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$2;

    invoke-direct {v6, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$2;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 168
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog;->onCreate(Landroid/os/Bundle;)V

    .line 169
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-static {v5}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->correctShonkyDatePicker(Landroid/widget/DatePicker;)V

    .line 170
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v5}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->correctShonkyTimePicker(Landroid/widget/TimePicker;)V

    .line 171
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->updateView()V

    .line 172
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 234
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mCalendar:Ljava/util/Calendar;

    .line 237
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->updateView()V

    goto :goto_0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 228
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 229
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 230
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->setDate(Ljava/util/Calendar;)V

    .line 231
    return-void
.end method

.method public setIncludeCalendar(Z)V
    .locals 1
    .param p1, "includeCalendar"    # Z

    .prologue
    .line 247
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mIncludeCalendar:Z

    if-ne p1, v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mIncludeCalendar:Z

    .line 249
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->updateView()V

    goto :goto_0
.end method

.method public setIncludeTime(Z)V
    .locals 1
    .param p1, "includeTime"    # Z

    .prologue
    .line 241
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mIncludeTime:Z

    if-ne p1, v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->mIncludeTime:Z

    .line 243
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->updateView()V

    goto :goto_0
.end method
