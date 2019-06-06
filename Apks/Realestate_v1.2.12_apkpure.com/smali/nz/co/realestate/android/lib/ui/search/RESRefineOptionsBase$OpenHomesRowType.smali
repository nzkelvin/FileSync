.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenHomesRowType"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;


# direct methods
.method protected constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "row"    # Landroid/view/View;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 528
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 529
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 530
    return-void
.end method


# virtual methods
.method protected getRowTypeItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$array;->open_homes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onRowValueSelected(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$100(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setOpenHomeNext72Hours(Z)V

    .line 538
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setOpenHome(Z)V

    .line 539
    return-void

    :cond_0
    move v0, v2

    .line 537
    goto :goto_0

    :cond_1
    move v1, v2

    .line 538
    goto :goto_1
.end method

.method protected update()V
    .locals 4

    .prologue
    .line 542
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$array;->open_homes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 543
    .local v0, "homes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getOpenHome()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 544
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OpenHomesRowType;->setValue(Ljava/lang/String;)V

    .line 545
    return-void

    .line 543
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method
