.class public abstract Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.super Landroid/widget/LinearLayout;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToIdMapFunction;,
        Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;
    }
.end annotation


# instance fields
.field private mFloorAreaRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;

.field private mInflated:Z

.field private mListedAfterRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;

.field private mNumberOfBedroomsRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;

.field private mOpenHomesRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;

.field private mOptionsListener:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

.field private mPriceRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;

.field private mPropertyTypeMultipleRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

.field private mPropertyTypeRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->setOrientation(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->setOrientation(I)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .prologue
    .line 34
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .prologue
    .line 34
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mOptionsListener:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

    return-object v0
.end method

.method private getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 158
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentBaseListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v1

    return-object v1
.end method

.method private getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 153
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentBaseMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v1

    return-object v1
.end method

.method private inflate()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 143
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lnz/co/realestate/android/lib/R$layout;->search_refine_options:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mInflated:Z

    .line 145
    return-void
.end method

.method private initialiseViews()V
    .locals 11

    .prologue
    .line 85
    iget-boolean v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mInflated:Z

    if-nez v7, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->inflate()V

    .line 87
    :cond_0
    sget v7, Lnz/co/realestate/android/lib/R$id;->property_type_row:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 88
    .local v6, "propertyTypeRowTypeView":Landroid/view/View;
    sget v7, Lnz/co/realestate/android/lib/R$id;->property_type_multiple_row:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 89
    .local v5, "propertyTypeMultipleRowTypeView":Landroid/view/View;
    sget v7, Lnz/co/realestate/android/lib/R$id;->number_of_bedrooms_row:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "numberOfBedroomsRowTypeView":Landroid/view/View;
    sget v7, Lnz/co/realestate/android/lib/R$id;->floor_area_row:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "floorAreaRowTypeView":Landroid/view/View;
    sget v7, Lnz/co/realestate/android/lib/R$id;->price_row:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 92
    .local v4, "priceRowTypeView":Landroid/view/View;
    sget v7, Lnz/co/realestate/android/lib/R$id;->open_homes_row:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "openHomesRowTypeView":Landroid/view/View;
    sget v7, Lnz/co/realestate/android/lib/R$id;->listed_after_row:I

    invoke-virtual {p0, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "listedAfterRowTypeView":Landroid/view/View;
    if-eqz v6, :cond_1

    new-instance v7, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$string;->property_type:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v6, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;

    .line 96
    :cond_1
    if-eqz v5, :cond_2

    new-instance v7, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$string;->property_types:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v5, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeMultipleRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    .line 97
    :cond_2
    if-eqz v2, :cond_3

    new-instance v7, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$string;->number_of_bedrooms:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v2, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mNumberOfBedroomsRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    new-instance v7, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$string;->floor_area:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v0, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mFloorAreaRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;

    .line 99
    :cond_4
    if-eqz v4, :cond_5

    new-instance v7, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v9

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getPriceTitle(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v4, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPriceRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;

    .line 100
    :cond_5
    if-eqz v3, :cond_6

    new-instance v7, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$string;->open_homes:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v3, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mOpenHomesRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;

    .line 101
    :cond_6
    if-eqz v1, :cond_7

    new-instance v7, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$string;->listed_in_the_last:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v1, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mListedAfterRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;

    .line 103
    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mViewsInitialised:Z

    .line 104
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->updateView()V

    .line 105
    return-void
.end method


# virtual methods
.method protected getFloorAreaResourceNameFrom(I)Ljava/lang/String;
    .locals 1
    .param p1, "listingTypeId"    # I

    .prologue
    .line 454
    const-string v0, "floor_area_from"

    return-object v0
.end method

.method protected getFloorAreaResourceNameTo(I)Ljava/lang/String;
    .locals 1
    .param p1, "listingTypeId"    # I

    .prologue
    .line 458
    const-string v0, "floor_area_to"

    return-object v0
.end method

.method protected abstract getPriceResourceNameFrom(I)Ljava/lang/String;
.end method

.method protected abstract getPriceResourceNameTo(I)Ljava/lang/String;
.end method

.method protected getPriceTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "currentListingTypeId"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$string;->price:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 76
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->initialiseViews()V

    .line 77
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->updateView()V

    .line 78
    return-void
.end method

.method public onFloorAreaUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V
    .locals 11
    .param p1, "dialog"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .prologue
    .line 728
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    .line 731
    .local v0, "currentListingTypeId":I
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->getFromValue()I

    move-result v3

    .line 732
    .local v3, "fromIndex":I
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getFloorAreaResourceNameFrom(I)Ljava/lang/String;

    move-result-object v4

    .line 733
    .local v4, "fromResource":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    invoke-static {v9, v10, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 734
    .local v2, "fromAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v9, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v9}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v2, v9}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 735
    .local v1, "fromAreaValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v10

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setFloorAreaMin(Ljava/lang/Integer;)V

    .line 736
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v10

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setFloorAreaMin(Ljava/lang/Integer;)V

    .line 739
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->getToValue()I

    move-result v7

    .line 740
    .local v7, "toIndex":I
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getFloorAreaResourceNameTo(I)Ljava/lang/String;

    move-result-object v8

    .line 741
    .local v8, "toResource":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    invoke-static {v9, v10, v8}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 742
    .local v6, "toAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v9, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v9}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v6, v9}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v5

    .line 743
    .local v5, "toAreaValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v10

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setFloorAreaMax(Ljava/lang/Integer;)V

    .line 744
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v10

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setFloorAreaMax(Ljava/lang/Integer;)V

    .line 747
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->updateView()V

    .line 748
    return-void
.end method

.method public onPriceUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V
    .locals 11
    .param p1, "dialog"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .prologue
    .line 701
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v9

    invoke-virtual {v9}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    .line 704
    .local v0, "currentListingTypeId":I
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->getFromValue()I

    move-result v1

    .line 705
    .local v1, "fromIndex":I
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getPriceResourceNameFrom(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, "fromResource":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$xml;->internal_arrays:I

    invoke-static {v9, v10, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 707
    .local v3, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v9, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v9}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v3, v9}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 708
    .local v2, "fromPriceValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v10

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setPriceMin(Ljava/lang/Integer;)V

    .line 709
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v10

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setPriceMin(Ljava/lang/Integer;)V

    .line 712
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;->getToValue()I

    move-result v5

    .line 713
    .local v5, "toIndex":I
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getPriceResourceNameTo(I)Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, "toResource":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lnz/co/realestate/android/lib/R$xml;->internal_arrays:I

    invoke-static {v9, v10, v8}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 715
    .local v7, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v9, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v9}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v7, v9}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v6

    .line 716
    .local v6, "toPriceValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v10

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setPriceMax(Ljava/lang/Integer;)V

    .line 717
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v10

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setPriceMax(Ljava/lang/Integer;)V

    .line 720
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->updateView()V

    .line 721
    return-void
.end method

.method public setOptionsListener(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

    .prologue
    .line 67
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mOptionsListener:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

    .line 68
    return-void
.end method

.method public updateView()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 120
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mViewsInitialised:Z

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->update()V

    .line 124
    :cond_2
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeMultipleRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeMultipleRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->update()V

    .line 125
    :cond_3
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mNumberOfBedroomsRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mNumberOfBedroomsRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->update()V

    .line 126
    :cond_4
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mFloorAreaRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mFloorAreaRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->update()V

    .line 127
    :cond_5
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPriceRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->update()V

    .line 128
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mOpenHomesRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mOpenHomesRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->update()V

    .line 129
    :cond_6
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mListedAfterRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->update()V

    .line 132
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    .line 133
    .local v0, "propertyTypesAvailable":Z
    :goto_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_9

    move v2, v1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_7
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeMultipleRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->mPropertyTypeMultipleRowType:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_a

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "propertyTypesAvailable":Z
    :cond_8
    move v0, v1

    .line 132
    goto :goto_1

    .restart local v0    # "propertyTypesAvailable":Z
    :cond_9
    move v2, v3

    .line 133
    goto :goto_2

    :cond_a
    move v1, v3

    .line 134
    goto :goto_3
.end method
