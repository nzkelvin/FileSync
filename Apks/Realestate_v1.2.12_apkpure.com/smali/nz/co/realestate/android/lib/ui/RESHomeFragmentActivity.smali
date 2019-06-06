.class public final Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESHomeFragmentActivity.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;
.implements Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragmentEventListener;


# static fields
.field private static final PERMISSIONS_REQUEST:I = 0xd

.field private static final PROMPT_LOCATION:I = 0x65

.field private static final PROMPT_STORAGE:I = 0x66


# instance fields
.field private mHomeFragment:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

.field private mTermsAndConditionsOptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 255
    return-void
.end method

.method private checkPermissions()V
    .locals 5

    .prologue
    .line 242
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, "locationPermissionCheck":I
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, "storagePermissionCheck":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_2
    const-class v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/16 v4, 0xd

    invoke-static {p0, v3, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getStartActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-static {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getStartActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected getIncludeDebugOptionsMenuItems()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v0, Lnz/co/realestate/android/lib/R$layout;->home_layout:I

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->home_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->mHomeFragment:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    .line 72
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->mHomeFragment:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->setFragmentListener(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$FragmentListener;)V

    .line 74
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$string;->for_sale:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 76
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$drawable;->ic_icon_padded:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 77
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 128
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 129
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lnz/co/realestate/android/lib/R$menu;->main_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDialogEvent(ILjava/io/Serializable;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 2
    .param p1, "dialogId"    # I
    .param p2, "dialogData"    # Ljava/io/Serializable;
    .param p3, "dialogEvent"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 260
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->checkPermission(Ljava/lang/String;)V

    .line 264
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->checkPermission(Ljava/lang/String;)V

    .line 267
    :cond_1
    return-void
.end method

.method public onMyPropertyPressed()V
    .locals 6

    .prologue
    .line 227
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "home"

    const-string v2, "my_property"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 229
    invoke-static {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;)V

    .line 230
    return-void
.end method

.method public onNearMePressed()V
    .locals 7

    .prologue
    .line 213
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "home"

    const-string v2, "near_me"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 215
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESConstantsBase;->getAucklandMapCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->AUCKLAND_MAP_ZOOM:I

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v6

    .line 216
    .local v6, "auckland":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->startActivity(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)V

    .line 217
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lnz/co/realestate/android/lib/R$id;->terms:I

    if-ne v3, v4, :cond_1

    .line 148
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget v5, Lnz/co/realestate/android/lib/R$string;->realestatedotcodotnz:I

    invoke-virtual {p0, v5}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sget v4, Lnz/co/realestate/android/lib/R$string;->westpac:I

    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->mTermsAndConditionsOptions:[Ljava/lang/String;

    .line 149
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lnz/co/realestate/android/lib/R$string;->terms_and_conditions:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 151
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->mTermsAndConditionsOptions:[Ljava/lang/String;

    new-instance v4, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;

    invoke-direct {v4, p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity$1;-><init>(Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 187
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 193
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lnz/co/realestate/android/lib/R$id;->version:I

    if-eq v3, v4, :cond_0

    .line 193
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 134
    sget v3, Lnz/co/realestate/android/lib/R$id;->version:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 136
    .local v0, "item":Landroid/view/MenuItem;
    :try_start_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 137
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget v3, Lnz/co/realestate/android/lib/R$string;->version:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 142
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onPropertyPressed(I)V
    .locals 6
    .param p1, "listingId"    # I

    .prologue
    .line 233
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "home_buttons"

    const-string v2, "featured"

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    .line 233
    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 235
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/app/Activity;I)V

    .line 236
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x1040000

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 125
    :cond_0
    return-void

    .line 94
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 96
    aget v3, p3, v1

    if-eqz v3, :cond_3

    .line 98
    aget-object v3, p2, v1

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;

    sget v3, Lnz/co/realestate/android/lib/R$string;->rerequest:I

    invoke-direct {v0, p0, v3, v5}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>(Landroid/content/Context;II)V

    .line 102
    .local v0, "conf":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    sget v3, Lnz/co/realestate/android/lib/R$string;->location:I

    .line 103
    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->access_to_location_reason:I

    .line 104
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v3, v4, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v2

    .line 106
    .local v2, "textDialogFragment":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 108
    .end local v0    # "conf":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    .end local v2    # "textDialogFragment":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    :cond_1
    aget-object v3, p2, v1

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;

    sget v3, Lnz/co/realestate/android/lib/R$string;->rerequest:I

    invoke-direct {v0, p0, v3, v5}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DecisionDialogConfigurator;-><init>(Landroid/content/Context;II)V

    .line 112
    .restart local v0    # "conf":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    sget v3, Lnz/co/realestate/android/lib/R$string;->storage:I

    .line 113
    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->access_to_storage_reason:I

    .line 114
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v3, v4, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->create(Ljava/lang/String;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;

    move-result-object v2

    .line 116
    .restart local v2    # "textDialogFragment":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;->setId(I)Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 94
    .end local v0    # "conf":Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogConfigurator;
    .end local v2    # "textDialogFragment":Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog$DialogFragment;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_3
    aget-object v3, p2, v1

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lnz/co/realestate/android/lib/eo/location/util/RESLocationUtil$UpdateUserLocationIntentService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 83
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 84
    :cond_0
    return-void
.end method

.method public onSearchPressed()V
    .locals 7

    .prologue
    .line 220
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "home"

    const-string v2, "search"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 222
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onStart()V

    .line 88
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->checkPermissions()V

    .line 89
    return-void
.end method
