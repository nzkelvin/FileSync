.class public Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbSuburb.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;",
        ">;"
    }
.end annotation


# static fields
.field public static final SUBURB_BOUNDS:Ljava/lang/String; = "suburb_bounds"

.field public static final SUBURB_DISTRICT_ID:Ljava/lang/String; = "suburb_district_id"

.field public static final SUBURB_ID:Ljava/lang/String; = "suburb_id"

.field public static final SUBURB_INTERNAL_ID:Ljava/lang/String; = "suburb_internal_id"

.field public static final SUBURB_NAME:Ljava/lang/String; = "suburb_name"

.field public static final SUBURB_REGION_ID:Ljava/lang/String; = "suburb_region_id"

.field public static final SUBURB_UPDATED:Ljava/lang/String; = "suburb_updated"

.field public static final TABLE_SUBURB:Ljava/lang/String; = "suburb"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;-><init>()V

    return-void
.end method

.method private upgradeTable3_4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unable to update table: suburb"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "suburb_updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
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
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unable to create table: suburb"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    const-string v0, "CREATE TABLE suburb (suburb_internal_id INTEGER PRIMARY KEY AUTOINCREMENT, suburb_id INTEGER UNIQUE, suburb_name TEXT, suburb_region_id INTEGER, suburb_district_id INTEGER, suburb_bounds TEXT, suburb_updated INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "suburb_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v1, "suburb_name"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "suburb_region_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->region_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v1, "suburb_district_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->district_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v1, "suburb_bounds"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->bounds:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "suburb_updated"

    iget-boolean v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->updated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    return-object v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "suburb"

    return-object v0
.end method

.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 44
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "suburb_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    .prologue
    .line 40
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 79
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;-><init>()V

    .line 82
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    :try_start_0
    const-string v1, "suburb_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->id:I

    .line 83
    const-string v1, "suburb_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->name:Ljava/lang/String;

    .line 84
    const-string v1, "suburb_region_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->region_id:I

    .line 85
    const-string v1, "suburb_district_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->district_id:I

    .line 86
    const-string v1, "suburb_bounds"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeBounds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->bounds:Ljava/util/List;

    .line 87
    const-string v1, "suburb_updated"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->updated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_0

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->upgradeTable3_4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    :cond_0
    return-void
.end method
