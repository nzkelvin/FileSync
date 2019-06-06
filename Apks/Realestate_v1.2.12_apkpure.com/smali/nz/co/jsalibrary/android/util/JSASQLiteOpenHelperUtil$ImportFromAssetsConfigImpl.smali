.class public Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;
.super Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;
.source "JSASQLiteOpenHelperUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportFromAssetsConfigImpl"
.end annotation


# instance fields
.field protected final mAssetFileName:Ljava/lang/String;

.field public final mInitialise:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "assetFileName"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V

    .line 210
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "initialise"    # Z
    .param p5, "assetFileName"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V

    .line 214
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "initialise"    # Z
    .param p6, "assetFileName"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 220
    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 221
    :cond_0
    iput-object p6, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mAssetFileName:Ljava/lang/String;

    .line 222
    iput-boolean p5, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mInitialise:Z

    .line 223
    return-void
.end method


# virtual methods
.method public getAssetFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mAssetFileName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVersion()I
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getVersion()I

    move-result v0

    return v0
.end method

.method public openOrCreateDatabase(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 8
    .param p1, "wrapper"    # Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "handler"    # Landroid/database/DatabaseErrorHandler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 231
    .local v6, "database":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mInitialise:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 243
    :cond_1
    :goto_0
    return-object v7

    :cond_2
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 234
    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;->copyDatabaseAsset(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 237
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->getVersion()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 240
    :cond_3
    if-nez v7, :cond_1

    .line 243
    invoke-virtual {p1, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    goto :goto_0
.end method
