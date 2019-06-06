.class public Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "RESOpenHomesListFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;"
    }
.end annotation


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;

.field private mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->onAdvertisementImageClick()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->onListItemLongClick(I)Z

    move-result v0

    return v0
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    const-string v3, "open_homes"

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "section":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method private onListItemLongClick(I)Z
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    if-ltz p1, :cond_0

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    :cond_0
    move v4, v5

    .line 123
    :goto_0
    return v4

    .line 108
    :cond_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-virtual {v4, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;

    .line 109
    .local v0, "baseItem":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    instance-of v4, v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 110
    check-cast v1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    .line 111
    .local v1, "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;
    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->getOpenHomeTuple()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 112
    .local v2, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    iget-object v4, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 113
    .local v3, "title":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/String;

    sget v8, Lnz/co/realestate/android/lib/R$string;->remove_from_open_homes:I

    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, -0x1

    new-instance v8, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$4;

    invoke-direct {v8, p0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$4;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;)V

    invoke-virtual {v4, v7, v5, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lnz/co/realestate/android/lib/R$string;->cancel:I

    new-instance v7, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$3;

    invoke-direct {v7, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;)V

    .line 118
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v4, v6

    .line 123
    goto :goto_0

    .line 112
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    sget v4, Lnz/co/realestate/android/lib/R$string;->open_home:I

    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 141
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "open_homes"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 143
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 145
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getResources()Landroid/content/res/Resources;

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

    .line 147
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 142
    goto :goto_0

    .line 143
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 146
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateListAdapter()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->clear()V

    .line 171
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedOpenHomeAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->addAllSupport(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 53
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    const/4 v1, 0x1

    invoke-super {p0, v1}, Landroid/support/v4/app/ListFragment;->setRetainInstance(Z)V

    .line 56
    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 57
    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedOpenHomeAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;)V

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    .line 58
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 59
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v2, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$1;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->updateAdvertisementImage()V

    .line 70
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$2;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    sget v0, Lnz/co/realestate/android/lib/R$layout;->open_homes_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 89
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 160
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedPresentableOpenHomes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->updateListAdapter()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->updateAdvertisementImage()V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 96
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mListAdapter:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;

    invoke-virtual {v2, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;

    .line 97
    .local v0, "baseItem":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    instance-of v2, v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 98
    check-cast v1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    .line 99
    .local v1, "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->getOpenHomeTuple()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-interface {v3, v2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;->onOpenHomeSelected(I)V

    goto :goto_0
.end method

.method public onMapClick(Ljava/util/List;Ljava/util/Date;)V
    .locals 1
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "openHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/realestate/android/lib/ui/RESOpenHomesMapFragmentActivity;->startActivity(Landroid/app/Activity;Ljava/util/List;Ljava/util/Date;)V

    .line 188
    return-void
.end method

.method public onMapLongClick(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 191
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->show_on_map:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 193
    return-void
.end method

.method protected onRemoveOpenHome(Lnz/co/jsalibrary/android/tuple/JSATuple;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    invoke-static {v1, v0}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$RemoveOpenHomeIntentService;->startService(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 83
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_MY_PROPERTY_OPEN_HOMES:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;

    .prologue
    .line 175
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$FragmentListener;

    .line 176
    return-void
.end method
