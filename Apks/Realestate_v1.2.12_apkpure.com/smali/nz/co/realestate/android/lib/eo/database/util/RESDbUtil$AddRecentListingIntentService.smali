.class public Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$AddRecentListingIntentService;
.super Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;
.source "RESDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddRecentListingIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/job/RESAddRecentListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/job/RESAddRecentListingJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 108
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 110
    const-class v0, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$AddRecentListingIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/database/job/RESAddRecentListingJob;->buildBundle(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$AddRecentListingIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method
