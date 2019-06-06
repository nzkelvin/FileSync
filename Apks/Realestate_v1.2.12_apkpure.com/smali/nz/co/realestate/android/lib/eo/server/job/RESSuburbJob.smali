.class public final Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESSuburbJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DATABASE_CHUNK_OPERATION_TIME:J = 0x3e8L

.field private static final DATABASE_CHUNK_SLEEP_TIME:J = 0x3e8L

.field private static final RESULT_REQUIRED:Ljava/lang/String; = "resultRequired"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Z)Landroid/os/Bundle;
    .locals 2
    .param p0, "resultRequired"    # Z

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "resultRequired"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p2, :cond_0

    const-string v4, "resultRequired"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "resultRequired"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 47
    .local v9, "resultRequired":Z
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbSuburb()Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;

    move-result-object v1

    .line 50
    .local v1, "database":Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->isTableRefreshRequired(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 51
    if-nez v9, :cond_1

    const/4 v2, 0x0

    .line 90
    :goto_1
    return-object v2

    .line 46
    .end local v1    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;
    .end local v9    # "resultRequired":Z
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 52
    .restart local v1    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;
    .restart local v9    # "resultRequired":Z
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 53
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v2

    .line 54
    .local v2, "suburbs":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;>;"
    const-string v4, "getSuburbsComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    .end local v2    # "suburbs":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;>;"
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 62
    .local v12, "url":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v12, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 63
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "string":Ljava/lang/String;
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob$1;

    invoke-direct {v0, p0}, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;)V

    .line 65
    .local v0, "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;>;>;"
    invoke-static {v0, v10}, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;->mapListResult(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 68
    .restart local v2    # "suburbs":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "invalid suburbs returned"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    .local v11, "suburb":Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    const/4 v5, 0x1

    iput-boolean v5, v11, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->updated:Z

    goto :goto_2

    .line 74
    .end local v11    # "suburb":Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    :cond_5
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 75
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "update suburb set suburb_updated = 0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z

    .line 81
    const-string v4, "suburb_updated"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 84
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbSuburb;->updateTableRefreshTimestamp(Landroid/content/Context;)V

    .line 87
    const-string v4, "getSuburbsComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESSuburbJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Exception;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_suburbs:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method
