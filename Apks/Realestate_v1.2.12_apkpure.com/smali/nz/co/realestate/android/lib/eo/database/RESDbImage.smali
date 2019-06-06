.class public Lnz/co/realestate/android/lib/eo/database/RESDbImage;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;",
        ">;"
    }
.end annotation


# static fields
.field public static final IMAGE_HEIGHT:Ljava/lang/String; = "image_height"

.field public static final IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final IMAGE_WIDTH:Ljava/lang/String; = "image_width"

.field public static final TABLE_NAME:Ljava/lang/String; = "image"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;-><init>()V

    return-void
.end method

.method private upgradeTableOneOrTwoToNow(Landroid/database/sqlite/SQLiteDatabase;II)V
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
    .line 110
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
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
    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: image"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "image_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "image_url"

    const-string v3, "TEXT "

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "image_width"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "image_height"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "image_url"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->buildCreateIndexSQL([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "image_url"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "image_width"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v1, "image_height"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "image"

    return-object v0
.end method

.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 43
    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "image_url"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->getUniqueId(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    .prologue
    .line 39
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    const/4 v1, 0x0

    .line 74
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;-><init>()V

    .line 78
    .local v0, "item":Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    :try_start_0
    const-string v2, "image_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->id:I

    .line 79
    const-string v2, "image_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->url:Ljava/lang/String;

    .line 80
    const-string v2, "image_width"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    .line 81
    const-string v2, "image_height"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->height:Ljava/lang/Integer;

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0

    .line 80
    :cond_2
    const-string v2, "image_width"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 81
    :cond_3
    const-string v1, "image_height"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2
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
    .line 106
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->upgradeTableOneOrTwoToNow(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 107
    :cond_0
    return-void
.end method
