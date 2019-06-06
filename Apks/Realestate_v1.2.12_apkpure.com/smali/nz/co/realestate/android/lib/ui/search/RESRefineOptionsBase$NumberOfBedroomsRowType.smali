.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberOfBedroomsRowType"
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
    .line 374
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 375
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 376
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
    .line 379
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$array;->number_of_bedrooms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onRowValueSelected(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$100(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v2

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setBedroomsMin(Ljava/lang/Integer;)V

    .line 384
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v0

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setBedroomsMin(Ljava/lang/Integer;)V

    .line 385
    return-void

    .line 383
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method protected update()V
    .locals 5

    .prologue
    .line 388
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getBedroomsMin()Ljava/lang/Integer;

    move-result-object v0

    .line 389
    .local v0, "bedrooms":Ljava/lang/Integer;
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$array;->number_of_bedrooms:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 390
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 391
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->setValue(Ljava/lang/String;)V

    .line 392
    return-void

    .line 390
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$NumberOfBedroomsRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
