.class Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.source "RESPropertyFragmentActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListingDetailsAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)V
    .locals 2
    .param p2, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    .prologue
    .line 305
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    .line 306
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {p2, v0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$000(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/content/Context;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 307
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 310
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-object v0, v2

    .line 311
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-lt v2, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-object v1, v2

    .line 312
    .local v1, "myPropertyListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :cond_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$102(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;Z)Z

    .line 313
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$202(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 316
    if-nez v0, :cond_3

    .line 317
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    sget v4, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listing_details:I

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->finish()V

    .line 331
    :goto_2
    return-void

    .end local v0    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .end local v1    # "myPropertyListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :cond_1
    move-object v0, v1

    .line 310
    goto :goto_0

    .restart local v0    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .restart local v1    # "myPropertyListing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :cond_2
    move v2, v4

    .line 312
    goto :goto_1

    .line 323
    :cond_3
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$300(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$200(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    .line 324
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$400(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$400(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    .line 327
    :cond_4
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->supportInvalidateOptionsMenu()V

    .line 330
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->access$200(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v3

    invoke-static {v2, v3}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$AddRecentListingIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    goto :goto_2
.end method
