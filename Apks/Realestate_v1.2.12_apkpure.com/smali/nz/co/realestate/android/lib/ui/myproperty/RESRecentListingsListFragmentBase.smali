.class public abstract Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;
.super Landroid/support/v4/app/ListFragment;
.source "RESRecentListingsListFragmentBase.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;

.field private mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;

    .prologue
    .line 34
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->onAdvertisementImageClick()V

    return-void
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    const-string v3, "recent_properties"

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "section":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 130
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "recent_properties"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 132
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 134
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getResources()Landroid/content/res/Resources;

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

    .line 136
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 131
    goto :goto_0

    .line 132
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 135
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected abstract constructAdapter()Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    invoke-super {p0, v2}, Landroid/support/v4/app/ListFragment;->setRetainInstance(Z)V

    .line 54
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->constructAdapter()Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    .line 55
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 58
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$1;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->updateAdvertisementImage()V

    .line 67
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 69
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 71
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    if-nez v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "addRecentListingComplete"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, p0, v2}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;[Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    .line 72
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->startHandling()V

    .line 73
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
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$2;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$2;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget v0, Lnz/co/realestate/android/lib/R$layout;->recent_listings_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->stopHandling()V

    .line 88
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 89
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 90
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 149
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->updateAdvertisementImage()V

    .line 150
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 97
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbRecentPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, p3, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 99
    .local v1, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;

    iget v3, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-interface {v2, v3}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;->onPropertySelected(I)V

    .line 100
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    invoke-virtual {v0, p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 118
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 122
    return-void
.end method

.method public onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 170
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 83
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_MY_PROPERTY_RECENT:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;

    .prologue
    .line 157
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;->mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase$FragmentListener;

    .line 158
    return-void
.end method
