.class public final Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ExternalStorageConfig;
.super Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;
.source "JSASQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ExternalStorageConfig"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # I
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;-><init>(Landroid/content/Context;ILjava/io/File;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "version"    # I
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/File;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "version"    # I
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ExternalStorageConfigImpl;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    .line 197
    return-void
.end method
