.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask$1;
.super Ljava/lang/Object;
.source "RESSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    .prologue
    .line 401
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 403
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$800(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$800(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->cancel(Z)Z

    goto :goto_0
.end method
