.class public abstract Lnz/co/realestate/android/lib/ui/RESStartActivityBase;
.super Lnz/co/jsalibrary/android/app/JSAActivity;
.source "RESStartActivityBase.java"


# instance fields
.field private mExternalStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/RESStartActivityBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESStartActivityBase;

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->continueToHomeActivity()V

    return-void
.end method

.method private continueToHomeActivity()V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 72
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->resolveStackFromUri(Landroid/net/Uri;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 74
    .local v0, "builder":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 79
    .end local v0    # "builder":Landroid/support/v4/app/TaskStackBuilder;
    :goto_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->finish()V

    .line 80
    return-void

    .line 71
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private initialiseExternalStorageReceiver()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v1, Lnz/co/realestate/android/lib/ui/RESStartActivityBase$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase$1;-><init>(Lnz/co/realestate/android/lib/ui/RESStartActivityBase;)V

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/app/JSAActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lnz/co/realestate/android/lib/R$layout;->start:I

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->setContentView(I)V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lnz/co/jsalibrary/android/app/JSAActivity;->onDestroy()V

    .line 63
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 39
    :cond_0
    invoke-super {p0}, Lnz/co/jsalibrary/android/app/JSAActivity;->onResume()V

    .line 41
    const/4 v2, 0x1

    .line 42
    .local v2, "isGoogleMapsInstalled":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 43
    .local v1, "isExternalStorageMounted":Z
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v4

    .line 44
    .local v4, "playServiceAvailableCode":I
    if-nez v4, :cond_1

    const/4 v3, 0x1

    .line 46
    .local v3, "isPlayServiceAvailable":Z
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 47
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->continueToHomeActivity()V

    .line 59
    :goto_1
    return-void

    .end local v3    # "isPlayServiceAvailable":Z
    :cond_1
    move v3, v6

    .line 44
    goto :goto_0

    .line 48
    .restart local v3    # "isPlayServiceAvailable":Z
    :cond_2
    if-nez v2, :cond_3

    .line 49
    sget v6, Lnz/co/realestate/android/lib/R$id;->problem_textview:I

    invoke-virtual {p0, v6}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 50
    .local v5, "textview":Landroid/widget/TextView;
    sget v6, Lnz/co/realestate/android/lib/R$string;->_googlemaps_not_installed:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 51
    .end local v5    # "textview":Landroid/widget/TextView;
    :cond_3
    if-nez v1, :cond_4

    .line 52
    sget v6, Lnz/co/realestate/android/lib/R$id;->problem_textview:I

    invoke-virtual {p0, v6}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .restart local v5    # "textview":Landroid/widget/TextView;
    sget v6, Lnz/co/realestate/android/lib/R$string;->_sdcard_not_mounted:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 54
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->initialiseExternalStorageReceiver()V

    goto :goto_1

    .line 56
    .end local v5    # "textview":Landroid/widget/TextView;
    :cond_4
    invoke-static {v4, p0, v6}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 57
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method protected abstract resolveStackFromUri(Landroid/net/Uri;)Landroid/support/v4/app/TaskStackBuilder;
.end method
