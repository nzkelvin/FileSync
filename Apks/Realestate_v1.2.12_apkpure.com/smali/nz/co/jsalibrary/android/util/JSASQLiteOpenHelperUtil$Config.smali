.class public interface abstract Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;
.super Ljava/lang/Object;
.source "JSASQLiteOpenHelperUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Config"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract openOrCreateDatabase(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method
