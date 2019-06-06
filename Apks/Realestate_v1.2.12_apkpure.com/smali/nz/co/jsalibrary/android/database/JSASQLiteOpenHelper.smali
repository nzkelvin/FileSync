.class public abstract Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "JSASQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ExternalStorageConfig;,
        Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;,
        Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;
    }
.end annotation


# instance fields
.field private mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 108
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "assetFileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "initialiseDatabase"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "initialiseDatabase"    # Z
    .param p6, "assetFileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V
    .locals 4
    .param p1, "config"    # Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;

    .prologue
    .line 112
    new-instance v0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;

    invoke-direct {v0, p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    invoke-interface {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;->getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v2

    invoke-interface {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;->getVersion()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit p0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit p0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isForeignKeyConstraintsEnabled()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 291
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 292
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 265
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 266
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 281
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 282
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 283
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 303
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->isForeignKeyConstraintsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 273
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->mUpgradeDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 274
    return-void
.end method
