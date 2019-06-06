.class public final Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.source "RESDbListingDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "listingdetail_address"

.field public static final AGENTS:Ljava/lang/String; = "listingdetail_agents"

.field public static final BATHROOMS:Ljava/lang/String; = "listingdetail_bathrooms"

.field public static final BEDROOMS:Ljava/lang/String; = "listingdetail_bedrooms"

.field public static final CAR_SPACES:Ljava/lang/String; = "listingdetail_carspaces"

.field public static final DESCRIPTION:Ljava/lang/String; = "listingdetail_description"

.field public static final EXPIRED:Ljava/lang/String; = "listingdetail_expired"

.field public static final ID:Ljava/lang/String; = "listingdetail_id"

.field public static final IMAGES:Ljava/lang/String; = "listingdetail_images"

.field public static final IMAGES_MD5:Ljava/lang/String; = "listingdetail_images_md5"

.field public static final INTERNAL_ID:Ljava/lang/String; = "listingdetail_internal_id"

.field public static final LISTING_NUMBER:Ljava/lang/String; = "listingdetail_listing_number"

.field public static final LISTING_STATUS:Ljava/lang/String; = "listingdetail_listing_status"

.field public static final LISTING_STATUS_CHANGE_DATE:Ljava/lang/String; = "listingdetail_listing_status_change_date"

.field public static final LISTING_SUBTYPE:Ljava/lang/String; = "listingdetail_listing_subtype"

.field public static final LISTING_TYPE:Ljava/lang/String; = "listingdetail_listing_type"

.field public static final LOCATION:Ljava/lang/String; = "listingdetail_location"

.field public static final OPEN_HOMES:Ljava/lang/String; = "listingdetail_open_homes"

.field public static final PRICE:Ljava/lang/String; = "listingdetail_price"

.field public static final SOLD_DETAILS:Ljava/lang/String; = "listingdetail_sold_details"

.field public static final TABLE_NAME:Ljava/lang/String; = "listingdetail"

.field public static final TEASER:Ljava/lang/String; = "listingdetail_teaser"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "listingdetail_update_timestamp"

.field public static final URL:Ljava/lang/String; = "listingdetail_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;-><init>()V

    return-void
.end method

