.class abstract Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;
.super Ljava/lang/Object;
.source "JSASQLiteOpenHelperUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ConfigImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mName:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ge p4, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 133
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mName:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 136
    iput p4, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mVersion:I

    .line 137
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$ConfigImpl;->mVersion:I

    return v0
.end method
