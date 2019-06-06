.class public final Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESFeaturedListingJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final FEATURED_LISTINGS_REQUEST:Ljava/lang/String; = "featuredListingsRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetFeaturedListings(Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "featuredListingsRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 37
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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 11
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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    if-eqz p2, :cond_0

    const-string v9, "featuredListingsRequest"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;

    move-object v4, v9

    .line 48
    .local v4, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;->getDefaultProperties()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;->getProperties()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;->constructUrlHttp(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "url":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 55
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v5}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "string":Ljava/lang/String;
    new-instance v3, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob$1;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;)V

    .line 57
    .local v3, "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;>;>;"
    invoke-static {v3, v6}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;->mapListResult(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCurrentFeaturedListings(Ljava/util/List;)V

    .line 63
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v9

    invoke-virtual {v9, v1, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v7

    .line 67
    .local v7, "success":Z
    if-nez v7, :cond_1

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "unable to insert listing details"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 45
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;>;"
    .end local v2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;>;>;"
    .end local v4    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "string":Ljava/lang/String;
    .end local v7    # "success":Z
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 70
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;>;"
    .restart local v2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;>;>;"
    .restart local v4    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "string":Ljava/lang/String;
    .restart local v7    # "success":Z
    .restart local v8    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbFeaturedListing()Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;

    move-result-object v9

    invoke-virtual {v9, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;->deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 71
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbFeaturedListing()Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;

    move-result-object v9

    invoke-virtual {v9, v1, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbFeaturedListing;->insertItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v7

    .line 74
    if-nez v7, :cond_2

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "unable to insert featured listings"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 77
    :cond_2
    const-string v9, "getFeaturedListingsComplete"

    invoke-static {p1, v9}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
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

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method
