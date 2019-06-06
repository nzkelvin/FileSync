.class public Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
.source "RESDbListingTypeSubType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final LISTINGTYPESUBTYPE_ID:Ljava/lang/String; = "listingtypesubtype_id"

.field public static final LISTINGTYPESUBTYPE_INTERNAL_ID:Ljava/lang/String; = "listingtypesubtype_internal_id"

.field public static final LISTINGTYPESUBTYPE_LISTINGTYPE_ID:Ljava/lang/String; = "listingtypesubtype_listingtype_id"

.field public static final LISTINGTYPESUBTYPE_NAME:Ljava/lang/String; = "listingtypesubtype_name"

.field public static final LISTINGTYPESUBTYPE_SORT_KEY:Ljava/lang/String; = "listingtypesubtype_sort_key"

.field public static final TABLE_LISTING_TYPE_SUB_TYPE:Ljava/lang/String; = "listingtypesubtype"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;-><init>()V

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
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unable to create table: listingtypesubtype"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    const-string v0, "CREATE TABLE listingtypesubtype (listingtypesubtype_internal_id INTEGER PRIMARY KEY AUTOINCREMENT, listingtypesubtype_id INTEGER UNIQUE, listingtypesubtype_name TEXT, listingtypesubtype_sort_key INTEGER, listingtypesubtype_listingtype_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    .prologue
    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    invoke-static {p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;->access$000(Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "listingTypeId":Ljava/lang/String;
    :goto_0
    const-string v2, "listingtypesubtype_id"

    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v2, "listingtypesubtype_name"

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "listingtypesubtype_sort_key"

    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->sort_key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v2, "listingtypesubtype_listingtype_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v0

    .line 58
    .end local v1    # "listingTypeId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "listingtypesubtype"

    return-object v0
.end method

.method protected getTableRefreshFrequency()J
    .locals 2

    .prologue
    .line 41
    const-wide/32 v0, 0x48190800

    return-wide v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "listingtypesubtype_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    .prologue
    .line 37
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;-><init>()V

    .line 74
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;
    const-string v1, "listingtypesubtype_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    .line 75
    const-string v1, "listingtypesubtype_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->name:Ljava/lang/String;

    .line 76
    const-string v1, "listingtypesubtype_sort_key"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->sort_key:I

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
    .line 105
    return-void
.end method
