.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestAsyncTask;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendListingsRequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .prologue
    .line 141
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;-><init>()V

    invoke-static {p2}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->buildBundleGetListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .param p3, "offset"    # I

    .prologue
    .line 144
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;-><init>()V

    invoke-static {p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESListingJob;->buildBundleGetListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 145
    return-void
.end method
