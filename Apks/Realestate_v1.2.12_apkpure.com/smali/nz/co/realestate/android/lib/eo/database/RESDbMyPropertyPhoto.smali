.class public final Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
.source "RESDbMyPropertyPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "mypropertyphoto_category"

.field public static final FILE_URL:Ljava/lang/String; = "mypropertyphoto_file_url"

.field public static final INTERNAL_ID:Ljava/lang/String; = "mypropertyphoto_internal_id"

.field public static final LISTING_ID:Ljava/lang/String; = "mypropertyphoto_listing_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "mypropertyphoto"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "mypropertyphoto_update_timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;-><init>()V

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
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: mypropertyphoto"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyphoto_internal_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyphoto_listing_id"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyphoto_category"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyphoto_file_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyphoto_update_timestamp"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;

    .prologue
    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "mypropertyphoto_listing_id"

    invoke-static {p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;->access$000(Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v1, "mypropertyphoto_category"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->category:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v1, "mypropertyphoto_file_url"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->file_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "mypropertyphoto_update_timestamp"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->updated_at:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "mypropertyphoto"

    return-object v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "mypropertyphoto_internal_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    .prologue
    .line 43
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertItem(IILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "fileUrl"    # Ljava/lang/String;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 90
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;-><init>(I)V

    .line 91
    .local v1, "params":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto$UpdateParams;
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;-><init>()V

    .line 92
    .local v0, "c":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    iput p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->category:I

    .line 93
    iput-object p3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->file_url:Ljava/lang/String;

    .line 94
    const/4 v2, 0x0

    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->updated_at:Ljava/lang/String;

    .line 95
    invoke-super {p0, v0, p4, v1}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    return v2
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    const/4 v1, 0x0

    .line 75
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 81
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;-><init>()V

    .line 77
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    const-string v2, "mypropertyphoto_internal_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->internal_id:Ljava/lang/Integer;

    .line 78
    const-string v1, "mypropertyphoto_category"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->category:I

    .line 79
    const-string v1, "mypropertyphoto_file_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->file_url:Ljava/lang/String;

    .line 80
    const-string v1, "mypropertyphoto_update_timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->updated_at:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "mypropertyphoto_internal_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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
    .line 118
    const/4 v0, 0x6

    if-gt p2, v0, :cond_0

    const/4 v0, 0x7

    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    :cond_0
    return-void
.end method
