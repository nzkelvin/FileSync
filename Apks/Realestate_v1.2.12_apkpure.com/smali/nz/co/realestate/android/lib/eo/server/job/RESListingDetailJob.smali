.class public final Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESListingDetailJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTING_DETAILS_REQUEST:Ljava/lang/String; = "listingDetailsRequest"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "requestType"

.field private static final REQUEST_TYPE_DETAILS:Ljava/lang/String; = "details"

.field private static final REQUEST_TYPE_PING:Ljava/lang/String; = "ping"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetListingDetails(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)Landroid/os/Bundle;
    .locals 3
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "requestType"

    const-string v2, "details"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "listingDetailsRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    return-object v0
.end method

.method public static buildBundlePingService(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)Landroid/os/Bundle;
    .locals 3
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "requestType"

    const-string v2, "ping"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "listingDetailsRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
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

    .line 59
    if-eqz p2, :cond_2

    const-string v9, "listingDetailsRequest"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    move-object v2, v9

    .line 60
    .local v2, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;
    :goto_0
    const-string v9, "requestType"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "requestType":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, "details"

    .line 64
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->getDefaultProperties()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    const-string v9, "ping"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "format"

    const-string v11, "id"

    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->getListingId()I

    move-result v9

    invoke-static {v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$Url;->getRequestPath(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->constructUrlHttp(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "url":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 75
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const-string v9, "ping"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 92
    :goto_1
    return-object v10

    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;
    .end local v3    # "requestType":Ljava/lang/String;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "url":Ljava/lang/String;
    :cond_2
    move-object v2, v10

    .line 59
    goto :goto_0

    .line 78
    .restart local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;
    .restart local v3    # "requestType":Ljava/lang/String;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "string":Ljava/lang/String;
    const-class v9, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v9, v6}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 82
    .local v5, "result":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v9

    invoke-virtual {v9, v5, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v7

    .line 86
    .local v7, "success":Z
    if-nez v7, :cond_4

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "error inserting listing details"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 89
    :cond_4
    const-string v9, "getListingDetailsComplete"

    invoke-static {p1, v9}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    move-object v10, v5

    .line 92
    goto :goto_1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 96
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listing_details:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
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
