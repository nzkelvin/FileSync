.class public Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;
.super Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;
.source "JSASQLiteOpenHelperUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalStorageConfigImpl"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # I
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/File;)V

    .line 278
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, v1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/File;)V

    .line 270
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "version"    # I
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 281
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 282
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "version"    # I
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/File;)V

    .line 274
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVersion()I
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getVersion()I

    move-result v0

    return v0
.end method

.method public openOrCreateDatabase(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
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
    .line 288
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v1

    .line 291
    .local v1, "isErrorHandlerValid":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 295
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;->getVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 298
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    return-object v2

    .line 292
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method
