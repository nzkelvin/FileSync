.class public final Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;
.super Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;
.source "JSASQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ImportFromAssetsConfig"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "assetFileName"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "initialise"    # Z
    .param p5, "assetFileName"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct/range {p0 .. p5}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "initialise"    # Z
    .param p6, "assetFileName"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct/range {p0 .. p6}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V

    .line 171
    return-void
.end method
