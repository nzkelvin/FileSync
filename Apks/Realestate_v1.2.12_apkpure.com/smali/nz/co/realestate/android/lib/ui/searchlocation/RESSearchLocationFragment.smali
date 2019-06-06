.class public final Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESSearchLocationFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;,
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;,
        Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

.field private mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

.field private mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

.field private mLocationSearchEditText:Landroid/widget/EditText;

.field private mSearchButton:Landroid/widget/Button;

.field private mSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

.field private mSearchingDialog:Landroid/app/Dialog;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchingDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    return-object v0
.end method

.method static synthetic access$302(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    return-object v0
.end method

.method static synthetic access$502(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    return-object p1
.end method

.method private getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 271
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentBaseMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v1

    return-object v1
.end method

.method private onSearch()V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->clearCurrentMapListings()V

    .line 158
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->searchGeocode()V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->searchLocation()V

    goto :goto_0
.end method

.method private searchGeocode()V
    .locals 4

    .prologue
    .line 192
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v0

    .line 193
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingTypeId(Ljava/lang/Integer;)V

    .line 196
    new-instance v1, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/content/Context;Ljava/lang/String;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    .line 197
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    .line 170
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESConstantsBase;->getNewZealandMapCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    sget v5, Lnz/co/realestate/android/lib/core/RESConstantsBase;->NZ_MAP_ZOOM:I

    invoke-static {v4, v5}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v2

    .line 171
    .local v2, "nz":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    .line 174
    .local v1, "locationBounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v3

    .line 175
    .local v3, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 176
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    :goto_0
    invoke-virtual {v3, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 177
    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setZoomLevel(Ljava/lang/Integer;)V

    .line 178
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingTypeId(Ljava/lang/Integer;)V

    .line 181
    new-instance v4, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    iput-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    .line 182
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void

    .end local v0    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    :cond_0
    move-object v0, v2

    .line 175
    goto :goto_0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mViewsInitialised:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->updateView()V

    goto :goto_0

    .line 148
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-super {p0, v2}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 71
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->search_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchButton:Landroid/widget/Button;

    .line 72
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->location_search_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    .line 73
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->location_options:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    .line 76
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchButton:Landroid/widget/Button;

    new-instance v1, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$2;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$3;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 101
    iput-boolean v2, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mViewsInitialised:Z

    .line 102
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->updateView()V

    .line 103
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 107
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->updateView()V

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    sget v0, Lnz/co/realestate/android/lib/R$layout;->search_location_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 126
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendMapListingsRequestAsyncTask;->cancel(Z)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->cancel(Z)Z

    .line 128
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mSearchingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 129
    :cond_2
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 130
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 137
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedRegions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->updateView()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedDistricts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->updateView()V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedSuburbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->updateView()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 121
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->updateView()V

    .line 122
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 116
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTINGS_MAP_SEARCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

    .prologue
    .line 279
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$FragmentListener;

    .line 280
    return-void
.end method
