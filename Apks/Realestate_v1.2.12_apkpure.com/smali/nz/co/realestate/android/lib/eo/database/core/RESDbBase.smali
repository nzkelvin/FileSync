.class public abstract Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
.super Lnz/co/jsalibrary/android/database/JSADbBase;
.source "RESDbBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Q:",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "U:",
        "Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;",
        ">",
        "Lnz/co/jsalibrary/android/database/JSADbBase",
        "<TT;TQ;TU;>;"
    }
.end annotation


# static fields
.field protected static final TABLE_REFRESH_NEVER:J = 0x7fffffffL

.field protected static final TABLE_REFRESH_ONE_DAY:J = 0x5265c00L

.field protected static final TABLE_REFRESH_TWO_WEEKS:J = 0x48190800L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<TT;TQ;TU;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;-><init>(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 35
    .local p0, "this":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<TT;TQ;TU;>;"
    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method public isTableRefreshRequired(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    .local p0, "this":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<TT;TQ;TU;>;"
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 41
    .local v0, "updateTimestamp":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->getTableRefreshFrequency()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateTableRefreshTimestamp(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    .local p0, "this":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase<TT;TQ;TU;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 47
    .local v2, "timestamp":J
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_update"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method
