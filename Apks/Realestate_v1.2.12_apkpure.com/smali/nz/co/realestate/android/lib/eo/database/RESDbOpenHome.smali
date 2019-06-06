.class public final Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
.source "RESDbOpenHome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "openhome_id"

.field public static final INTERNAL_ID:Ljava/lang/String; = "openhome_internal_id"

.field public static final LISTING_ID:Ljava/lang/String; = "openhome_listing_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "openhome"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "openhome_update_timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;-><init>()V

    return-void
.end method

.method private upgradeTableTimestamp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 125
    const-string v0, "ALTER TABLE openhome ADD COLUMN openhome_update_timestamp TEXT;"

    .line 126
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
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
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: openhome"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "openhome_internal_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "openhome_id"

    const-string v3, "INTEGER UNIQUE"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "openhome_listing_id"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "openhome_update_timestamp"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    .prologue
    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "openhome_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v1, "openhome_listing_id"

    invoke-static {p3}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;->access$000(Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v1, "openhome_update_timestamp"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->updated_at:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "openhome"

    return-object v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "openhome_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 45
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    const/4 v4, 0x0

    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v4

    .line 91
    :cond_1
    const-string v5, "openhome_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 92
    .local v1, "id":I
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->loadListingFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v2

    .line 93
    .local v2, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    new-instance v6, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$1;

    invoke-direct {v6, p0, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$1;-><init>(Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;I)V

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .line 97
    .local v0, "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    if-eqz v0, :cond_0

    .line 98
    const-string v4, "openhome_update_timestamp"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "updateTimestamp":Ljava/lang/String;
    new-instance v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    invoke-direct {v4, v0, v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;-><init>(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadListingFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Z)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->loadListingFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    return-object v0
.end method

.method public loadListingFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 3
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
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 81
    :cond_1
    const-string v1, "openhome_listing_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 82
    .local v0, "listingId":I
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    goto :goto_0
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
    .line 121
    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    const/4 v0, 0x6

    if-lt p3, v0, :cond_0

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->upgradeTableTimestamp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 122
    :cond_0
    return-void
.end method
