.class public abstract Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESMyPropertyFragmentActivityBase.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;
.implements Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;
.implements Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;,
        Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;,
        Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountDialogFragment;,
        Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;"
    }
.end annotation


# static fields
.field private static final CREATE_ACCOUNT_DIALOG_TAG:Ljava/lang/String; = "create_account_dialog"

.field private static final LOGIN_DIALOG_TAG:Ljava/lang/String; = "login_dialog"

.field private static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "progress_dialog"


# instance fields
.field private mCreateUserAccountAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

.field private mLoginUserAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

.field private mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

.field private mMyPropertyListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

.field private mOpenHomesListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

.field private mRecentListingsListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .prologue
    .line 53
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mLoginUserAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    .prologue
    .line 53
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mLoginUserAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .prologue
    .line 53
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mCreateUserAccountAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;)Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    .prologue
    .line 53
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mCreateUserAccountAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;II)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->displayProgressDialogFragment(II)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .prologue
    .line 53
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->dismissProgressDialogFragment()V

    return-void
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .prologue
    .line 53
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->dismissLoginUserDialogFragment()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getLoginUserErrorMessage(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;

    .prologue
    .line 53
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->dismissCreateUserAccountDialogFragment()V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getCreateUserAccountErrorMessage(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dismissCreateUserAccountDialogFragment()V
    .locals 4

    .prologue
    .line 584
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "create_account_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 585
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Landroid/support/v4/app/DialogFragment;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    move-object v0, v1

    .line 586
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 587
    :cond_0
    return-void

    .line 585
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissLoginUserDialogFragment()V
    .locals 4

    .prologue
    .line 578
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "login_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 579
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Landroid/support/v4/app/DialogFragment;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    move-object v0, v1

    .line 580
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 581
    :cond_0
    return-void

    .line 579
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissProgressDialogFragment()V
    .locals 4

    .prologue
    .line 572
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "progress_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 573
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Landroid/support/v4/app/DialogFragment;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    move-object v0, v1

    .line 574
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 575
    :cond_0
    return-void

    .line 573
    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayProgressDialogFragment(II)V
    .locals 2
    .param p1, "title"    # I
    .param p2, "text"    # I

    .prologue
    .line 567
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->create(Landroid/content/Context;IIZ)Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;

    move-result-object v0

    .line 568
    .local v0, "fragment":Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;
    const-string v1, "progress_dialog"

    invoke-virtual {v0, p0, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSAProgressDialogFragment;->show(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private static getCreateUserAccountErrorMessage(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 549
    if-nez p1, :cond_0

    sget v0, Lnz/co/realestate/android/lib/R$string;->error_creating_account_please_try_again:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 550
    :cond_0
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;->mErrorCode:I

    packed-switch v0, :pswitch_data_0

    .line 558
    sget v0, Lnz/co/realestate/android/lib/R$string;->error_creating_account_please_try_again:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    :pswitch_0
    sget v0, Lnz/co/realestate/android/lib/R$string;->error_creating_account_please_try_again:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 554
    :pswitch_1
    sget v0, Lnz/co/realestate/android/lib/R$string;->_error_creating_account_colon_problem:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lnz/co/realestate/android/lib/R$string;->email_address_invalid:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :pswitch_2
    sget v0, Lnz/co/realestate/android/lib/R$string;->_error_creating_account_colon_problem:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lnz/co/realestate/android/lib/R$string;->email_address_already_registered:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLoginUserErrorMessage(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 493
    if-nez p1, :cond_0

    sget v0, Lnz/co/realestate/android/lib/R$string;->error_logging_in_please_try_again:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    .line 494
    :cond_0
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mErrorCode:I

    packed-switch v0, :pswitch_data_0

    .line 502
    sget v0, Lnz/co/realestate/android/lib/R$string;->error_logging_in_please_try_again:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_0
    sget v0, Lnz/co/realestate/android/lib/R$string;->error_logging_in_please_try_again:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :pswitch_1
    sget v0, Lnz/co/realestate/android/lib/R$string;->_error_logging_in_colon_problem:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lnz/co/realestate/android/lib/R$string;->email_address_not_registered:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 500
    :pswitch_2
    sget v0, Lnz/co/realestate/android/lib/R$string;->_error_logging_in_colon_problem:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lnz/co/realestate/android/lib/R$string;->password_incorrect:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPromptLoginUser()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;->newInstance()Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserDialogFragment;

    move-result-object v0

    .line 235
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "login_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private onPromptLogoutUser()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LogoutUserIntentService;->startService(Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    const-string v0, "my_property_fragment_activity"

    .line 79
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getActivityIntentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "my_property_listings"

    .line 225
    .local v0, "section":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isSynchronising(Ljava/lang/String;)Z

    move-result v1

    .line 226
    .local v1, "sync":Z
    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 227
    return-void
.end method


# virtual methods
.method protected abstract getMyPropertyFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getRecentListingsFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract includeOpenHomeTab()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget v0, Lnz/co/realestate/android/lib/R$layout;->my_property_layout:I

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    new-instance v0, Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    new-instance v1, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$1;-><init>(Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;)V

    sget v2, Lnz/co/realestate/android/lib/R$id;->realtabcontent:I

    invoke-direct {v0, p0, v1, v2}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;-><init>(Landroid/support/v7/app/AppCompatActivity;Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;I)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    .line 99
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v1, "myPropertyList"

    sget v2, Lnz/co/realestate/android/lib/R$string;->properties:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getMyPropertyFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    .line 100
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->includeOpenHomeTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v1, "myPropertyOpenHomes"

    sget v2, Lnz/co/realestate/android/lib/R$string;->open_homes:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    .line 101
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v1, "myPropertyRecent"

    sget v2, Lnz/co/realestate/android/lib/R$string;->recent:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getRecentListingsFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    .line 104
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 107
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v1, "myPropertyList"

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mMyPropertyListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    .line 108
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mMyPropertyListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->setFragmentListener(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;)V

    .line 111
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v1, "myPropertyOpenHomes"

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mOpenHomesListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    .line 112
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mOpenHomesListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mOpenHomesListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->setFragmentListener(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;)V

    .line 115
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v1, "myPropertyRecent"

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mRecentListingsListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;

    .line 116
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mRecentListingsListFragment:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->setFragmentListener(Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;)V

    .line 118
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 168
    .local v0, "show":Z
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$menu;->my_property_menu:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 169
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onDestroy()V

    .line 157
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 158
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mLoginUserAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mLoginUserAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$LoginUserAsyncTask;->cancel(Z)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mCreateUserAccountAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mCreateUserAccountAsyncTask:Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase$CreateUserAccountAsyncTask;->cancel(Z)Z

    .line 160
    :cond_1
    return-void
.end method

.method public onDialogEvent(ILjava/io/Serializable;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 0
    .param p1, "dialogId"    # I
    .param p2, "dialogData"    # Ljava/io/Serializable;
    .param p3, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 595
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 267
    const-string v0, "my_property_listings"

    .line 268
    .local v0, "section":Ljava/lang/String;
    const-string v1, "synchronising"

    invoke-virtual {p1, v1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->supportInvalidateOptionsMenu()V

    .line 269
    :cond_0
    const-string v1, "synchronising"

    invoke-virtual {p1, v1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->updateView()V

    .line 270
    :cond_1
    const-string v1, "loggedInUser"

    invoke-virtual {p1, v1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->supportInvalidateOptionsMenu()V

    .line 271
    :cond_2
    return-void
.end method

.method public onOpenHomeSelected(I)V
    .locals 0
    .param p1, "listingId"    # I

    .prologue
    .line 259
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;I)V

    .line 260
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->login:I

    if-ne v1, v2, :cond_0

    .line 201
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->onPromptLoginUser()V

    .line 216
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->logout:I

    if-ne v1, v2, :cond_1

    .line 204
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->onPromptLogoutUser()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->sync:I

    if-ne v1, v2, :cond_2

    .line 207
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startService(Landroid/content/Context;)V

    .line 208
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_3

    .line 212
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->finish()V

    goto :goto_0

    .line 216
    :cond_3
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 173
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    .line 174
    .local v5, "show":Z
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    .line 175
    .local v3, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isUserLoggedIn()Z

    move-result v0

    .line 176
    .local v0, "isUserLoggedIn":Z
    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLoggedInUser()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    .line 177
    .local v7, "username":Ljava/lang/String;
    :goto_0
    const-string v4, "my_property_listings"

    .line 180
    .local v4, "section":Ljava/lang/String;
    sget v8, Lnz/co/realestate/android/lib/R$id;->login:I

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 181
    .local v1, "loginItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    if-nez v0, :cond_5

    move v8, v9

    :goto_1
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 184
    :cond_0
    sget v8, Lnz/co/realestate/android/lib/R$id;->logout:I

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 185
    .local v2, "logoutItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    :cond_1
    if-eqz v2, :cond_2

    sget v8, Lnz/co/realestate/android/lib/R$string;->_logout_username:I

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v7, v11, v10

    invoke-virtual {p0, v8, v11}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 189
    :cond_2
    sget v8, Lnz/co/realestate/android/lib/R$id;->sync:I

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 190
    .local v6, "syncItem":Landroid/view/MenuItem;
    if-eqz v6, :cond_3

    if-eqz v0, :cond_6

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isSynchronising(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :goto_2
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    :cond_3
    return v5

    .line 176
    .end local v1    # "loginItem":Landroid/view/MenuItem;
    .end local v2    # "logoutItem":Landroid/view/MenuItem;
    .end local v4    # "section":Ljava/lang/String;
    .end local v6    # "syncItem":Landroid/view/MenuItem;
    .end local v7    # "username":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .restart local v1    # "loginItem":Landroid/view/MenuItem;
    .restart local v4    # "section":Ljava/lang/String;
    .restart local v7    # "username":Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 181
    goto :goto_1

    .restart local v2    # "logoutItem":Landroid/view/MenuItem;
    .restart local v6    # "syncItem":Landroid/view/MenuItem;
    :cond_6
    move v9, v10

    .line 190
    goto :goto_2
.end method

.method public onPropertySelected(I)V
    .locals 0
    .param p1, "listingId"    # I

    .prologue
    .line 251
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;I)V

    .line 252
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 146
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 147
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->updateView()V

    .line 148
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "index"

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->getSelectedTabIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onStart()V

    .line 141
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_MY_PROPERTY:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 142
    return-void
.end method
