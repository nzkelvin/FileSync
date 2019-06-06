.class public final Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESExpireListingsJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob$ListingToListingNumberMapFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTING_IDS:Ljava/lang/String; = "listingIds"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "listingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listingIds"

    const-class v2, Ljava/lang/Integer;

    invoke-static {p0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const-string v12, "listingIds"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "listingIds"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, [Ljava/lang/Integer;

    check-cast v12, [Ljava/lang/Integer;

    move-object v6, v12

    .line 49
    .local v6, "listingIds":[Ljava/lang/Integer;
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v2

    .line 50
    .local v2, "database":Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 53
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    array-length v12, v6

    if-nez v12, :cond_1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 83
    :goto_1
    return-object v12

    .line 48
    .end local v2    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "listingIds":[Ljava/lang/Integer;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 56
    .restart local v2    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "listingIds":[Ljava/lang/Integer;
    :cond_1
    new-instance v12, Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToStringMapFunction;

    invoke-direct {v12}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToStringMapFunction;-><init>()V

    invoke-static {v6, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v3, v13}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v8

    .line 57
    .local v8, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    new-instance v12, Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob$ListingToListingNumberMapFunction;

    invoke-direct {v12}, Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob$ListingToListingNumberMapFunction;-><init>()V

    invoke-static {v8, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v7

    .line 60
    .local v7, "listingNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-direct {v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;-><init>()V

    .line 61
    .local v9, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    invoke-virtual {v9, v7}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListingNumbers(Ljava/util/List;)V

    .line 64
    new-instance v12, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;

    invoke-direct {v12}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;-><init>()V

    invoke-static {v9}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->buildBundleGetListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v12, v0, v13, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .line 67
    .local v10, "result":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
    if-nez v10, :cond_2

    new-instance v12, Ljava/lang/Exception;

    const-string v13, "listings result invalid"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 70
    :cond_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v11, "resultListingIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    iget-object v12, v10, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;->listings:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .local v4, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    iget v13, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 74
    .end local v4    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    :cond_3
    array-length v13, v6

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_5

    aget-object v5, v6, v12

    .line 75
    .local v5, "listingId":Ljava/lang/Integer;
    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 74
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 76
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->markExpired(IZLandroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_4

    .line 80
    .end local v5    # "listingId":Ljava/lang/Integer;
    :cond_5
    const-string v12, "getExpireListingsComplete"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto/16 :goto_1
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 87
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_expiring_listings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
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

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
