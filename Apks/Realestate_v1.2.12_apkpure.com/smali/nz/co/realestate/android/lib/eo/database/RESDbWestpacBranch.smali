.class public Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbWestpacBranch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLE_WESTPACBRANCH:Ljava/lang/String; = "westpacbranch"

.field public static final WESTPACBRANCH_CONTACTS:Ljava/lang/String; = "westpacbranch_contacts"

.field public static final WESTPACBRANCH_CONTACT_PHONE:Ljava/lang/String; = "westpacbranch_contact_phone"

.field public static final WESTPACBRANCH_INTERNAL_ID:Ljava/lang/String; = "westpacbranch_internal_id"

.field public static final WESTPACBRANCH_LOCATION:Ljava/lang/String; = "westpacbranch_location"

.field public static final WESTPACBRANCH_NAME:Ljava/lang/String; = "westpacbranch_name"

.field public static final WESTPACBRANCH_OPEN_WEEKENDS:Ljava/lang/String; = "westpacbranch_open_weekends"


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
    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unable to create table: westpacbranch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    const-string v0, "CREATE TABLE westpacbranch (westpacbranch_internal_id INTEGER PRIMARY KEY AUTOINCREMENT, westpacbranch_name TEXT UNIQUE, westpacbranch_location TEXT, westpacbranch_contacts TEXT, westpacbranch_contact_phone TEXT, westpacbranch_open_weekends INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "westpacbranch_name"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "westpacbranch_contact_phone"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contact_phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "westpacbranch_open_weekends"

    iget-boolean v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->open_weekends:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v1, "westpacbranch_location"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "westpacbranch_contacts"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contacts:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    return-object v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "westpacbranch"

    return-object v0
.end method

.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 42
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "westpacbranch_name"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    .prologue
    .line 38
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;-><init>()V

    .line 79
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;
    :try_start_0
    const-string v1, "westpacbranch_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->name:Ljava/lang/String;

    .line 80
    const-string v1, "westpacbranch_contact_phone"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contact_phone:Ljava/lang/String;

    .line 81
    const-string v1, "westpacbranch_open_weekends"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->open_weekends:Z

    .line 82
    const-string v1, "westpacbranch_location"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeLocation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    .line 83
    const-string v1, "westpacbranch_contacts"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeContacts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->contacts:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0

    .line 81
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
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
    .line 115
    return-void
.end method
