.class public Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedDistrictsIntentService;
.super Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;
.source "RESDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateCachedDistrictsIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/job/RESCacheDistrictsJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheDistrictsJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 55
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "region"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .prologue
    .line 57
    const-class v0, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedDistrictsIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheDistrictsJob;->buildBundle(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedDistrictsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 58
    return-void
.end method
