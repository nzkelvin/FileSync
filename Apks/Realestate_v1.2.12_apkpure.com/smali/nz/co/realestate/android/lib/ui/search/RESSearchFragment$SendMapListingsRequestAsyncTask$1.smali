.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask$1;
.super Ljava/lang/Object;
.source "RESSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    .prologue
    .line 335
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 337
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$500(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$500(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->cancel(Z)Z

    .line 339
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->onPostExecute(Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;)V

    goto :goto_0
.end method
