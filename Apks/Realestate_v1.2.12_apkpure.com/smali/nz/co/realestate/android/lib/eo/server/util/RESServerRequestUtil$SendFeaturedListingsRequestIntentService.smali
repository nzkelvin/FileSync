.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendFeaturedListingsRequestIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendFeaturedListingsRequestIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 225
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;

    .prologue
    .line 227
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendFeaturedListingsRequestIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/job/RESFeaturedListingJob;->buildBundleGetFeaturedListings(Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendFeaturedListingsRequestIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 228
    return-void
.end method
