.class public final Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbMyPropertyListing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "mypropertylisting_listing_id"

.field public static final INTERNAL_ID:Ljava/lang/String; = "mypropertylisting_internal_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "mypropertylisting"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "mypropertylisting_update_timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;-><init>()V

    return-void
.end method

.method private upgradeTableTimestamp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 136
    const-string v0, "ALTER TABLE mypropertylisting ADD COLUMN mypropertylisting_update_timestamp TEXT;"

    .line 137
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
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
    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: mypropertylisting"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertylisting_internal_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertylisting_listing_id"

    const-string v3, "INTEGER UNIQUE"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertylisting_update_timestamp"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "mypropertylisting_listing_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v1, "mypropertylisting_update_timestamp"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->updated_at:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "mypropertylisting"

    return-object v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "mypropertylisting_listing_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 40
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertItem(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .param p1, "listingId"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;-><init>()V

    .line 96
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    iput p1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->updated_at:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v0, p2}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    return v1
.end method

.method public insertOrUpdateItem(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .param p1, "listingId"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->exists(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    .line 108
    .local v0, "exists":Z
    new-instance v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;-><init>()V

    .line 109
    .local v1, "item":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    iput p1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    .line 110
    const/4 v2, 0x0

    iput-object v2, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->updated_at:Ljava/lang/String;

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p2}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p2}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    const/4 v6, 0x0

    .line 70
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 86
    :cond_1
    :goto_0
    return-object v2

    .line 71
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    .line 72
    .local v0, "dbHelperBase":Lnz/co/realestate/android/lib/core/RESDbHelperBase;
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;-><init>()V

    .line 73
    .local v2, "item":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    const-string v3, "mypropertylisting_listing_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    .line 74
    const-string v3, "mypropertylisting_update_timestamp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->updated_at:Ljava/lang/String;

    .line 75
    if-eqz p3, :cond_1

    .line 78
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v3

    iget v4, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v1

    .line 79
    .local v1, "detailCursor":Landroid/database/Cursor;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v3

    iput-object v3, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 82
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v3

    const-string v4, "mypropertycomment_listing_id"

    iget v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    .line 83
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v3

    const-string v4, "mypropertyrating_listing_id"

    iget v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    .line 84
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyPhoto()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    move-result-object v3

    const-string v4, "mypropertyphoto_listing_id"

    iget v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

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
    .line 132
    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    const/4 v0, 0x5

    if-lt p3, v0, :cond_0

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->upgradeTableTimestamp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    :cond_0
    return-void
.end method
