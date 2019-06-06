.class final Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;
.super Ljava/lang/Object;
.source "RESPropertyFragmentActivityBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getMethods(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/content/Context;Landroid/os/Handler;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;->execute()Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .locals 4

    .prologue
    .line 356
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;-><init>()V

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->getListingId()I

    move-result v2

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/database/job/RESCacheMyPropertyListingJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    return-object v0
.end method
