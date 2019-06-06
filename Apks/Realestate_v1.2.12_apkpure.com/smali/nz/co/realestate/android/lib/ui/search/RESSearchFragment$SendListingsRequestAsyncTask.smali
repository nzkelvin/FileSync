.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestAsyncTask;
.source "RESSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendListingsRequestAsyncTask"
.end annotation


# instance fields
.field private mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .prologue
    .line 394
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .line 395
    invoke-direct {p0, p2, p3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestAsyncTask;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V

    .line 396
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .line 397
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    return-void
.end method

.method protected onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V
    .locals 6
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 410
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$400(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$400(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    move-object v0, p1

    .line 411
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;

    .line 412
    .local v0, "full":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$800(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$800(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    :cond_1
    :goto_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1, v5}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$802(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    .line 417
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1, v5}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$402(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 418
    return-void

    .line 413
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;->listings:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;->listings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget v3, Lnz/co/realestate/android/lib/R$string;->no_search_results_found:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 414
    :cond_4
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$600(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;->listings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$600(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    move-result-object v2

    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;->listings:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-interface {v2, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;->showListing(I)V

    goto :goto_0

    .line 415
    :cond_5
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$600(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$600(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-interface {v1, v2, p1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;->showListings(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 400
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->searching:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget v3, Lnz/co/realestate/android/lib/R$string;->searching_please_wait:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask$1;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask$1;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$402(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 407
    return-void
.end method
