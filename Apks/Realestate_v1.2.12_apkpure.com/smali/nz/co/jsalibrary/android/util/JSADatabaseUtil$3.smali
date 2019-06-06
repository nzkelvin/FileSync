.class final Lnz/co/jsalibrary/android/util/JSADatabaseUtil$3;
.super Ljava/lang/Object;
.source "JSADatabaseUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->closeDatabaseOnNewThread(Landroid/database/sqlite/SQLiteOpenHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$3;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$3;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "error closing database"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method
