.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendListingsRequestIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;I)V

    .line 133
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .prologue
    .line 135
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->buildBundleGetListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 136
    return-void
.end method
