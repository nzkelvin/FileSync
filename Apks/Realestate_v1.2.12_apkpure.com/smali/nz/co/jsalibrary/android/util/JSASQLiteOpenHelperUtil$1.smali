.class final Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$1;
.super Ljava/lang/Object;
.source "JSASQLiteOpenHelperUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;->copySplitDatabaseAsset(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$DatabaseContextWrapper;Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ImportFromAssetsConfigImpl;Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$1;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 365
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$1;->filter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public filter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$1;->val$filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
