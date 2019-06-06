.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestAsyncTask;
.source "RESSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMapListingsRequestAsyncTask"
.end annotation


# instance fields
.field private mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .prologue
    .line 328
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .line 329
    invoke-direct {p0, p2, p3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestAsyncTask;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    .line 330
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .line 331
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 326
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;)V

    return-void
.end method

.method protected onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;)V
    .locals 5
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 345
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$400(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$400(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 346
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$500(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$500(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    :cond_1
    :goto_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0, v4}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$402(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 351
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0, v4}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$502(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    .line 352
    return-void

    .line 347
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->error_retrieving_search_results:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 348
    :cond_4
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->no_search_results_found:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 349
    :cond_5
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$600(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$600(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;->showMapView(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 334
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->searching:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    sget v3, Lnz/co/realestate/android/lib/R$string;->searching_please_wait:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask$1;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask$1;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$402(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 342
    return-void
.end method
