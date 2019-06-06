.class public abstract Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;
.super Landroid/support/v4/app/ListFragment;
.source "RESMyPropertyListFragmentBase.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<+",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
        ">;>;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;

.field private mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

.field private final mListAdapterListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapterListings:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    .prologue
    .line 43
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->onAdvertisementImageClick()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;I)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->onListItemLongClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->onRemoveProperty(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    return-void
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    const-string v3, "my_property"

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "section":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method private onListItemLongClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    if-ltz p1, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    move v2, v4

    .line 135
    :goto_0
    return v2

    .line 123
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {v2, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 124
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 125
    .local v1, "title":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/String;

    sget v6, Lnz/co/realestate/android/lib/R$string;->remove_from_my_property:I

    invoke-virtual {p0, v6}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, -0x1

    new-instance v6, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$4;

    invoke-direct {v6, p0, v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$4;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    invoke-virtual {v2, v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lnz/co/realestate/android/lib/R$string;->cancel:I

    new-instance v5, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$3;

    invoke-direct {v5, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$3;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;)V

    .line 130
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v2, v3

    .line 135
    goto :goto_0

    .line 124
    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    sget v2, Lnz/co/realestate/android/lib/R$string;->property:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private onRemoveProperty(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 8
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    const/4 v7, 0x0

    .line 143
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listing"

    const-string v2, "details"

    const-string v3, "remove-from-my-property"

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 145
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v0

    iget v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->deleteRow(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 146
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceLoggedIn(Landroid/content/Context;)Z

    .line 147
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    iget v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-virtual {v0, v1, v7}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCachedMyPropertyListing(ILnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    .line 148
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 149
    return-void
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 157
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "my_property"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 159
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 161
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->tileBitmapEnds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 158
    goto :goto_0

    .line 159
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 162
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected abstract constructAdapter(Ljava/util/List;)Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;)",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;"
        }
    .end annotation
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v4/app/ListFragment;->setRetainInstance(Z)V

    .line 64
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapterListings:Ljava/util/List;

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->constructAdapter(Ljava/util/List;)Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    .line 65
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 68
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$1;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->updateAdvertisementImage()V

    .line 77
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 79
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 81
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$2;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$2;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 86
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<+",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    sget v0, Lnz/co/realestate/android/lib/R$layout;->my_property_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 105
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 106
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 7
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    const/4 v4, 0x0

    .line 247
    const-string v5, "adImage"

    invoke-virtual {p1, v5}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->updateAdvertisementImage()V

    .line 248
    :cond_0
    const-string v1, "my_property_listings"

    .line 249
    .local v1, "section":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v5

    invoke-virtual {v5, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isSynchronising(Ljava/lang/String;)Z

    move-result v2

    .line 250
    .local v2, "sync":Z
    const-string v5, "synchronising"

    invoke-virtual {p1, v5}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 251
    .local v0, "finishedSync":Z
    :goto_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->isUserLoggedIn()Z

    move-result v3

    .line 252
    .local v3, "userLoggedIn":Z
    if-nez v0, :cond_1

    const-string v5, "loggedInUser"

    invoke-virtual {p1, v5}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    .line 253
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 254
    :cond_2
    return-void

    .end local v0    # "finishedSync":Z
    .end local v3    # "userLoggedIn":Z
    :cond_3
    move v0, v4

    .line 250
    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 113
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {v1, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 114
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;

    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    invoke-interface {v1, v2}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;->onPropertySelected(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<+",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;>;",
            "Ljava/util/List",
            "<+",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<+Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;>;"
    .local p2, "listings":Ljava/util/List;, "Ljava/util/List<+Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapterListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapterListings:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<+",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<+Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapterListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->notifyDataSetChanged()V

    .line 240
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 100
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_MY_PROPERTY_PROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;

    .prologue
    .line 261
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$FragmentListener;

    .line 262
    return-void
.end method
