.class public Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "RESUpdateMyPropertyDetailsJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_ADD_COMMENT:Ljava/lang/String; = "add_comment"

.field private static final ACTION_ADD_PHOTO:Ljava/lang/String; = "add_photo"

.field private static final ACTION_DELETE_COMMENT:Ljava/lang/String; = "delete_comment"

.field private static final ACTION_DELETE_PHOTO:Ljava/lang/String; = "delete_photo"

.field private static final ACTION_SET_RATING:Ljava/lang/String; = "set_rating"

.field private static final ACTION_UPDATE_COMMENT:Ljava/lang/String; = "update_comment"

.field private static final ACTION_UPDATE_PHOTO:Ljava/lang/String; = "update_photo"

.field private static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field private static final COMMENT:Ljava/lang/String; = "comment"

.field private static final INDEX:Ljava/lang/String; = "index"

.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"

.field private static final PHOTO:Ljava/lang/String; = "photo"

.field private static final RATING:Ljava/lang/String; = "rating"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method private addComment(IILjava/lang/String;)Z
    .locals 2
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 224
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->insertItem(IILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    return v1
.end method

.method private addPhoto(IILjava/lang/String;)Z
    .locals 2
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "photo"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyPhoto()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->insertItem(IILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    return v1
.end method

.method public static buildBundleAddComment(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "add_comment"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v1, "comment"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method public static buildBundleAddPhoto(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "photo"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "add_photo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 81
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v1, "photo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public static buildBundleDeleteComment(III)Landroid/os/Bundle;
    .locals 3
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "index"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "delete_comment"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-object v0
.end method

.method public static buildBundleDeletePhoto(III)Landroid/os/Bundle;
    .locals 3
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "index"    # I

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "delete_photo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 100
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    return-object v0
.end method

.method public static buildBundleSetRating(III)Landroid/os/Bundle;
    .locals 3
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "rating"    # I

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "set_rating"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 113
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v1, "rating"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    return-object v0
.end method

.method public static buildBundleUpdateComment(IIILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "index"    # I
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "update_comment"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v1, "comment"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0
.end method

.method public static buildBundleUpdatePhoto(IIILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "index"    # I
    .param p3, "photo"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "update_photo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v1, "photo"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method private deleteComment(III)Z
    .locals 9
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 201
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v0

    .line 202
    .local v0, "commentDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;
    new-array v1, v8, [Ljava/lang/String;

    const-string v5, "mypropertycomment_listing_id"

    aput-object v5, v1, v4

    const-string v5, "mypropertycomment_category"

    aput-object v5, v1, v7

    .line 203
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 204
    .local v2, "values":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v6

    .line 205
    .local v6, "comments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lt p3, v5, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v8, "mypropertycomment_internal_id"

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    iget-object v5, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v5

    if-eqz v5, :cond_0

    move v4, v7

    goto :goto_0
.end method

.method private deletePhoto(III)Z
    .locals 9
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 172
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 173
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyPhoto()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    move-result-object v0

    .line 174
    .local v0, "photoDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;
    new-array v1, v8, [Ljava/lang/String;

    const-string v5, "mypropertyphoto_listing_id"

    aput-object v5, v1, v4

    const-string v5, "mypropertyphoto_category"

    aput-object v5, v1, v7

    .line 175
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 176
    .local v2, "values":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v6

    .line 177
    .local v6, "photos":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lt p3, v5, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v8, "mypropertyphoto_internal_id"

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    iget-object v5, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v5

    if-eqz v5, :cond_0

    move v4, v7

    goto :goto_0
.end method

.method private setRating(III)Z
    .locals 3
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "rating"    # I

    .prologue
    .line 166
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v1

    .line 168
    .local v1, "ratingDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;
    invoke-virtual {v1, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->insertOrUpdateItem(IIILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    return v2
.end method

.method private updateComment(IIILjava/lang/String;)Z
    .locals 11
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I
    .param p4, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 210
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 211
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v0

    .line 212
    .local v0, "commentDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;
    new-array v1, v10, [Ljava/lang/String;

    const-string v9, "mypropertycomment_listing_id"

    aput-object v9, v1, v4

    const-string v9, "mypropertycomment_category"

    aput-object v9, v1, v8

    .line 213
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 214
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v6

    .line 215
    .local v6, "comments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt p3, v9, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v4

    .line 216
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v9, "mypropertycomment_comment"

    invoke-virtual {v7, v9, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v9, "mypropertycomment_update_timestamp"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v9, "mypropertycomment_internal_id"

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    iget-object v5, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v9, v5, v7, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v5

    if-eqz v5, :cond_0

    move v4, v8

    goto :goto_0
.end method

.method private updatePhoto(IIILjava/lang/String;)Z
    .locals 11
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I
    .param p4, "photo"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 183
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyPhoto()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;

    move-result-object v0

    .line 184
    .local v0, "photoDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;
    new-array v1, v10, [Ljava/lang/String;

    const-string v9, "mypropertyphoto_listing_id"

    aput-object v9, v1, v4

    const-string v9, "mypropertyphoto_category"

    aput-object v9, v1, v8

    .line 185
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 186
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v7

    .line 187
    .local v7, "photos":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lt p3, v9, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v4

    .line 188
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v9, "mypropertyphoto_file_url"

    invoke-virtual {v6, v9, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v9, "mypropertyphoto_update_timestamp"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v9, "mypropertyphoto_internal_id"

    invoke-interface {v7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    iget-object v5, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->internal_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v9, v5, v6, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyPhoto;->updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v5

    if-eqz v5, :cond_0

    move v4, v8

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 124
    const-string v7, "action"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v7, "listing_id"

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 126
    .local v4, "listingId":I
    const-string v7, "category_id"

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "categoryId":I
    if-eqz v0, :cond_0

    if-eq v4, v8, :cond_0

    if-ne v1, v8, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 130
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 131
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v5

    .line 132
    .local v5, "myPropertyDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;
    invoke-virtual {v5, v4, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->insertOrUpdateItem(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v6

    .line 135
    .local v6, "success":Z
    if-nez v6, :cond_2

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 138
    :cond_2
    const-string v7, "add_comment"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "comment"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v1, v7}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->addComment(IILjava/lang/String;)Z

    move-result v6

    .line 147
    :cond_3
    :goto_0
    if-nez v6, :cond_a

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 139
    :cond_4
    const-string v7, "update_comment"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "index"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "comment"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v1, v7, v8}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->updateComment(IIILjava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 140
    :cond_5
    const-string v7, "delete_comment"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "index"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v4, v1, v7}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->deleteComment(III)Z

    move-result v6

    goto :goto_0

    .line 141
    :cond_6
    const-string v7, "add_photo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "photo"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v1, v7}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->addPhoto(IILjava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 142
    :cond_7
    const-string v7, "update_photo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "index"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "photo"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v1, v7, v8}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->updatePhoto(IIILjava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 143
    :cond_8
    const-string v7, "delete_photo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "index"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v4, v1, v7}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->deletePhoto(III)Z

    move-result v6

    goto :goto_0

    .line 144
    :cond_9
    const-string v7, "set_rating"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "rating"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v4, v1, v7}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->setRating(III)Z

    move-result v6

    goto/16 :goto_0

    .line 150
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2, v9}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 153
    .local v3, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCachedMyPropertyListing(ILnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    .line 156
    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceOnUiThread(Landroid/content/Context;)V

    .line 158
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 232
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error updating my property details"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
