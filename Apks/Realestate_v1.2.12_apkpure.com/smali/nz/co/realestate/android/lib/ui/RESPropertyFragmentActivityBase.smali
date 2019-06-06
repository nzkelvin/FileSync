.class public abstract Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;
.super Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;
.source "RESPropertyFragmentActivityBase.java"

# interfaces
.implements Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;",
        "Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_LISTING_ID:Ljava/lang/String; = "listingId"


# instance fields
.field private mIsMyPropertyListing:Z

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field private mListingId:I

.field private mLoadListingTask:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;

.field private mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

.field private mPropertyAffordabilityFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

.field private mPropertyDetailsFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

.field private mRegisteredReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mRegisteredReceivers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/content/Context;Landroid/os/Handler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Handler;

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getMethods(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/content/Context;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mIsMyPropertyListing:Z

    return p1
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;
    .param p1, "x1"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 48
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    return-object p1
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mPropertyDetailsFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;)Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mPropertyAffordabilityFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    return-object v0
.end method

.method private buildPropertyMapActivityIntent(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Landroid/content/Intent;
    .locals 3
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyMapFragmentActivity;->putBundle(Landroid/content/Intent;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V

    .line 291
    return-object v0
.end method

.method private constructEmailBody()Ljava/lang/String;
    .locals 5

    .prologue
    .line 274
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    invoke-static {v3}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "description":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->url:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 276
    .local v1, "lines":[Ljava/lang/String;
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 277
    .local v2, "validLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "\n\n"

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 274
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "validLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getMethods(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/content/Context;Landroid/os/Handler;)Ljava/util/List;
    .locals 4
    .param p0, "request"    # Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;

    invoke-direct {v0, p0, p1, p2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$1;-><init>(Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/content/Context;Landroid/os/Handler;)V

    .line 354
    .local v0, "m1":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod<Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;"
    new-instance v1, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;

    invoke-direct {v1, p1, p0, p2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$2;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;Landroid/os/Handler;)V

    .line 359
    .local v1, "m2":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getStartActivityIntent(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listingId"    # I

    .prologue
    .line 71
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    const-string v3, "property_fragment_activity"

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getActivityIntentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "listingId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    return-object v1
.end method

.method private loadListing()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;

    new-instance v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    iget v2, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListingId:I

    invoke-direct {v1, v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;-><init>(Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;)V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mLoadListingTask:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;

    .line 300
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mLoadListingTask:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 301
    return-void
.end method

.method private onAddToMyProperty()V
    .locals 7

    .prologue
    .line 235
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listing"

    const-string v2, "details"

    const-string v3, "add-to-my-property"

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 236
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 237
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-virtual {v0, v1, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->insertItem(ILandroid/database/sqlite/SQLiteDatabase;)Z

    .line 238
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceLoggedIn(Landroid/content/Context;)Z

    .line 239
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->supportInvalidateOptionsMenu()V

    .line 240
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$string;->added_to_my_property:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListingId:I

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$CacheMyPropertyListingIntentService;->startService(Landroid/content/Context;I)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mIsMyPropertyListing:Z

    .line 243
    return-void
.end method

.method private onEmailListing()V
    .locals 7

    .prologue
    .line 265
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listing"

    const-string v2, "details"

    const-string v3, "email-property"

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 266
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "txt/plain"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->teaser:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v0, "android.intent.extra.TEXT"

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->constructEmailBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    sget v0, Lnz/co/realestate/android/lib/R$string;->send_email:I

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method private onRemoveFromMyProperty()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 250
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listing"

    const-string v2, "details"

    const-string v3, "remove-from-my-property"

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 251
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 252
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbMyPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbMyPropertyListing;->deleteRow(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 253
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->supportInvalidateOptionsMenu()V

    .line 254
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceLoggedIn(Landroid/content/Context;)Z

    .line 255
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$string;->removed_from_my_property:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    iget v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListingId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCachedMyPropertyListing(ILnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V

    .line 257
    iput-boolean v7, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mIsMyPropertyListing:Z

    .line 258
    return-void
.end method

.method private onShowMapView()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->buildPropertyMapActivityIntent(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listingId"    # I

    .prologue
    .line 78
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getStartActivityIntent(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_layout:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->setContentView(I)V

    .line 89
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    .line 90
    .local v0, "currentListingTypeId":I
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 96
    new-instance v3, Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const/4 v1, 0x0

    check-cast v1, Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;

    sget v4, Lnz/co/realestate/android/lib/R$id;->realtabcontent:I

    invoke-direct {v3, p0, v1, v4}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;-><init>(Landroid/support/v7/app/AppCompatActivity;Lnz/co/realestate/android/lib/util/RESSupportTabManager$TabListener;I)V

    iput-object v3, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    .line 97
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v3, "propertyDetails"

    sget v4, Lnz/co/realestate/android/lib/R$string;->details:I

    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v1, v3, v4, v5}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    .line 98
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->showAffordabilityTab(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v3, "propertyAffordability"

    sget v4, Lnz/co/realestate/android/lib/R$string;->affordability:I

    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-virtual {v1, v3, v4, v5}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v3, "index"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 104
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v3, "propertyDetails"

    invoke-virtual {v1, v3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mPropertyDetailsFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .line 105
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    const-string v3, "propertyAffordability"

    invoke-virtual {v1, v3}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mPropertyAffordabilityFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    .line 108
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "listingId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iput v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListingId:I

    .line 111
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mPropertyDetailsFragment:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->setFragmentListener(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$FragmentListener;)V

    .line 113
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 116
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v1

    sget-object v3, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_ID:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListingId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->loadListing()V

    .line 120
    return-void

    :cond_2
    move v1, v2

    .line 108
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 184
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 185
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lnz/co/realestate/android/lib/R$menu;->property_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    sget v1, Lnz/co/realestate/android/lib/R$menu;->property_menu_remove:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    sget v1, Lnz/co/realestate/android/lib/R$menu;->property_menu_add:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 188
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onDestroy()V

    .line 154
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mLoadListingTask:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mLoadListingTask:Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase$LoadListingDetailsAsyncTask;->cancel(Z)Z

    .line 155
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 156
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mRegisteredReceivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 158
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    :try_start_0
    invoke-super {p0, v0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    goto :goto_0

    .line 161
    .end local v0    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_1
    return-void
.end method

.method public onEnquireClick(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 3
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnz/co/realestate/android/lib/ui/RESEnquiryFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 367
    const-string v0, "cachedMyPropertyListing"

    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->add:I

    if-ne v1, v2, :cond_0

    .line 208
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->onAddToMyProperty()V

    .line 226
    :goto_0
    return v0

    .line 210
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->remove:I

    if-ne v1, v2, :cond_1

    .line 211
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->onRemoveFromMyProperty()V

    goto :goto_0

    .line 213
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->email:I

    if-ne v1, v2, :cond_2

    .line 214
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->onEmailListing()V

    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->map:I

    if-ne v1, v2, :cond_3

    .line 217
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->onShowMapView()V

    goto :goto_0

    .line 219
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_4

    .line 223
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->finish()V

    goto :goto_0

    .line 226
    :cond_4
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 192
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    .line 194
    .local v3, "show":Z
    sget v4, Lnz/co/realestate/android/lib/R$id;->remove:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 195
    .local v2, "removeMenuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mIsMyPropertyListing:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    sget v4, Lnz/co/realestate/android/lib/R$id;->add:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 198
    .local v0, "addMenuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mIsMyPropertyListing:Z

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    sget v4, Lnz/co/realestate/android/lib/R$id;->map:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 201
    .local v1, "mapItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->location:Ljava/util/List;

    if-eqz v4, :cond_3

    :goto_2
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 203
    :cond_0
    return v3

    .end local v0    # "addMenuItem":Landroid/view/MenuItem;
    .end local v1    # "mapItem":Landroid/view/MenuItem;
    :cond_1
    move v4, v6

    .line 195
    goto :goto_0

    .restart local v0    # "addMenuItem":Landroid/view/MenuItem;
    :cond_2
    move v4, v6

    .line 198
    goto :goto_1

    .restart local v1    # "mapItem":Landroid/view/MenuItem;
    :cond_3
    move v5, v6

    .line 201
    goto :goto_2
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onResume()V

    .line 144
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->currentMethod()V

    .line 145
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string v0, "index"

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mManager:Lnz/co/realestate/android/lib/util/RESSupportTabManager;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/util/RESSupportTabManager;->getSelectedTabIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 129
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mRegisteredReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract showAffordabilityTab(I)Z
.end method

.method public showListingImages(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-static {v0, v1, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyImagesFragmentActivity;->putBundle(Landroid/content/Intent;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;I)V

    .line 176
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 134
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->mRegisteredReceivers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/sherlock/app/JSASherlockFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    :cond_0
    return-void
.end method
