.class Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;
.super Ljava/lang/Object;
.source "RESSearchMapActivityBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->onSortClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

.field final synthetic val$index:I

.field final synthetic val$listMode:Z

.field final synthetic val$sortAnalytics:Ljava/util/List;

.field final synthetic val$sortValues:Ljava/util/List;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;ILjava/util/List;ZLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    .prologue
    .line 485
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    iput p2, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$index:I

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$sortAnalytics:Ljava/util/List;

    iput-boolean p4, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$listMode:Z

    iput-object p5, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$sortValues:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v4, 0x1

    .line 487
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    iget v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$index:I

    if-ne p2, v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listings"

    const-string v2, "list"

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$sortAnalytics:Ljava/util/List;

    .line 491
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 490
    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 492
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$listMode:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$700(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$sortValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$800(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;Ljava/lang/String;)V

    .line 500
    :goto_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$1100(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$900(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$sortValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setSortOrder(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const-string v1, "listings"

    const-string v2, "list"

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->val$sortAnalytics:Ljava/util/List;

    .line 497
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    invoke-interface/range {v0 .. v5}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 498
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$3;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$300(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->getMapBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$1000(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_1
.end method
