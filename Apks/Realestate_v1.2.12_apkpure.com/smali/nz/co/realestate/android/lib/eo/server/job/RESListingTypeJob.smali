.class public final Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESListingTypeJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;",
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
    .line 26
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
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
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 14
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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingType()Lnz/co/realestate/android/lib/eo/database/RESDbListingType;

    move-result-object v1

    .line 38
    .local v1, "database":Lnz/co/realestate/android/lib/eo/database/RESDbListingType;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/Class;)V

    .line 39
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "start"

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 42
    :cond_1
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->isTableRefreshRequired(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 43
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 44
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v8

    .line 45
    .local v8, "listingTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingTypeSubType()Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "listingTypeSubTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedListingTypes(Ljava/util/List;)V

    .line 47
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedListingTypeSubTypes(Ljava/util/List;)V

    .line 48
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "database retrieval complete"

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 49
    :cond_2
    const-string v4, "getListingTypesComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .end local v8    # "listingTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;>;"
    :goto_0
    return-object v8

    .line 54
    .end local v0    # "listingTypeSubTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, "url":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v13, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 58
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "network access complete"

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    :cond_4
    invoke-virtual {p0, v10}, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "string":Ljava/lang/String;
    new-instance v9, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob$1;

    invoke-direct {v9, p0}, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;)V

    .line 63
    .local v9, "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;>;>;"
    invoke-static {v9, v11}, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;->mapListResult(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "json complete"

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 67
    :cond_5
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedListingTypes(Ljava/util/List;)V

    .line 70
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 71
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z

    move-result v12

    .line 72
    .local v12, "success":Z
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "database insert complete"

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 75
    :cond_6
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingTypeSubType()Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lnz/co/realestate/android/lib/eo/database/RESDbListingTypeSubType;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v0

    .line 76
    .restart local v0    # "listingTypeSubTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedListingTypeSubTypes(Ljava/util/List;)V

    .line 79
    if-nez v12, :cond_7

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "error inserting listing types into database"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_7
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbListingType;->updateTableRefreshTimestamp(Landroid/content/Context;)V

    .line 85
    const-string v4, "getListingTypesComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    move-object v8, v2

    .line 88
    goto/16 :goto_0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingTypeJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listing_types:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
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

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method
