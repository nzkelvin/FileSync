.class Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$CreateUserAccountAsyncTask;
.source "RESMyPropertyFragmentActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateUserAccountAsyncTask"
.end annotation


# instance fields
.field private mFirstName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;


# direct methods
.method public constructor <init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "firstName"    # Ljava/lang/String;
    .param p6, "lastName"    # Ljava/lang/String;

    .prologue
    .line 514
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 515
    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$CreateUserAccountAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iput-object p5, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->mFirstName:Ljava/lang/String;

    .line 517
    iput-object p6, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->mLastName:Ljava/lang/String;

    .line 518
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->onPostExecute(Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;)V

    return-void
.end method

.method protected onPostExecute(Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;)V
    .locals 6
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;

    .prologue
    const/4 v5, 0x0

    .line 526
    invoke-super {p0, p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$CreateUserAccountAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 527
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$300(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V

    .line 528
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 531
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;->mSuccess:Z

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    sget v2, Lnz/co/realestate/android/lib/R$string;->_welcome_to_realestate_person_smiley:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->mFirstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->mLastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 534
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$600(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V

    goto :goto_0

    .line 539
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$700(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .restart local v0    # "message":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    sget v1, Lnz/co/realestate/android/lib/R$string;->creating_account:I

    sget v2, Lnz/co/realestate/android/lib/R$string;->please_wait_elipsis:I

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->access$200(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;II)V

    .line 522
    invoke-super {p0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$CreateUserAccountAsyncTask;->onPreExecute()V

    .line 523
    return-void
.end method
