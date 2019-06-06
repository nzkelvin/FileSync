.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendInitialListingsRequestIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendInitialListingsRequestIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;I)V

    .line 238
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;

    .prologue
    .line 240
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendInitialListingsRequestIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/job/RESInitialListingJob;->buildBundleGetInitialListings(Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendInitialListingsRequestIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 241
    return-void
.end method
