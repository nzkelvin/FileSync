.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$PingListingDetailsServiceIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PingListingDetailsServiceIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 212
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    .prologue
    .line 214
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$PingListingDetailsServiceIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->buildBundlePingService(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$PingListingDetailsServiceIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 215
    return-void
.end method
