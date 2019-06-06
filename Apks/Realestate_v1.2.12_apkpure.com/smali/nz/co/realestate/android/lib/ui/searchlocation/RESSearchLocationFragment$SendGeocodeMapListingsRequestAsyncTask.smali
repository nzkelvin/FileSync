.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendGeocodeMapListingsRequestAsyncTask;
.source "RESSearchLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendGeocodeMapListingsRequestAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/content/Context;Ljava/lang/String;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .prologue
    .line 238
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .line 239
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendGeocodeMapListingsRequestAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    .line 240
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->onPostExecute(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    return-void
.end method

.method protected onPostExecute(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 4
    .param p1, "result"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-super {p0, p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendGeocodeMapListingsRequestAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$200(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$200(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 257
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$500(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$500(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    :cond_1
    :goto_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0, v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$502(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    .line 261
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0, v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$202(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 262
    return-void

    .line 258
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->no_search_results_found:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$400(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$400(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;->moveToBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 243
    invoke-super {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendGeocodeMapListingsRequestAsyncTask;->onPreExecute()V

    .line 244
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    sget v2, Lnz/co/realestate/android/lib/R$string;->searching:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    sget v3, Lnz/co/realestate/android/lib/R$string;->searching_please_wait:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask$1;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask$1;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$202(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 252
    return-void
.end method
