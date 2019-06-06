.class final Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;
.super Ljava/lang/Object;
.source "RESPropertyDetailsOpenHomesArrayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->onProperty(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

.field final synthetic val$mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field final synthetic val$openHomeItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$openHomeItem:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    if-nez p2, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->addOpenHomeToCalendar(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V

    .line 89
    :goto_0
    if-eqz p2, :cond_0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_DETAILS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$openHomeItem:Ljava/lang/String;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$context:Landroid/content/Context;

    sget v2, Lnz/co/realestate/android/lib/R$string;->add_to_open_homes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->addOpenHomeToOpenHomes(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->removeOpenHomeFromOpenHomes(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/content/Context;)V

    goto :goto_0
.end method
