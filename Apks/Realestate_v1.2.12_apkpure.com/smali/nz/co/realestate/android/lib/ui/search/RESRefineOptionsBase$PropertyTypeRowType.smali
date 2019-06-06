.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyTypeRowType"
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
    .line 252
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 253
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 254
    return-void
.end method


# virtual methods
.method protected getRowTypeItems()Ljava/util/List;
    .locals 6
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
    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v0

    .line 258
    .local v0, "listingType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-object v1

    .line 259
    :cond_0
    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    .line 260
    .local v2, "subTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    new-instance v3, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-direct {v3, v4, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$1;)V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    .local v1, "propertyTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onRowValueSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v0

    .line 267
    .local v0, "listingType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    .line 269
    .local v1, "subTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$100(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v4

    if-nez p1, :cond_1

    move-object v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListingSubTypeId(Ljava/lang/Integer;)V

    .line 270
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v4

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v4, v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingSubTypeId(Ljava/lang/Integer;)V

    goto :goto_0

    .line 269
    :cond_1
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    iget v2, v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 270
    :cond_2
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    iget v2, v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2
.end method

.method protected update()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 274
    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v8}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getListingSubTypeId()Ljava/lang/Integer;

    move-result-object v0

    .line 275
    .local v0, "id":Ljava/lang/Integer;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v2

    .line 276
    .local v2, "listingType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    if-nez v2, :cond_0

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    .line 278
    .local v5, "subTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    new-instance v8, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToIdMapFunction;

    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-direct {v8, v9, v10}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToIdMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$1;)V

    invoke-static {v5, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 279
    .local v3, "subTypeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;

    iget-object v9, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-direct {v8, v9, v10}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$1;)V

    invoke-static {v5, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v4

    .line 280
    .local v4, "subTypeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 281
    .local v1, "index":I
    :goto_1
    if-eq v1, v7, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 282
    .local v6, "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v6}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "index":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    move v1, v7

    .line 280
    goto :goto_1

    .line 281
    .restart local v1    # "index":I
    :cond_2
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method
