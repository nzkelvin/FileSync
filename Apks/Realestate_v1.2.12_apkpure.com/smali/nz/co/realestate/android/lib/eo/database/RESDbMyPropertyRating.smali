.class public final Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
.source "RESDbMyPropertyRating.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "mypropertyrating_category"

.field public static final ID:Ljava/lang/String; = "mypropertyrating_id"

.field public static final INTERNAL_ID:Ljava/lang/String; = "mypropertyrating_internal_id"

.field public static final LISTING_ID:Ljava/lang/String; = "mypropertyrating_listing_id"

.field public static final RATING:Ljava/lang/String; = "mypropertyrating_rating"

.field public static final TABLE_NAME:Ljava/lang/String; = "mypropertyrating"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "mypropertyrating_update_timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;-><init>()V

    return-void
.end method

.method private upgradeTableCreateListingIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mypropertyrating_listing_id"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->buildCreateIndexSQL([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
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
    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: mypropertyrating"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyrating_internal_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyrating_id"

    const-string v3, "INTEGER UNIQUE"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyrating_listing_id"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyrating_category"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyrating_rating"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertyrating_update_timestamp"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mypropertyrating_listing_id"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->buildCreateIndexSQL([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;

    .prologue
    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v2, "mypropertyrating_id"

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v2, "mypropertyrating_listing_id"

    invoke-static {p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;->access$000(Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v2, "mypropertyrating_category"

    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v2, "mypropertyrating_rating"

    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v2, "mypropertyrating_update_timestamp"

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->updated_at:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "error compiling content values"

    invoke-static {v2, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "mypropertyrating"

    return-object v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "mypropertyrating_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .prologue
    .line 44
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertItem(IIILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "rating"    # I
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;-><init>(I)V

    .line 96
    .local v1, "params":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating$UpdateParams;
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;-><init>()V

    .line 97
    .local v0, "c":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    iput p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    .line 98
    iput p3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    .line 99
    const/4 v2, 0x0

    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->updated_at:Ljava/lang/String;

    .line 100
    invoke-super {p0, v0, p4, v1}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    return v2
.end method

.method public insertOrUpdateItem(IIILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "rating"    # I
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 109
    new-array v1, v3, [Ljava/lang/String;

    const-string v0, "mypropertyrating_listing_id"

    aput-object v0, v1, v4

    const-string v0, "mypropertyrating_category"

    aput-object v0, v1, v8

    .line 110
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .local v2, "values":[Ljava/lang/String;
    move-object v0, p0

    move-object v3, p4

    .line 111
    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v7

    .line 112
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->insertItem(IIILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    .line 116
    :cond_0
    :goto_0
    return v4

    .line 113
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "mypropertyrating_rating"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "mypropertyrating_update_timestamp"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "mypropertyrating_internal_id"

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v3, v0, v6, p4}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v8

    goto :goto_0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 86
    :goto_0
    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;-><init>()V

    .line 81
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    const-string v2, "mypropertyrating_internal_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->internal_id:Ljava/lang/Integer;

    .line 82
    const-string v2, "mypropertyrating_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->id:Ljava/lang/Integer;

    .line 83
    const-string v1, "mypropertyrating_category"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    .line 84
    const-string v1, "mypropertyrating_rating"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    .line 85
    const-string v1, "mypropertyrating_update_timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->updated_at:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "mypropertyrating_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 142
    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lt p3, v1, :cond_0

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    :cond_0
    if-ne p2, v1, :cond_1

    const/4 v0, 0x6

    if-lt p3, v0, :cond_1

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->upgradeTableCreateListingIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    :cond_1
    return-void
.end method
