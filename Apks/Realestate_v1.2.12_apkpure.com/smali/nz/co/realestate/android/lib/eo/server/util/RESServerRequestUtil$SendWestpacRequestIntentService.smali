.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendWestpacRequestIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendWestpacRequestIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 264
    return-void
.end method

.method public static startServiceLocations(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendWestpacRequestIntentService;

    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->buildBundleGetLocations()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendWestpacRequestIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method public static startServiceRates(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendWestpacRequestIntentService;

    invoke-static {}, Lnz/co/realestate/android/lib/eo/server/job/RESWestpacJob;->buildBundleGetRates()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendWestpacRequestIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 267
    return-void
.end method
