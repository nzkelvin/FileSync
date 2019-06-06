.class public final Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESSearchFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;
.implements Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;,
        Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;,
        Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;,
        Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;"
    }
.end annotation


# static fields
.field private static final EXTRA_LOCATION:Ljava/lang/String; = "extra_location"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

.field private mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

.field private mGoButton:Landroid/widget/ImageView;

.field private mListingSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

.field private mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

.field private mLocationSearchEditText:Landroid/widget/EditText;

.field private mQuickFindEditText:Landroid/widget/EditText;

.field private mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

.field private mSearchButton:Landroid/widget/Button;

.field private mSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

.field private mSearchingDialog:Landroid/app/Dialog;

.field private mViewsInitialised:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mQuickFindEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onListingDetailsSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->updateView()V

    return-void
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 61
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchingDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    return-object v0
.end method

.method static synthetic access$502(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    .prologue
    .line 61
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    return-object v0
.end method

.method static synthetic access$700(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    return-object v0
.end method

.method static synthetic access$702(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    .prologue
    .line 61
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    return-object p1
.end method

.method static synthetic access$800(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    return-object v0
.end method

.method static synthetic access$802(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    .prologue
    .line 61
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    return-object p1
.end method

.method private getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 443
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentBaseMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;)Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v1, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;-><init>()V

    .line 91
    .local v1, "fragment":Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_location"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method

.method private onListingDetailsSearch(Ljava/lang/String;)V
    .locals 8
    .param p1, "listingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "search"

    const-string v2, "quick-find"

    const-wide/16 v4, 0x1

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 297
    new-instance v6, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-direct {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;-><init>()V

    .line 298
    .local v6, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v7

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListingNumbers(Ljava/util/List;)V

    .line 299
    invoke-virtual {v6}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setResponseFormatFull()V

    .line 302
    new-instance v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    .line 303
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    new-array v1, v7, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onSearch()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->clearCurrentMapListings()V

    .line 229
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->searchGeocode()V

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->searchLocation()V

    goto :goto_0
.end method

.method private onShowSearchByListingDetails()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    sget v3, Lnz/co/realestate/android/lib/R$string;->search_by_listing_number:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "title":Ljava/lang/String;
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;

    sget v3, Lnz/co/realestate/android/lib/R$string;->search:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->cancel:I

    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .local v0, "config":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$DefaultTextInputDialogConfigurator;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->create(Landroid/content/Context;Ljava/lang/String;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog$TextInputDialogConfigurator;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v1

    .line 284
    .local v1, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    sget v3, Lnz/co/realestate/android/lib/R$string;->listing_number:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setHint(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 285
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setImeOptions(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 286
    new-instance v3, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;

    invoke-direct {v3, p0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    invoke-virtual {v1, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 291
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->show()V

    .line 292
    return-void
.end method

.method private searchGeocode()V
    .locals 7

    .prologue
    .line 261
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "location":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "search"

    const-string v2, "location"

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 267
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v6

    .line 268
    .local v6, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingTypeId(Ljava/lang/Integer;)V

    .line 271
    new-instance v0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v6}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/content/Context;Ljava/lang/String;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    .line 272
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 273
    return-void
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    .line 241
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESConstantsBase;->getNewZealandMapCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    sget v5, Lnz/co/realestate/android/lib/core/RESConstantsBase;->NZ_MAP_ZOOM:I

    invoke-static {v4, v5}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v2

    .line 242
    .local v2, "nz":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    .line 245
    .local v1, "locationBounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getMapListingsRequest()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v3

    .line 246
    .local v3, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 247
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    :goto_0
    invoke-virtual {v3, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    .line 248
    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getZoomLevelFromBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setZoomLevel(Ljava/lang/Integer;)V

    .line 249
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingTypeId(Ljava/lang/Integer;)V

    .line 252
    new-instance v4, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;)V

    iput-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    .line 253
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    return-void

    .end local v0    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    :cond_0
    move-object v0, v2

    .line 246
    goto :goto_0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mViewsInitialised:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationSearchEditText:Landroid/widget/EditText;

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

    .line 219
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->updateView()V

    .line 220
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->updateView()V

    goto :goto_0

    .line 218
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->setRetainInstance(Z)V

    .line 108
    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->setHasOptionsMenu(Z)V

    .line 110
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->search_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchButton:Landroid/widget/Button;

    .line 111
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->go_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGoButton:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->location_search_edittext:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    .line 113
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->location_options:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationOptions:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    .line 114
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->refine_options:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 115
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->quick_find_edittext:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mQuickFindEditText:Landroid/widget/EditText;

    .line 117
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->setOptionsListener(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;)V

    .line 120
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchButton:Landroid/widget/Button;

    new-instance v2, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$1;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGoButton:Landroid/widget/ImageView;

    new-instance v2, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$2;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    new-instance v2, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$3;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    new-instance v2, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$4;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$4;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mQuickFindEditText:Landroid/widget/EditText;

    new-instance v2, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$5;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$5;-><init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 164
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_location"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "location":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mLocationSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onSearch()V

    .line 170
    .end local v0    # "location":Ljava/lang/String;
    :cond_0
    iput-boolean v3, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mViewsInitialised:Z

    .line 171
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->updateView()V

    .line 172
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 176
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->updateView()V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 426
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 429
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    sget v0, Lnz/co/realestate/android/lib/R$layout;->search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 194
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 195
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendMapListingsRequestAsyncTask;->cancel(Z)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mGeocodeSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendGeocodeMapListingsRequestAsyncTask;->cancel(Z)Z

    .line 197
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mListingSearchTask:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$SendListingsRequestAsyncTask;->cancel(Z)Z

    .line 198
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mSearchingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 199
    :cond_3
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 200
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 207
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedRegions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->updateView()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedDistricts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->updateView()V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedSuburbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->updateView()V

    goto :goto_0
.end method

.method public onFloorAreaUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V
    .locals 1
    .param p1, "dialog"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .prologue
    .line 463
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->onFloorAreaUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    .line 464
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 433
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onShowSearchByListingDetails()V

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public onPriceUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V
    .locals 1
    .param p1, "dialog"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    .prologue
    .line 455
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mRefineOptions:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->onPriceUpdated(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;)V

    .line 456
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 190
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->updateView()V

    .line 191
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 185
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_SEARCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onUpdateFloorArea(Ljava/util/List;Ljava/util/List;II)V
    .locals 1
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "fromAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "toAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;->onUpdateFloorArea(Ljava/util/List;Ljava/util/List;II)V

    .line 460
    :cond_0
    return-void
.end method

.method public onUpdatePrice(Ljava/util/List;Ljava/util/List;II)V
    .locals 1
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;->onUpdatePrice(Ljava/util/List;Ljava/util/List;II)V

    .line 452
    :cond_0
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    .prologue
    .line 311
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$FragmentListener;

    .line 312
    return-void
.end method
