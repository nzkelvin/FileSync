.class public final Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESRegionJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DATABASE_CHUNK_OPERATION_TIME:J = 0x3e8L

.field private static final DATABASE_CHUNK_SLEEP_TIME:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetRegions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

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
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 12
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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
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
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbRegion()Lnz/co/realestate/android/lib/eo/database/RESDbRegion;

    move-result-object v1

    .line 49
    .local v1, "database":Lnz/co/realestate/android/lib/eo/database/RESDbRegion;
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbRegion;->isTableRefreshRequired(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lnz/co/realestate/android/lib/eo/database/job/RESCacheRegionsJob;

    invoke-direct {v4}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheRegionsJob;-><init>()V

    invoke-static {v4, p1, p2, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 92
    :goto_0
    return-object v4

    .line 52
    :cond_0
    new-instance v4, Lnz/co/realestate/android/lib/eo/database/job/RESCacheRegionsJob;

    invoke-direct {v4}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheRegionsJob;-><init>()V

    invoke-static {v4, p1, p2, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "url":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v11, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 59
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v9}, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "string":Ljava/lang/String;
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob$1;

    invoke-direct {v0, p0}, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;)V

    .line 61
    .local v0, "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;>;>;"
    invoke-static {v0, v10}, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;->mapListResult(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "invalid regions returned"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_2
    new-instance v4, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$RegionComparator;

    invoke-direct {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$RegionComparator;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedRegions(Ljava/util/List;)V

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .local v8, "region":Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    const/4 v5, 0x1

    iput-boolean v5, v8, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->updated:Z

    goto :goto_1

    .line 76
    .end local v8    # "region":Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    :cond_3
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 77
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "update region set region_updated = 0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lnz/co/realestate/android/lib/eo/database/RESDbRegion;->insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z

    .line 83
    const-string v4, "region_updated"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbRegion;->deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 86
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbRegion;->updateTableRefreshTimestamp(Landroid/content/Context;)V

    .line 89
    const-string v4, "getRegionsComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    move-object v4, v2

    .line 92
    goto :goto_0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESRegionJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_regions:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
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

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method
