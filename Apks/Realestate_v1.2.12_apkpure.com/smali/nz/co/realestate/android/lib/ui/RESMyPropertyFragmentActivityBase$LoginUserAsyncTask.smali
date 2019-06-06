.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoginUserAsyncTask;
.source "RESMyPropertyFragmentActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginUserAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 460
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .line 461
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoginUserAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 458
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->onPostExecute(Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;)V

    return-void
.end method

.method protected onPostExecute(Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;)V
    .locals 4
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;

    .prologue
    const/4 v3, 0x0

    .line 470
    invoke-super {p0, p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoginUserAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 471
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$300(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V

    .line 472
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 475
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mSuccess:Z

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    sget v2, Lnz/co/realestate/android/lib/R$string;->_welcome_back_smiley:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 478
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$400(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V

    goto :goto_0

    .line 483
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$500(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .restart local v0    # "message":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    sget v1, Lnz/co/realestate/android/lib/R$string;->logging_in:I

    sget v2, Lnz/co/realestate/android/lib/R$string;->please_wait_elipsis:I

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$200(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;II)V

    .line 466
    invoke-super {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoginUserAsyncTask;->onPreExecute()V

    .line 467
    return-void
.end method
