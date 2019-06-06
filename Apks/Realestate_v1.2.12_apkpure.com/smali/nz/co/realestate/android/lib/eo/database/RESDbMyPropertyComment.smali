.class public final Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
.source "RESDbMyPropertyComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "mypropertycomment_category"

.field public static final COMMENT:Ljava/lang/String; = "mypropertycomment_comment"

.field public static final ID:Ljava/lang/String; = "mypropertycomment_id"

.field public static final INTERNAL_ID:Ljava/lang/String; = "mypropertycomment_internal_id"

.field public static final LISTING_ID:Ljava/lang/String; = "mypropertycomment_listing_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "mypropertycomment"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "mypropertycomment_update_timestamp"


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
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mypropertycomment_listing_id"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->buildCreateIndexSQL([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
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
    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: mypropertycomment"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertycomment_internal_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertycomment_id"

    const-string v3, "INTEGER UNIQUE"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertycomment_listing_id"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertycomment_category"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertycomment_comment"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "mypropertycomment_update_timestamp"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mypropertycomment_listing_id"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->buildCreateIndexSQL([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    .prologue
    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v2, "mypropertycomment_id"

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v2, "mypropertycomment_listing_id"

    invoke-static {p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;->access$000(Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v2, "mypropertycomment_category"

    iget v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v2, "mypropertycomment_comment"

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "mypropertycomment_update_timestamp"

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->updated_at:Ljava/lang/String;

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
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    check-cast p3, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "mypropertycomment"

    return-object v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "mypropertycomment_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .prologue
    .line 44
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

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
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;-><init>(I)V

    .line 96
    .local v1, "params":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment$UpdateParams;
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;-><init>()V

    .line 97
    .local v0, "c":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    iput p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    .line 98
    iput-object p3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    .line 99
    const/4 v2, 0x0

    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->updated_at:Ljava/lang/String;

    .line 100
    invoke-super {p0, v0, p4, v1}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    return v2
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    const/4 v2, 0x0

    .line 79
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 86
    :goto_0
    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;-><init>()V

    .line 81
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    const-string v1, "mypropertycomment_internal_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    .line 82
    const-string v1, "mypropertycomment_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    .line 83
    const-string v1, "mypropertycomment_category"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    .line 84
    const-string v1, "mypropertycomment_comment"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    .line 85
    const-string v1, "mypropertycomment_update_timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->updated_at:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_2
    const-string v1, "mypropertycomment_internal_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 82
    :cond_3
    const-string v1, "mypropertycomment_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2
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

    .line 126
    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lt p3, v1, :cond_0

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 127
    :cond_0
    if-ne p2, v1, :cond_1

    const/4 v0, 0x6

    if-lt p3, v0, :cond_1

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->upgradeTableCreateListingIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    :cond_1
    return-void
.end method
