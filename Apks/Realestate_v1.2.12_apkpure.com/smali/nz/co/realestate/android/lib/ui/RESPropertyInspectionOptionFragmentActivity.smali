.class public Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESPropertyInspectionOptionFragmentActivity.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;",
        "Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_TAKE_PHOTO:I = 0x0

.field private static final EXTRA_ANALYTICS:Ljava/lang/String; = "analytics"

.field private static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field private static final EXTRA_CATEGORY_TITLE:Ljava/lang/String; = "category_title"

.field private static final EXTRA_LISTING_ID:Ljava/lang/String; = "listing_id"

.field private static final INSTANCE_STATE_LAST_PHOTO_FILENAME:Ljava/lang/String; = "lastPhotoFilename"


# instance fields
.field private mCategoryId:I

.field private mCategoryTitle:Ljava/lang/String;

.field private mLastPhotoFilename:Ljava/lang/String;

.field private mListingId:I

.field private mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    return-void
.end method

.method public static putBundle(Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "categoryTitle"    # Ljava/lang/String;
    .param p4, "analytics"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "listing_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v0, "category_id"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string v0, "category_title"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v0, "analytics"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    if-nez p1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mLastPhotoFilename:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getInspectionImagesFolder()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mLastPhotoFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mLastPhotoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onPhotoAdded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_inspection_option_layout:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listing_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mListingId:I

    .line 70
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryId:I

    .line 71
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryTitle:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->property_inspection_option_fragment:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .line 74
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->setFragmentListener(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;)V

    .line 75
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iget v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryId:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->setCategoryId(I)V

    .line 76
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "analytics"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->setAnalytics(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    iget v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mListingId:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedMyPropertyListing(I)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    .line 80
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    if-nez v0, :cond_0

    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .end local v0    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    iget v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mListingId:I

    invoke-direct {v0, v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;-><init>(I)V

    .line 81
    .restart local v0    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    .line 84
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 88
    if-eqz p1, :cond_1

    const-string v1, "lastPhotoFilename"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mLastPhotoFilename:Ljava/lang/String;

    .line 89
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 127
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$menu;->inspection_option_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onDestroy()V

    .line 107
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 108
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 3
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 187
    const-string v1, "cachedMyPropertyListing"

    invoke-virtual {p1, v1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    iget v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mListingId:I

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedMyPropertyListing(I)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    move-result-object v0

    .line 190
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    if-nez v0, :cond_2

    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .end local v0    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    iget v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mListingId:I

    invoke-direct {v0, v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;-><init>(I)V

    .line 191
    .restart local v0    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    :cond_2
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mPropertyInspectionOptionFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->tips:I

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->tip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->showTip(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->finish()V

    goto :goto_0

    .line 156
    :cond_1
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 137
    .local v0, "show":Z
    sget v3, Lnz/co/realestate/android/lib/R$id;->tips:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 138
    .local v2, "tipsItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;->tip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 139
    .local v1, "tip":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    :cond_0
    return v0

    .line 139
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 93
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "lastPhotoFilename"

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mLastPhotoFilename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public showPhotoGallery(Ljava/util/List;I)V
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mCategoryTitle:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->putBundle(Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public showTip(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "tip"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->show()V

    goto :goto_0
.end method

.method public takePhoto()V
    .locals 5

    .prologue
    .line 169
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v1

    sget-object v2, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_INSPECTION_ADD_PHOTO:Ljava/lang/String;

    invoke-interface {v1, v2}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mLastPhotoFilename:Ljava/lang/String;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getInspectionImagesFolder()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->mLastPhotoFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionOptionFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method
