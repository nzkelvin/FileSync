.class public final Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESInitialListingJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_LISTINGS_REQUEST:Ljava/lang/String; = "initialListingsRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetInitialListings(Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "initialListingsRequest"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 34
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
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p2, :cond_0

    const-string v6, "initialListingsRequest"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;

    move-object v2, v6

    .line 45
    .local v2, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->getDefaultProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;->constructUrlHttp(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 52
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "string":Ljava/lang/String;
    const-class v6, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    invoke-static {v6, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    .line 56
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v6

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->getListingTypeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCurrentInitialListing(Ljava/lang/Integer;Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;)V

    .line 59
    const-string v6, "getInitialListingsComplete"

    invoke-static {p1, v6}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-object v0

    .line 42
    .end local v0    # "listing":Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "request":Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListing;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 66
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
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

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
