.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestAsyncTask;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendMapListingsRequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .prologue
    .line 163
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;-><init>()V

    invoke-static {p2}, Lnz/co/realestate/android/lib/eo/server/job/RESMapListingJob;->buildBundleGetMapListings(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 164
    return-void
.end method
