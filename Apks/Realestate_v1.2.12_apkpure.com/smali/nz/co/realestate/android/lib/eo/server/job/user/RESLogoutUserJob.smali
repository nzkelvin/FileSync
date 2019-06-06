.class public final Lnz/co/realestate/android/lib/eo/server/job/user/RESLogoutUserJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESLogoutUserJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 29
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isUserLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 32
    :cond_0
    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->removeLoggedInUser()V

    .line 35
    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;

    invoke-static {p1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->stopService(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 36
    const-class v2, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;

    invoke-static {p1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->stopService(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 39
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyComment()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyComment;->deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 41
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyRating()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyRating;->deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 42
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 43
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbOpenHome()Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/eo/database/RESDbOpenHome;->deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 46
    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;

    invoke-direct {v2}, Lnz/co/realestate/android/lib/eo/server/job/RESUpdateOpenHomesJob;-><init>()V

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    .line 49
    const-string v2, "my_property_listings"

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->clearLastServerSyncTime(Ljava/lang/String;)V

    .line 50
    const-string v2, "my_property_open_homes"

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->clearLastServerSyncTime(Ljava/lang/String;)V

    .line 51
    const-string v2, "my_property_listings"

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->clearLastServerSyncEndTime(Ljava/lang/String;)V

    .line 52
    const-string v2, "my_property_open_homes"

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->clearLastServerSyncEndTime(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->notifyLoggedInUser()V

    .line 57
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLogoutUserJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 61
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    .line 62
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v2, "error logging out user"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 64
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLogoutUserJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
