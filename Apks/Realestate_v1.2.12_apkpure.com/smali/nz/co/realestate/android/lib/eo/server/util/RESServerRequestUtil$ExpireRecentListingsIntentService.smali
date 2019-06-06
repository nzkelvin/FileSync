.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$ExpireRecentListingsIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpireRecentListingsIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESExpireRecentListingsJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESExpireRecentListingsJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 326
    return-void
.end method
