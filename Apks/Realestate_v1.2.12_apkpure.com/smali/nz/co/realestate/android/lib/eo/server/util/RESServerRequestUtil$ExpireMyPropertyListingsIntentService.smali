.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$ExpireMyPropertyListingsIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpireMyPropertyListingsIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESExpireMyPropertyListingsJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESExpireMyPropertyListingsJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 306
    return-void
.end method
