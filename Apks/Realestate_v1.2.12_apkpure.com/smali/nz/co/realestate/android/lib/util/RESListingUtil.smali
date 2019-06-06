.class public Lnz/co/realestate/android/lib/util/RESListingUtil;
.super Ljava/lang/Object;
.source "RESListingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "onParseException"    # Ljava/util/Date;

    .prologue
    .line 137
    :try_start_0
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    .line 138
    .local v1, "parser":Lorg/joda/time/format/DateTimeFormatter;
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 140
    .end local v1    # "parser":Lorg/joda/time/format/DateTimeFormatter;
    .end local p1    # "onParseException":Ljava/util/Date;
    :goto_0
    return-object p1

    .line 139
    .restart local p1    # "onParseException":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static encodeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 128
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->print(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPrice(D)Ljava/lang/String;
    .locals 6
    .param p0, "price"    # D

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%,.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPrice(I)Ljava/lang/String;
    .locals 5
    .param p0, "price"    # I

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%,d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPriceWithoutCommas(I)Ljava/lang/String;
    .locals 5
    .param p0, "price"    # I

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendarDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .param p0, "datetime"    # Ljava/util/Date;

    .prologue
    .line 149
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Date;-><init>(III)V

    return-object v0
.end method

.method public static getOpenHomeDateText(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE d MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenHomeDateText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;
    .locals 1
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 69
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeDateText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenHomeDateTimeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    iget-object v5, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 88
    :goto_0
    return-object v5

    .line 82
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v3

    .line 83
    .local v3, "startTime":Ljava/util/Date;
    if-nez v3, :cond_2

    const-string v5, ""

    goto :goto_0

    .line 84
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE d MMM"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "f1":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v5

    if-nez v5, :cond_3

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "ha"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "f2":Ljava/text/SimpleDateFormat;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "timeString":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 85
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v2    # "f2":Ljava/text/SimpleDateFormat;
    .end local v4    # "timeString":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "h:mma"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getOpenHomeTimesText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;
    .locals 1
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 44
    const-string v0, " - "

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeTimesText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenHomeTimesText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xc

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 48
    if-eqz p0, :cond_0

    iget-object v9, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    if-nez v9, :cond_1

    :cond_0
    const/4 v7, 0x0

    .line 61
    :goto_0
    return-object v7

    .line 50
    :cond_1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    .line 51
    .local v4, "parser":Lorg/joda/time/format/DateTimeFormatter;
    new-instance v5, Ljava/util/Date;

    iget-object v9, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 52
    .local v5, "start":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    iget-object v9, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_end:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 54
    .local v0, "end":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v9

    if-lt v9, v12, :cond_2

    move v3, v7

    .line 55
    .local v3, "isStartPM":Z
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v9

    if-lt v9, v12, :cond_3

    move v2, v7

    .line 57
    .local v2, "isEndPM":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "h"

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eq v3, v2, :cond_5

    const-string v7, "a"

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "startFormat":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v7

    if-nez v7, :cond_6

    const-string v1, "ha"

    .line 60
    .local v1, "endFormat":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .end local v1    # "endFormat":Ljava/lang/String;
    .end local v2    # "isEndPM":Z
    .end local v3    # "isStartPM":Z
    .end local v6    # "startFormat":Ljava/lang/String;
    :cond_2
    move v3, v8

    .line 54
    goto :goto_1

    .restart local v3    # "isStartPM":Z
    :cond_3
    move v2, v8

    .line 55
    goto :goto_2

    .line 57
    .restart local v2    # "isEndPM":Z
    :cond_4
    const-string v7, "h:mm"

    goto :goto_3

    :cond_5
    const-string v7, ""

    goto :goto_4

    .line 58
    .restart local v6    # "startFormat":Ljava/lang/String;
    :cond_6
    const-string v1, "h:mma"

    goto :goto_5

    .line 61
    .restart local v1    # "endFormat":Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-direct {v8, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static isListingOnPromotion(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z
    .locals 1
    .param p0, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 106
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->isOnPromotion(I)Z

    move-result v0

    return v0
.end method

.method public static isOnPromotion(I)Z
    .locals 2
    .param p0, "listingId"    # I

    .prologue
    .line 110
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lnz/co/realestate/android/lib/core/RESConstantsBase;->GOLDEN_PIN_IDS_DEBUG:[I

    .line 111
    .local v0, "goldenPins":[I
    :goto_0
    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v1

    return v1

    .line 110
    .end local v0    # "goldenPins":[I
    :cond_0
    sget-object v0, Lnz/co/realestate/android/lib/core/RESConstantsBase;->GOLDEN_PIN_IDS_LIVE:[I

    goto :goto_0
.end method

.method public static mapToBasicListing(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    new-instance v0, Lnz/co/realestate/android/lib/util/RESListingUtil$1;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/util/RESListingUtil$1;-><init>()V

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static openBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
