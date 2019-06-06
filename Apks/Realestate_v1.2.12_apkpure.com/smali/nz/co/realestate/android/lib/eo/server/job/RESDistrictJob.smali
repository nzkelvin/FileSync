.class public final Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDistrictJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
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
    .line 27
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Z)Landroid/os/Bundle;
    .locals 2
    .param p0, "resultRequired"    # Z

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "resultRequired"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
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
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p2, :cond_0

    const-string v4, "resultRequired"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "resultRequired"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 49
    .local v10, "resultRequired":Z
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbDistrict()Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;

    move-result-object v1

    .line 52
    .local v1, "database":Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->isTableRefreshRequired(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 53
    if-nez v10, :cond_1

    const/4 v2, 0x0

    .line 96
    :goto_1
    return-object v2

    .line 48
    .end local v1    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;
    .end local v10    # "resultRequired":Z
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    .line 54
    .restart local v1    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;
    .restart local v10    # "resultRequired":Z
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 55
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v2

    .line 56
    .local v2, "districts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;"
    new-instance v4, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$DistrictComparator;

    invoke-direct {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$DistrictComparator;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    const-string v4, "getDistrictsComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    .end local v2    # "districts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;"
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "url":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v12, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 66
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v9}, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "string":Ljava/lang/String;
    new-instance v8, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob$1;

    invoke-direct {v8, p0}, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;)V

    .line 68
    .local v8, "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;>;"
    invoke-static {v8, v11}, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;->mapListResult(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 71
    .restart local v2    # "districts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "invalid districts returned"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .local v0, "district":Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    const/4 v5, 0x1

    iput-boolean v5, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->updated:Z

    goto :goto_2

    .line 77
    .end local v0    # "district":Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    :cond_5
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 78
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "update district set district_updated = 0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z

    .line 84
    const-string v4, "district_updated"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 87
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->updateTableRefreshTimestamp(Landroid/content/Context;)V

    .line 90
    const-string v4, "getDistrictsComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    new-instance v4, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$DistrictComparator;

    invoke-direct {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$DistrictComparator;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESDistrictJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_districts:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
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

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method
