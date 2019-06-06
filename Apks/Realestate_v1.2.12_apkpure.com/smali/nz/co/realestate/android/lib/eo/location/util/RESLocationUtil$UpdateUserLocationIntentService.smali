.class public Lnz/co/realestate/android/lib/eo/location/util/RESLocationUtil$UpdateUserLocationIntentService;
.super Lnz/co/realestate/android/lib/eo/location/util/RESLocationUtil$LoggedBackgroundJobIntentService;
.source "RESLocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/location/util/RESLocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateUserLocationIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/location/util/RESLocationUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 30
    return-void
.end method
