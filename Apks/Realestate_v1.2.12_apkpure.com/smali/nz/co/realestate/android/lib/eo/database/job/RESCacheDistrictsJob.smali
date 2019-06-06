.class public Lnz/co/realestate/android/lib/eo/database/job/RESCacheDistrictsJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "RESCacheDistrictsJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final REGION:Ljava/lang/String; = "region"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)Landroid/os/Bundle;
    .locals 2
    .param p0, "region"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "region"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 30
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
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheDistrictsJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 7
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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p2, :cond_1

    const-string v3, "region"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    move-object v2, v3

    .line 41
    .local v2, "region":Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbDistrict()Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;

    move-result-object v3

    const-string v4, "district_region_id"

    iget v5, v2, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v0, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbDistrict;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "districts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "invalid districts retrieved"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "districts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;"
    .end local v2    # "region":Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 48
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "districts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;>;"
    .restart local v2    # "region":Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    :cond_2
    new-instance v3, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$DistrictComparator;

    invoke-direct {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$DistrictComparator;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCachedDistricts(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;Ljava/util/List;)V

    .line 54
    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheDistrictsJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_districts:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method