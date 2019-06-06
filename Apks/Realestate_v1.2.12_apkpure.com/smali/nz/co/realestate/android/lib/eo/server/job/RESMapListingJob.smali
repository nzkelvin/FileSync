.class public final Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESMapListingJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAP_LISTINGS_REQUEST:Ljava/lang/String; = "mapListingsRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetMapListings(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mapListingsRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 36
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
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
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
    const/4 v10, 0x0

    .line 44
    if-eqz p2, :cond_8

    const-string v9, "mapListingsRequest"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-object v3, v9

    .line 47
    .local v3, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->incrementCurrentMapListingRequestCount()V

    .line 50
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/Class;)V

    .line 51
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v11, "start"

    invoke-static {v9, v11}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    :cond_1
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v6

    .line 55
    .local v6, "sentRequest":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getZoomLevel()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getZoomLevel()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setZoomLevel(Ljava/lang/Integer;)V

    .line 58
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getDefaultProperties()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getProperties()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 63
    :cond_3
    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->formatParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getListingSubTypeIdParams()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "listingSubTypeParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_4
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->constructUrlHttp(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "url":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 74
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "network access complete"

    invoke-static {v9, v10}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 77
    :cond_5
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "string":Ljava/lang/String;
    const-class v9, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    invoke-static {v9, v7}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    .line 79
    .local v5, "result":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "json complete"

    invoke-static {v9, v10}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 82
    :cond_6
    if-eqz v5, :cond_7

    iget-object v9, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    if-nez v9, :cond_b

    :cond_7
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "invalid map listings result"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v0    # "listingSubTypeParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "result":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
    .end local v6    # "sentRequest":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_8
    move-object v3, v10

    .line 44
    goto/16 :goto_0

    .restart local v3    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    :cond_9
    move-object v6, v10

    .line 54
    goto/16 :goto_1

    .restart local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v6    # "sentRequest":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    :cond_a
    move-object v0, v10

    .line 66
    goto :goto_2

    .line 85
    .restart local v0    # "listingSubTypeParams":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "result":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
    .restart local v7    # "string":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->updateCachedIsRecent()V

    .line 88
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9, v3, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCurrentMapListing(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;)V

    .line 91
    const-string v9, "getMapListingsComplete"

    invoke-static {p1, v9}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->decrementCurrentMapListingRequestCount()V

    .line 97
    return-object v5
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 101
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->decrementCurrentMapListingRequestCount()V

    .line 103
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

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method
