.class public final Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;
.super Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DefaultConfigImpl;
.source "JSASQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "DefaultConfig"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DefaultConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DefaultConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 133
    return-void
.end method
