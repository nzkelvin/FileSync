.class Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestAsyncTask;
.source "RESSearchMapActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendListingsRequestAsyncTask"
.end annotation


# instance fields
.field private mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V
    .locals 0
    .param p2, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .prologue
    .line 441
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .line 442
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendListingsRequestAsyncTask;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V

    .line 443
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .line 444
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 438
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    return-void
.end method

.method protected onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V
    .locals 3
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$500(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$500(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 459
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$502(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 460
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$602(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    .line 461
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_1
    if-nez p1, :cond_2

    .line 463
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_listings:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$400(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->mRequest:Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-virtual {v0, v1, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->setListingsRequestAndResult(Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 447
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    sget v2, Lnz/co/realestate/android/lib/R$string;->retrieving_listings:I

    .line 448
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    sget v3, Lnz/co/realestate/android/lib/R$string;->please_wait:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask$1;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask$1;-><init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 447
    invoke-static {v6, v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$502(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 455
    return-void
.end method
