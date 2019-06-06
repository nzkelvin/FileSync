.class public final Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESWestpacJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_TYPE:Ljava/lang/String; = "requestType"

.field private static final REQUEST_TYPE_LOCATIONS:Ljava/lang/String; = "locations"

.field private static final REQUEST_TYPE_RATES:Ljava/lang/String; = "rates"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundleGetLocations()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "requestType"

    const-string v2, "locations"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public static buildBundleGetRates()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "requestType"

    const-string v2, "rates"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method private executeLocations(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)I
    .locals 11
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

    const/4 v9, 0x1

    .line 61
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbWestpacBranch()Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;

    move-result-object v1

    .line 62
    .local v1, "branchDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbWestpacATM()Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;

    move-result-object v0

    .line 63
    .local v0, "atmDatabase":Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    .line 66
    .local v3, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbWestpacBranch()Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;

    move-result-object v8

    invoke-virtual {v8, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->isTableRefreshRequired(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 67
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 68
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v2, v9}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedWestpacBranches(Ljava/util/List;)V

    .line 69
    invoke-virtual {v0, v2, v9}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedWestpacATMs(Ljava/util/List;)V

    .line 70
    const-string v8, "getWestpacBranchesComplete"

    invoke-static {p1, v8}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    :goto_0
    return v10

    .line 75
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Url;->getLocationsRequestPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p0, v7, v9}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 79
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "string":Ljava/lang/String;
    const-class v8, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;

    invoke-static {v8, v6}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;

    .line 83
    .local v5, "result":Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 84
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 85
    iget-object v8, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;->branches:Ljava/util/List;

    invoke-virtual {v1, v8, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 86
    invoke-virtual {v0, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 87
    iget-object v8, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;->atm_machines:Ljava/util/List;

    invoke-virtual {v0, v8, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 90
    iget-object v8, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;->branches:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;->branches:Ljava/util/List;

    invoke-virtual {v3, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedWestpacBranches(Ljava/util/List;)V

    .line 91
    :cond_1
    iget-object v8, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;->atm_machines:Ljava/util/List;

    if-eqz v8, :cond_2

    iget-object v8, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$LocationsResult;->atm_machines:Ljava/util/List;

    invoke-virtual {v3, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCachedWestpacATMs(Ljava/util/List;)V

    .line 94
    :cond_2
    invoke-virtual {v1, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacBranch;->updateTableRefreshTimestamp(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbWestpacATM;->updateTableRefreshTimestamp(Landroid/content/Context;)V

    .line 98
    const-string v8, "getWestpacBranchesComplete"

    invoke-static {p1, v8}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private executeRates(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Url;->getRatesRequestPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 115
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "string":Ljava/lang/String;
    const-class v4, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;

    .line 122
    .local v1, "rr":Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCurrentWestpacRates(Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;)V

    .line 125
    const-string v4, "getWestpacRatesComplete"

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    const-string v1, "requestType"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "type":Ljava/lang/String;
    const-string v1, "locations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->executeLocations(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->executeRates(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    .line 136
    const-string v2, "requestType"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "type":Ljava/lang/String;
    const-string v2, "locations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lnz/co/realestate/android/lib/R$string;->error_retrieving_westpac_branches:I

    .line 138
    .local v0, "resourceId":I
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v4}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 137
    .end local v0    # "resourceId":I
    :cond_1
    sget v0, Lnz/co/realestate/android/lib/R$string;->error_retrieving_westpac_rates:I

    goto :goto_0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
