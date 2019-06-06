.class public Lnz/co/realestate/android/lib/eo/database/RESDbListingType;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbListingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final LISTINGTYPE_ID:Ljava/lang/String; = "listingtype_id"

.field public static final LISTINGTYPE_INTERNAL_ID:Ljava/lang/String; = "listingtype_internal_id"

.field public static final LISTINGTYPE_NAME:Ljava/lang/String; = "listingtype_name"

.field public static final LISTINGTYPE_SORTKEY:Ljava/lang/String; = "listingtype_sortkey"

.field public static final TABLE_LISTING_TYPE:Ljava/lang/String; = "listingtype"


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
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unable to create table: listingtype"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    const-string v0, "CREATE TABLE listingtype (listingtype_internal_id INTEGER PRIMARY KEY AUTOINCREMENT, listingtype_id INTEGER UNIQUE, listingtype_name TEXT, listingtype_sortkey INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "listingtype_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "listingtype_name"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "listingtype_sortkey"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sort_key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    return-object v0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "listingtype"

    return-object v0
.end method

.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 40
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "listingtype_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    .prologue
    .line 36
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->insertItem(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertItem(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 5
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    .line 49
    .local v2, "result":Z
    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "itemId":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingTypeSubType()Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    move-result-object v0

    .line 51
    .local v0, "helper":Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;
    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    new-instance v4, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    invoke-direct {v4, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    .line 52
    return v2
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 97
    :cond_1
    :goto_0
    return-object v1

    .line 86
    :cond_2
    new-instance v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;-><init>()V

    .line 87
    .local v1, "item":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    const-string v3, "listingtype_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->id:I

    .line 88
    const-string v3, "listingtype_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->name:Ljava/lang/String;

    .line 89
    const-string v3, "listingtype_sortkey"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sort_key:I

    .line 91
    if-eqz p3, :cond_1

    .line 92
    iget v3, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "itemId":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingTypeSubType()Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    move-result-object v0

    .line 94
    .local v0, "helper":Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;
    const-string v3, "listingtypesubtype_listingtype_id"

    invoke-virtual {v0, v3, v2, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->updateItem(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateItem(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 5
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    .line 57
    .local v2, "result":Z
    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "itemId":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingTypeSubType()Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    move-result-object v0

    .line 59
    .local v0, "helper":Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;
    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    new-instance v4, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    invoke-direct {v4, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    .line 60
    return v2
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
    .line 123
    return-void
.end method
