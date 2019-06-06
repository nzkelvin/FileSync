.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendMapListingsRequestIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;-><init>()V

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;I)V

    .line 155
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .prologue
    .line 157
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->buildBundleGetMapListings(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 158
    return-void
.end method
