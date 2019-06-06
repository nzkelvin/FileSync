.class public Lnz/co/realestate/android/lib/eo/database/job/RESAddOpenHomeJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "RESAddOpenHomeJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTING:Ljava/lang/String; = "listing"

.field public static final MAX_OPEN_HOME_LISTINGS:I = 0x32

.field private static final OPEN_HOME_ID:Ljava/lang/String; = "openHomeId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p1, "openHomeId"    # I

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 34
    const-string v1, "openHomeId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

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
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESAddOpenHomeJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
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
    .line 43
    const-string v5, "listing"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 44
    .local v2, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    const-string v5, "openHomeId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 47
    .local v3, "openHomeId":I
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->getAllItemsCount(Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result v5

    const/16 v6, 0x32

    if-lt v5, v6, :cond_0

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "max open homes exceeded"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "invalid open home listing"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 52
    :cond_2
    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    new-instance v6, Lnz/co/realestate/android/lib/eo/database/job/RESAddOpenHomeJob$1;

    invoke-direct {v6, p0, v3}, Lnz/co/realestate/android/lib/eo/database/job/RESAddOpenHomeJob$1;-><init>(Lnz/co/realestate/android/lib/eo/database/job/RESAddOpenHomeJob;I)V

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .line 57
    .local v1, "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    if-nez v1, :cond_3

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "invalid open home listing"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_3
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->deleteRow(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 61
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v5

    new-instance v6, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;

    iget v7, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-direct {v6, v7}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome$UpdateParams;-><init>(I)V

    invoke-virtual {v5, v1, v0, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v4

    .line 64
    .local v4, "success":Z
    if-nez v4, :cond_4

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "error inserting open home into database"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 67
    :cond_4
    new-instance v5, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;

    invoke-direct {v5}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;-><init>()V

    const/4 v6, 0x0

    invoke-static {v5, p1, v6, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;->startServiceOnUiThreadLoggedIn(Landroid/content/Context;)Z

    .line 73
    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/job/RESAddOpenHomeJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 77
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_adding_open_home:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
