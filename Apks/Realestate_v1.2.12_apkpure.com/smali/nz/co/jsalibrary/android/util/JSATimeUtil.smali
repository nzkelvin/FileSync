.class public Lnz/co/jsalibrary/android/util/JSATimeUtil;
.super Ljava/lang/Object;
.source "JSATimeUtil.java"


# static fields
.field public static final DATE_ENCODING_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmssSSSZ"

.field public static final SIMPLE_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAge(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "birth"    # Ljava/util/Calendar;

    .prologue
    .line 119
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->calculateAge(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static calculateAge(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 9
    .param p0, "birth"    # Ljava/util/Calendar;
    .param p1, "today"    # Ljava/util/Calendar;

    .prologue
    .line 154
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 155
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 156
    .end local p0    # "birth":Ljava/util/Calendar;
    .local v0, "birth":Ljava/util/Calendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 157
    .end local p1    # "today":Ljava/util/Calendar;
    .local v1, "today":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "date of birth is after today"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v8, v2, v3

    .line 159
    .local v8, "age":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le v2, v3, :cond_4

    add-int/lit8 v8, v8, -0x1

    .line 161
    :cond_3
    :goto_0
    return v8

    .line 160
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le v2, v3, :cond_3

    add-int/lit8 v8, v8, -0x1

    goto :goto_0
.end method

.method public static calculateAge(Ljava/util/Date;)I
    .locals 4
    .param p0, "birth"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 114
    .local v0, "birthCalendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->calculateAge(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    return v1
.end method

.method public static calculateAge(Ljava/util/Date;Ljava/util/Date;)I
    .locals 5
    .param p0, "birth"    # Ljava/util/Date;
    .param p1, "today"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 137
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 138
    .local v0, "birthCalendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 139
    .local v1, "todayCalendar":Ljava/util/Calendar;
    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->calculateAge(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    return v2
.end method

.method public static decodeDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "onParseException"    # Ljava/util/Date;

    .prologue
    .line 190
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->decodeDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 192
    .end local p1    # "onParseException":Ljava/util/Date;
    :goto_0
    return-object p1

    .line 191
    .restart local p1    # "onParseException":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "exception":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public static encodeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 170
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 171
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateInCalendarTimeZone(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 297
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 298
    :cond_0
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->formatDateInCalendarTimeZone(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateInCalendarTimeZone(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 317
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 318
    :cond_0
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->formatDateInTimeZone(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateInDeviceTimeZone(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 256
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 257
    :cond_0
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->formatDateInDeviceTimeZone(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateInDeviceTimeZone(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 277
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->formatDateInTimeZone(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateInTimeZone(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "timezone"    # Ljava/util/TimeZone;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 359
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 360
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 362
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDateInTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 340
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 341
    :cond_0
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->formatDateInTimeZone(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatHoursMinutesSeconds(I)Ljava/lang/String;
    .locals 8
    .param p0, "milliseconds"    # I

    .prologue
    const/16 v7, 0xa

    .line 82
    div-int/lit16 v0, p0, 0x3e8

    .line 83
    .local v0, "durationInSeconds":I
    div-int/lit16 v1, v0, 0xe10

    .line 84
    .local v1, "hours":I
    rem-int/lit16 v3, v0, 0xe10

    .line 85
    .local v3, "remainder":I
    div-int/lit8 v2, v3, 0x3c

    .line 86
    .local v2, "minutes":I
    rem-int/lit8 v5, v3, 0x3c

    .line 88
    .local v5, "seconds":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-lez v1, :cond_1

    .line 90
    if-ge v1, v7, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_1
    if-ge v2, v7, :cond_2

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 97
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    if-ge v5, v7, :cond_3

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static humanReadableDuration(J)Ljava/lang/String;
    .locals 2
    .param p0, "milliseconds"    # J

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->humanReadableDuration(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static humanReadableDuration(JZ)Ljava/lang/String;
    .locals 16
    .param p0, "milliseconds"    # J
    .param p2, "includeMilliseconds"    # Z

    .prologue
    .line 50
    const-wide/16 v12, 0x3e8

    rem-long v6, p0, v12

    .line 51
    .local v6, "millis":J
    const-wide/16 v12, 0x3e8

    div-long p0, p0, v12

    .line 52
    const-wide/16 v12, 0x3c

    rem-long v10, p0, v12

    .line 53
    .local v10, "seconds":J
    const-wide/16 v12, 0x3c

    div-long p0, p0, v12

    .line 54
    const-wide/16 v12, 0x3c

    rem-long v8, p0, v12

    .line 55
    .local v8, "minutes":J
    const-wide/16 v12, 0x3c

    div-long p0, p0, v12

    .line 56
    const-wide/16 v12, 0x18

    rem-long v2, p0, v12

    .line 57
    .local v2, "hours":J
    const-wide/16 v12, 0x18

    div-long p0, p0, v12

    .line 58
    move-wide/from16 v0, p0

    .line 59
    .local v0, "days":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v12, 0x0

    cmp-long v5, v0, v12

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v14, 0x1

    cmp-long v5, v0, v14

    if-nez v5, :cond_4

    const-string v5, " day"

    :goto_0
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v14, 0x1

    cmp-long v5, v2, v14

    if-nez v5, :cond_5

    const-string v5, " hour"

    :goto_1
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v14, 0x1

    cmp-long v5, v8, v14

    if-nez v5, :cond_6

    const-string v5, " minute"

    :goto_2
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v14, 0x1

    cmp-long v5, v10, v14

    if-nez v5, :cond_7

    const-string v5, " second"

    :goto_3
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3
    if-nez p2, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "less than a second"

    .line 66
    :goto_4
    return-object v5

    .line 60
    :cond_4
    const-string v5, " days"

    goto :goto_0

    .line 61
    :cond_5
    const-string v5, " hours"

    goto :goto_1

    .line 62
    :cond_6
    const-string v5, " minutes"

    goto :goto_2

    .line 63
    :cond_7
    const-string v5, " seconds"

    goto :goto_3

    .line 65
    :cond_8
    if-eqz p2, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_9

    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-eqz v5, :cond_a

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v14, 0x1

    cmp-long v5, v6, v14

    if-nez v5, :cond_b

    const-string v5, " millisecond"

    :goto_5
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_a
    const-string v5, " "

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 65
    :cond_b
    const-string v5, " milliseconds"

    goto :goto_5
.end method

.method public static parseDateInTimeZone(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "timezone"    # Ljava/util/TimeZone;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 387
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 388
    :cond_1
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 389
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 391
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 392
    return-object v0
.end method

.method public static roundMinutes(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 5
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "minutes"    # I

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 209
    .local v1, "unroundedMinutes":I
    rem-int v0, v1, p1

    .line 210
    .local v0, "mod":I
    div-int/lit8 v2, p1, 0x2

    if-gt v0, v2, :cond_0

    neg-int v2, v0

    :goto_0
    invoke-virtual {p0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 211
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v2, 0xe

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 213
    return-object p0

    .line 210
    :cond_0
    sub-int v2, p1, v0

    goto :goto_0
.end method

.method public static toTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 229
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "calendar cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "time zone cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 233
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 235
    return-object v0
.end method
