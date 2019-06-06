.class public Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DefaultConfigImpl;
.super Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;
.source "JSASQLiteOpenHelperUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultConfigImpl"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DefaultConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 170
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 174
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVersion()I
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->getVersion()I

    move-result v0

    return v0
.end method

.method public openOrCreateDatabase(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
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
    .line 179
    invoke-virtual {p1, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;->openOrCreateDatabaseSuper(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
