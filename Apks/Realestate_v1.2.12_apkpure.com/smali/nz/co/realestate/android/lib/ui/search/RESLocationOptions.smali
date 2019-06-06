.class public Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
.super Landroid/widget/LinearLayout;
.source "RESLocationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;,
        Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbToNameMapFunction;,
        Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictToNameMapFunction;,
        Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionToNameMapFunction;
    }
.end annotation


# instance fields
.field private mDistrictRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;

.field private mInflated:Z

.field private mRegionRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;

.field private mSelectedDistrict:Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

.field private mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

.field private mSelectedSuburb:Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

.field private mSuburbRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->setOrientation(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->setOrientation(I)V

    .line 46
    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .prologue
    .line 22
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedDistrict:Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .prologue
    .line 22
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedDistrict:Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    return-object p1
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedSuburb:Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    return-object v0
.end method

.method static synthetic access$302(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    .prologue
    .line 22
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedSuburb:Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->updateCachedDistricts(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)V

    return-void
.end method

.method static synthetic access$600(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->updateCachedSuburbs(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)V

    return-void
.end method

.method private inflate()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lnz/co/realestate/android/lib/R$layout;->search_location_options:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mInflated:Z

    .line 122
    return-void
.end method

.method private initialiseViews()V
    .locals 5

    .prologue
    .line 63
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mInflated:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->inflate()V

    .line 65
    :cond_0
    new-instance v0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->region_row:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->region:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mRegionRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;

    .line 66
    new-instance v0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->district_row:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->district:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mDistrictRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;

    .line 67
    new-instance v0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->suburb_row:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->suburb:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;-><init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSuburbRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mViewsInitialised:Z

    .line 70
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->updateView()V

    .line 71
    return-void
.end method

.method private updateCachedDistricts(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)V
    .locals 1
    .param p1, "region"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .prologue
    .line 129
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedDistrictsIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)V

    .line 130
    return-void
.end method

.method private updateCachedSuburbs(Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)V
    .locals 1
    .param p1, "district"    # Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .prologue
    .line 137
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedSuburbsIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)V

    .line 138
    return-void
.end method


# virtual methods
.method public getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedSuburb:Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedSuburb:Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedDistrict:Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedDistrict:Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 54
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->initialiseViews()V

    .line 55
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->updateView()V

    .line 56
    return-void
.end method

.method public updateView()V
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 78
    iget-boolean v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mViewsInitialised:Z

    if-nez v8, :cond_0

    .line 101
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    .line 82
    .local v2, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mRegionRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->update()V

    .line 83
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mDistrictRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;->update()V

    .line 84
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSuburbRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->update()V

    .line 87
    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedRegions()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    move v3, v6

    .line 88
    .local v3, "regionsValid":Z
    :goto_1
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mRegionRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v3, :cond_2

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    if-eqz v8, :cond_3

    move v1, v6

    .line 92
    .local v1, "districtsVisible":Z
    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedDistricts()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedDistricts()Ljava/util/Map;

    move-result-object v8

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    iget v10, v10, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v6

    .line 93
    .local v0, "districtsValid":Z
    :goto_4
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mDistrictRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v1, :cond_5

    move v8, v7

    :goto_5
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mDistrictRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$DistrictRowType;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedRegion:Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedDistrict:Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    if-eqz v8, :cond_6

    move v5, v6

    .line 98
    .local v5, "suburbsVisible":Z
    :goto_6
    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v8

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSelectedDistrict:Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    iget v10, v10, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v6

    .line 99
    .local v4, "suburbsValid":Z
    :goto_7
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSuburbRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_8

    :goto_8
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->mSuburbRowType:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;

    invoke-virtual {v6}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "districtsValid":Z
    .end local v1    # "districtsVisible":Z
    .end local v3    # "regionsValid":Z
    .end local v4    # "suburbsValid":Z
    .end local v5    # "suburbsVisible":Z
    :cond_1
    move v3, v7

    .line 87
    goto :goto_1

    .restart local v3    # "regionsValid":Z
    :cond_2
    move v8, v9

    .line 88
    goto :goto_2

    :cond_3
    move v1, v7

    .line 91
    goto :goto_3

    .restart local v1    # "districtsVisible":Z
    :cond_4
    move v0, v7

    .line 92
    goto :goto_4

    .restart local v0    # "districtsValid":Z
    :cond_5
    move v8, v9

    .line 93
    goto :goto_5

    :cond_6
    move v5, v7

    .line 97
    goto :goto_6

    .restart local v5    # "suburbsVisible":Z
    :cond_7
    move v4, v7

    .line 98
    goto :goto_7

    .restart local v4    # "suburbsValid":Z
    :cond_8
    move v7, v9

    .line 99
    goto :goto_8
.end method
