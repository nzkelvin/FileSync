.class public Lnz/co/jsalibrary/android/util/JSACalendarUtil;
.super Ljava/lang/Object;
.source "JSACalendarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 125
    :cond_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->decodeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 126
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 127
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 129
    return-object v0
.end method

.method public static decodeCalendar(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "onParseException"    # Ljava/util/Calendar;

    .prologue
    .line 138
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->decodeCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 140
    .end local p1    # "onParseException":Ljava/util/Calendar;
    :goto_0
    return-object p1

    .line 139
    .restart local p1    # "onParseException":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "exception":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public static encodeCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 114
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isIdenticalDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x1

    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIdenticalDate(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 3
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 25
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 26
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 27
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 28
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 29
    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->isIdenticalDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static isToday(Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 56
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->isIdenticalDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 49
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 51
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->isToday(Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method public static isTomorrow(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 102
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 104
    .local v0, "tomorrowCalendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 105
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->isIdenticalDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method public static isTomorrow(Ljava/util/Date;)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 95
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->isTomorrow(Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method public static isYesterday(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 78
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 79
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 80
    .local v0, "yesterdayCalendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 81
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->isIdenticalDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method public static isYesterday(Ljava/util/Date;)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSACalendarUtil;->isYesterday(Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 150
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 151
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 153
    return-object v0
.end method
