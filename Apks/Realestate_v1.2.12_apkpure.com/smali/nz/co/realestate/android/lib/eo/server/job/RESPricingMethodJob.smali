.class public final Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESPricingMethodJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final RESULT_REQUIRED:Ljava/lang/String; = "resultRequired"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Z)Landroid/os/Bundle;
    .locals 2
    .param p0, "resultRequired"    # Z

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "resultRequired"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 10
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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 43
    if-eqz p2, :cond_0

    const-string v9, "resultRequired"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "resultRequired"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 44
    .local v5, "resultRequired":Z
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbPricingMethod()Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;

    move-result-object v0

    .line 47
    .local v0, "database":Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;
    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;->isTableRefreshRequired(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 48
    if-nez v5, :cond_1

    const/4 v2, 0x0

    .line 75
    :goto_1
    return-object v2

    .end local v0    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;
    .end local v5    # "resultRequired":Z
    :cond_0
    move v5, v8

    .line 43
    goto :goto_0

    .line 49
    .restart local v0    # "database":Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;
    .restart local v5    # "resultRequired":Z
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 50
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v1, v8}, Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;>;"
    const-string v8, "getPricingMethodsComplete"

    invoke-static {p1, v8}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 56
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;>;"
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$Url;->getRequestPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 60
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "string":Ljava/lang/String;
    new-instance v3, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob$1;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob$1;-><init>(Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;)V

    .line 62
    .local v3, "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;>;>;"
    invoke-static {v3, v6}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->mapListResult(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 65
    .restart local v2    # "methods":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 66
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v2, v1}, Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 69
    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/eo/database/RESDbPricingMethod;->updateTableRefreshTimestamp(Landroid/content/Context;)V

    .line 72
    const-string v8, "getPricingMethodsComplete"

    invoke-static {p1, v8}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastSender;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESPricingMethodResource$PricingMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_pricing_methods:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
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

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method
