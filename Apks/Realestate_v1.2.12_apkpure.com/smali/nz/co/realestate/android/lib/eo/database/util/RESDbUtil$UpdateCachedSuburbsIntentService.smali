.class public Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedSuburbsIntentService;
.super Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;
.source "RESDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateCachedSuburbsIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/job/RESCacheSuburbsJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheSuburbsJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 68
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "district"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .prologue
    .line 70
    const-class v0, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedSuburbsIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheSuburbsJob;->buildBundle(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedSuburbsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
