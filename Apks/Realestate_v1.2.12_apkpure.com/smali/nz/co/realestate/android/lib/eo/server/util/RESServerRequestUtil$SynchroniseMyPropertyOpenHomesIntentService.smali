.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchroniseMyPropertyOpenHomesIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 393
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 406
    return-void
.end method

.method public static startServiceLoggedIn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    .line 398
    :cond_0
    invoke-static {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;->startService(Landroid/content/Context;)V

    .line 399
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static startServiceOnUiThread(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService$1;

    invoke-direct {v0, p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public static startServiceOnUiThreadLoggedIn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 411
    :cond_0
    invoke-static {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;->startServiceOnUiThread(Landroid/content/Context;)V

    .line 412
    const/4 v0, 0x1

    goto :goto_0
.end method
