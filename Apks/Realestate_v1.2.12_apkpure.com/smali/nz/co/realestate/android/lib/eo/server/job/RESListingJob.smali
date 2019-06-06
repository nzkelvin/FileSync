.class public final Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESListingJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTINGS_REQUEST:Ljava/lang/String; = "listingsRequest"

.field private static final OFFSET:Ljava/lang/String; = "offset"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listingsRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    return-object v0
.end method

.method public static buildBundleGetListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p1, "offset"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listingsRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 39
    const-string v1, "offset"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    return-object v0
.end method

.method private parseBasicListingsResult(Lorg/apache/http/HttpResponse;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "string":Ljava/lang/String;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    invoke-static {v2, v1}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .line 106
    .local v0, "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "json complete"

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;->listings:Ljava/util/List;

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "invalid listings result"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_2
    return-object v0
.end method

.method private parseFullListingsResult(Lorg/apache/http/HttpResponse;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "string":Ljava/lang/String;
    const-class v3, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;

    invoke-static {v3, v2}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;

    .line 124
    .local v1, "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "json complete"

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;->listings:Ljava/util/List;

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "invalid listings result"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 131
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v3

    iget-object v4, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;->listings:Ljava/util/List;

    invoke-virtual {v3, v4, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 134
    return-object v1
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
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    if-eqz p2, :cond_8

    const-string v10, "listingsRequest"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-object v6, v10

    .line 55
    .local v6, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    :goto_0
    if-eqz p2, :cond_9

    const-string v10, "offset"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 58
    .local v3, "offset":I
    :goto_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/Class;)V

    .line 59
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "start"

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 62
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "offset"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getDefaultProperties()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getProperties()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    :cond_2
    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->formatParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 69
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getListingIdParams()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "listingIdParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_3
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getListingSubTypeIdParams()Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "listingSubTypeParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->getListingNumberParams()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "listingNumberParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_6
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->constructUrlHttp(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "url":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 85
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "network access complete"

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 88
    :cond_7
    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->isResponseFormatFull()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-direct {p0, v7}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->parseFullListingsResult(Lorg/apache/http/HttpResponse;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    move-result-object v8

    .line 91
    .local v8, "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    :goto_4
    const-string v10, "getListingsComplete"

    invoke-static {p1, v10}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    return-object v8

    .end local v0    # "listingIdParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "listingNumberParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "listingSubTypeParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "offset":I
    .end local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    .end local v9    # "url":Ljava/lang/String;
    :cond_8
    move-object v6, v1

    .line 54
    goto/16 :goto_0

    .line 55
    .restart local v6    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .restart local v3    # "offset":I
    .restart local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    move-object v0, v1

    .line 69
    goto :goto_2

    .restart local v0    # "listingIdParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_b
    move-object v2, v1

    .line 73
    goto :goto_3

    .line 88
    .restart local v1    # "listingNumberParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "listingSubTypeParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v7}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->parseBasicListingsResult(Lorg/apache/http/HttpResponse;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    move-result-object v8

    goto :goto_4
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 138
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
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

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method
