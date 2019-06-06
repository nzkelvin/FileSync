.class final Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;
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
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->execute()Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 342
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 343
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbListingDetail()Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;

    move-result-object v1

    .line 344
    .local v1, "database":Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->getListingId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->exists(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    .line 345
    .local v0, "contains":Z
    if-nez v0, :cond_0

    new-instance v5, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;

    invoke-direct {v5}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;-><init>()V

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    invoke-static {v7}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->buildBundleGetListingDetails(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$handler:Landroid/os/Handler;

    invoke-static {v5, v6, v7, v8}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 351
    :goto_0
    return-object v5

    .line 346
    :cond_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->getListingId()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->isDataRefreshRequired(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    .line 347
    .local v3, "refreshRequired":Z
    if-eqz v3, :cond_1

    new-instance v5, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;

    invoke-direct {v5}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;-><init>()V

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    invoke-static {v8}, Lnz/co/realestate/android/lib/eo/server/job/RESListingDetailJob;->buildBundleGetListingDetails(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$handler:Landroid/os/Handler;

    invoke-static {v5, v7, v8, v9}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-object v4, v5

    .line 348
    .local v4, "result":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    move-object v5, v4

    goto :goto_0

    .end local v4    # "result":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :cond_1
    move-object v4, v6

    .line 347
    goto :goto_1

    .line 349
    .restart local v4    # "result":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    invoke-static {v5, v7}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$PingListingDetailsServiceIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)V

    .line 350
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;->val$request:Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->getListingId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v2, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbListingDetail;->getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    goto :goto_0

    :cond_4
    move-object v5, v6

    .line 351
    goto :goto_0
.end method
