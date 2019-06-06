.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestAsyncTask;
.source "RESSearchLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMapListingsRequestAsyncTask"
.end annotation


# instance fields
.field private mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .prologue
    .line 206
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .line 207
    invoke-direct {p0, p2, p3}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendMapListingsRequestAsyncTask;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    .line 208
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .line 209
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;)V

    return-void
.end method

.method protected onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;)V
    .locals 5
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 223
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$200(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$200(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$300(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$300(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0, v4}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$202(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 229
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0, v4}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$302(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    .line 230
    return-void

    .line 225
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->error_retrieving_search_results:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    :cond_4
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->no_search_results_found:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 227
    :cond_5
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$400(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$400(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;->moveToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 212
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->searching:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    sget v3, Lnz/co/realestate/android/lib/R$string;->searching_please_wait:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask$1;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask$1;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$202(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 220
    return-void
.end method
