.class public Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;
.super Ljava/lang/Object;
.source "JSASQLiteOpenHelperUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;,
        Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;,
        Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DefaultConfigImpl;,
        Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;,
        Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;,
        Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDatabaseAsset(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 8
    .param p0, "wrapper"    # Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;
    .param p1, "config"    # Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;
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
    const/4 v6, 0x1

    .line 321
    :try_start_0
    iget-object v4, p1, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mAssetFileName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v2, p1, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mAssetFileName:Ljava/lang/String;

    .line 322
    .local v2, "filename":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 323
    .local v3, "stream":Ljava/io/InputStream;
    if-nez v3, :cond_1

    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "exception":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-static/range {p0 .. p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;->copySplitDatabaseAsset(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 342
    .end local v1    # "exception":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v4

    :cond_0
    move-object v2, p2

    .line 321
    goto :goto_0

    .line 331
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 332
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 335
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 340
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 341
    .local v1, "exception":Ljava/io/IOException;
    const-string v4, "error copying database asset"

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;

    aput-object v7, v5, v6

    invoke-static {v4, v1, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 342
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static copySplitDatabaseAsset(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 10
    .param p0, "wrapper"    # Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;
    .param p1, "config"    # Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;
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
    .line 362
    :try_start_0
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->resolveWorkingDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "directory":Ljava/lang/String;
    iget-object v6, p1, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mAssetFileName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v3, p1, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->mAssetFileName:Ljava/lang/String;

    .line 364
    .local v3, "filename":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    if-eqz v1, :cond_1

    .end local v1    # "directory":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "list":[Ljava/lang/String;
    new-instance v6, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$1;

    invoke-direct {v6, v3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v4

    .line 372
    .local v4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    .line 390
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "list":[Ljava/lang/String;
    :goto_2
    return-object v6

    .restart local v1    # "directory":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .line 363
    goto :goto_0

    .line 364
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 375
    .end local v1    # "directory":Ljava/lang/String;
    .restart local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "list":[Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 378
    invoke-virtual {p0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 379
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 382
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 383
    invoke-virtual {v8, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 382
    invoke-static {v7, v6, v8}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copySplitAssetFile(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_2

    .line 388
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "list":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 389
    .local v2, "exception":Ljava/io/IOException;
    const-string v6, "error copying split database asset"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;

    aput-object v9, v7, v8

    invoke-static {v6, v2, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 390
    const/4 v6, 0x0

    goto :goto_2
.end method
