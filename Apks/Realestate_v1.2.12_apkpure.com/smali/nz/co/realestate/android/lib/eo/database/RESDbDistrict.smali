.class public final Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbDistrict.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISTRICT_BOUNDS:Ljava/lang/String; = "district_bounds"

.field public static final DISTRICT_ID:Ljava/lang/String; = "district_id"

.field public static final DISTRICT_INTERNAL_ID:Ljava/lang/String; = "district_internal_id"

.field public static final DISTRICT_NAME:Ljava/lang/String; = "district_name"

.field public static final DISTRICT_REGION_ID:Ljava/lang/String; = "district_region_id"

.field public static final DISTRICT_UPDATED:Ljava/lang/String; = "district_updated"

.field public static final TABLE_DISTRICT:Ljava/lang/String; = "district"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
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
    .line 118
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unable to update table: district"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "district_updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: district"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "district_internal_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "district_id"

    const-string v3, "INTEGER UNIQUE"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "district_name"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "district_region_id"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "district_bounds"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "district_updated"

    const-string v3, "INTEGER NOT NULL DEFAULT 1"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "district_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v1, "district_name"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "district_region_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->region_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v1, "district_bounds"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->bounds:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "district_updated"

    iget-boolean v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->updated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    return-object v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "district"

    return-object v0
.end method

.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 47
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "district_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .prologue
    .line 43
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 81
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;-><init>()V

    .line 84
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    :try_start_0
    const-string v1, "district_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    .line 85
    const-string v1, "district_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->name:Ljava/lang/String;

    .line 86
    const-string v1, "district_region_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->region_id:I

    .line 87
    const-string v1, "district_bounds"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeBounds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->bounds:Ljava/util/List;

    .line 88
    const-string v1, "district_updated"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->updated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0

    .line 88
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
    .line 114
    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_0

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->upgradeTable3_4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    :cond_0
    return-void
.end method
