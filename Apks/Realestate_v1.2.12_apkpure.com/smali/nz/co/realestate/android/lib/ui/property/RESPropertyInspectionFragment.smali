.class public final Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESPropertyInspectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/view/View$OnClickListener;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private final mChecklistInspectionOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;",
            ">;"
        }
    .end annotation
.end field

.field private mChecklistLayout:Landroid/view/ViewGroup;

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

.field private mOverallInspectionOption:Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistInspectionOptions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->onAdvertisementImageClick()V

    return-void
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 172
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v3, "listing_details"

    invoke-virtual {v0, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "section":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 162
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "listing_details"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 164
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 166
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getResources()Landroid/content/res/Resources;

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

    .line 168
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 163
    goto :goto_0

    .line 164
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 167
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v10}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->setRetainInstance(Z)V

    .line 57
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v5

    invoke-virtual {v5, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 59
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lnz/co/realestate/android/lib/R$id;->overall_inspectionoption:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mOverallInspectionOption:Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

    .line 60
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lnz/co/realestate/android/lib/R$id;->checklist_layout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistLayout:Landroid/view/ViewGroup;

    .line 62
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 63
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistInspectionOptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 65
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentInspectionOptions()Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;

    .line 70
    .local v0, "config":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
    new-instance v4, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;-><init>(Landroid/content/Context;)V

    .line 71
    .local v4, "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;
    iget v5, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryId:I

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setCategoryId(I)V

    .line 72
    iget-object v5, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setCategoryTitle(Ljava/lang/String;)V

    .line 73
    iget-object v5, v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;->mCategoryAnalytics:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setAnalyticsSection(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4, p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistInspectionOptions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v4}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    .line 66
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lnz/co/realestate/android/lib/R$layout;->horizontal_divider:I

    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistLayout:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "divider":Landroid/view/View;
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 90
    .end local v0    # "config":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
    .end local v2    # "divider":Landroid/view/View;
    .end local v4    # "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;
    :cond_1
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mOverallInspectionOption:Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

    invoke-virtual {v5, p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 93
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v6, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$1;

    invoke-direct {v6, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->updateAdvertisementImage()V

    .line 101
    iput-boolean v10, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mViewsInitialised:Z

    .line 102
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->updateView()V

    .line 103
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->updateView()V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    move-object v0, p1

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

    .line 153
    .local v0, "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getCategoryId()I

    move-result v2

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getCategoryTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getAnalyticsSection()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;->showPropertyInspectionOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget v0, Lnz/co/realestate/android/lib/R$layout;->property_inspection_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 120
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 121
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 194
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->updateAdvertisementImage()V

    .line 195
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 125
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_INSPECTION:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;

    .prologue
    .line 182
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment$FragmentListener;

    .line 183
    return-void
.end method

.method public setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V
    .locals 0
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 143
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 144
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->updateView()V

    .line 145
    return-void
.end method

.method public updateView()V
    .locals 3

    .prologue
    .line 133
    iget-boolean v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mViewsInitialised:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mOverallInspectionOption:Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    .line 135
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mChecklistInspectionOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;

    .local v0, "option":Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-virtual {v0, v2}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    goto :goto_0
.end method
