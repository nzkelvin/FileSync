.class public Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbWestpacATM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLE_WESTPACATM:Ljava/lang/String; = "westpacatm"

.field public static final WESTPACATM_INTERNAL_ID:Ljava/lang/String; = "westpacatm_internal_id"

.field public static final WESTPACATM_LOCATION:Ljava/lang/String; = "westpacatm_location"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;-><init>()V

    return-void
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unable to create table: westpacatm"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    const-string v0, "CREATE TABLE westpacatm (westpacatm_internal_id INTEGER PRIMARY KEY AUTOINCREMENT, westpacatm_location TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "westpacatm_location"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "westpacatm"

    return-object v0
.end method

.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 38
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "westpacatm_internal_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    .prologue
    .line 34
    const-string v0, "0"

    return-object v0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;-><init>()V

    .line 71
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;
    :try_start_0
    const-string v1, "westpacatm_location"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeLocation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method