.method private upgradeTable10_11(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 245
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getColumnNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "columnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "listingdetail_listing_type"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_type INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    :cond_0
    const-string v1, "listingdetail_listing_subtype"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_subtype INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    :cond_1
    const-string v1, "listingdetail_listing_status"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_status INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    :cond_2
    const-string v1, "listingdetail_sold_details"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ALTER TABLE listingdetail ADD COLUMN listingdetail_sold_details TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    :cond_3
    const-string v1, "listingdetail_listing_status_change_date"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_status_change_date TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    :cond_4
    const-string v1, "listingdetail_images_md5"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ALTER TABLE listingdetail ADD COLUMN listingdetail_images_md5 TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    :cond_5
    return-void
.end method

.method private upgradeTable1_2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 223
    const-string v0, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_type INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    const-string v0, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_subtype INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private upgradeTable3_4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 228
    const-string v0, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_status INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private upgradeTable7_8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 232
    const-string v0, "ALTER TABLE listingdetail ADD COLUMN listingdetail_sold_details TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private upgradeTable8_9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 236
    const-string v0, "ALTER TABLE listingdetail ADD COLUMN listingdetail_listing_status_change_date TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private upgradeTable9_10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 240
    const-string v0, "RES"

    const-string v1, "Adding images md5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v0, "ALTER TABLE listingdetail ADD COLUMN listingdetail_images_md5 TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
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
    .line 184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unable to create table: listingdetail"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_internal_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_id"

    const-string v3, "INTEGER UNIQUE"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_location"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_address"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_price"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_bedrooms"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_bathrooms"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_carspaces"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_listing_number"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_open_homes"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_images"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_teaser"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_description"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_agents"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_expired"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v2, "listingdetail_update_timestamp"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-virtual {p0, p1, v1, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 206
    return-void
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "listingdetail_id"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v1, "listingdetail_location"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "listingdetail_address"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "listingdetail_price"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "listingdetail_bedrooms"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->bedrooms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v1, "listingdetail_bathrooms"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->bathrooms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "listingdetail_carspaces"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->car_spaces:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "listingdetail_listing_number"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "listingdetail_listing_type"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_type_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v1, "listingdetail_listing_subtype"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_subtype_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "listingdetail_open_homes"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "listingdetail_images"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "listingdetail_images_md5"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "listingdetail_url"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "listingdetail_teaser"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->teaser:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "listingdetail_description"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "listingdetail_agents"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "listingdetail_expired"

    iget-boolean v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->expired:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "listingdetail_update_timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v1, "listingdetail_listing_status"

    iget v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v1, "listingdetail_listing_status_change_date"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->status_change_date:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "listingdetail_sold_details"

    iget-object v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->sold_details:Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->encodeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    return-object v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getContentValuesForInsertOrUpdate(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "listingdetail"

    return-object v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "listingdetail_id"

    return-object v0
.end method

.method protected bridge synthetic getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueId(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 64
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDataRefreshRequired(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10
    .param p1, "listingId"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    const-string v7, "listingdetail_update_timestamp"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public loadIntoItemFromCursor(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 6
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "extended"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    :try_start_0
    const-string v1, "listingdetail_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    .line 147
    const-string v1, "listingdetail_location"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeLocation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    .line 148
    const-string v1, "listingdetail_address"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeAddress(Ljava/lang/String;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    .line 149
    const-string v1, "listingdetail_price"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodePrice(Ljava/lang/String;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    .line 150
    const-string v1, "listingdetail_bedrooms"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->bedrooms:I

    .line 151
    const-string v1, "listingdetail_bathrooms"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->bathrooms:I

    .line 152
    const-string v1, "listingdetail_carspaces"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->car_spaces:I

    .line 153
    const-string v1, "listingdetail_listing_number"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_no:Ljava/lang/String;

    .line 154
    const-string v1, "listingdetail_listing_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_type_id:I

    .line 155
    const-string v1, "listingdetail_listing_subtype"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_subtype_id:I

    .line 156
    const-string v1, "listingdetail_open_homes"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeOpenHomes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    .line 157
    const-string v1, "listingdetail_images"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeImages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    .line 158
    const-string v1, "listingdetail_images_md5"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeImages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    .line 159
    const-string v1, "listingdetail_url"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->url:Ljava/lang/String;

    .line 160
    const-string v1, "listingdetail_teaser"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->teaser:Ljava/lang/String;

    .line 161
    const-string v1, "listingdetail_description"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    .line 162
    const-string v1, "listingdetail_agents"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeAgents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->agents:Ljava/util/List;

    .line 163
    const-string v1, "listingdetail_expired"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->expired:Z

    .line 164
    new-instance v1, Ljava/util/Date;

    const-string v4, "listingdetail_update_timestamp"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->update_timestamp:Ljava/util/Date;

    .line 169
    const-string v1, "listingdetail_listing_status"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    iput v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_status:I

    .line 171
    const-string v1, "listingdetail_sold_details"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;->decodeSoldDetails(Ljava/lang/String;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->sold_details:Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;

    .line 172
    const-string v1, "listingdetail_listing_status_change_date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->status_change_date:Ljava/lang/String;

    .line 177
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 163
    goto :goto_0

    .line 169
    :cond_1
    const-string v1, "listingdetail_listing_status"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "error loading into item from cursor"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_2
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "extended"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 139
    :cond_1
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;-><init>()V

    .line 140
    .local v0, "item":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->loadIntoItemFromCursor(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_0
.end method

.method public markExpired(IZLandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .param p1, "listingId"    # I
    .param p2, "expired"    # Z
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "listingdetail_expired"

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "listingdetail_id =? "

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p3, v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 129
    goto :goto_0

    :cond_1
    move v2, v3

    .line 130
    goto :goto_1
.end method

.method public upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 213
    const-string v0, "RES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->upgradeTable1_2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    :cond_0
    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->upgradeTable3_4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    :cond_1
    const/4 v0, 0x7

    if-gt p2, v0, :cond_2

    if-lt p3, v3, :cond_2

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->upgradeTable7_8(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    :cond_2
    if-gt p2, v3, :cond_3

    if-lt p3, v4, :cond_3

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->upgradeTable8_9(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 218
    :cond_3
    if-gt p2, v4, :cond_4

    if-lt p3, v5, :cond_4

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->upgradeTable9_10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 219
    :cond_4
    if-gt p2, v5, :cond_5

    const/16 v0, 0xb

    if-lt p3, v0, :cond_5

    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->upgradeTable10_11(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 220
    :cond_5
    return-void
.end method
