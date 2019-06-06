.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriceRowType"
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
    .line 466
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 467
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 468
    return-void
.end method


# virtual methods
.method protected onRowClick()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 471
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$400(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

    move-result-object v12

    if-nez v12, :cond_0

    .line 491
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    .line 474
    .local v0, "currentListingTypeId":I
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getPriceResourceNameFrom(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "fromResource":Ljava/lang/String;
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lnz/co/realestate/android/lib/R$xml;->internal_arrays:I

    invoke-static {v12, v13, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 476
    .local v3, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v12}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v3, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 478
    .local v2, "fromPriceValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getPriceResourceNameTo(I)Ljava/lang/String;

    move-result-object v10

    .line 479
    .local v10, "toResource":Ljava/lang/String;
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lnz/co/realestate/android/lib/R$xml;->internal_arrays:I

    invoke-static {v12, v13, v10}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 480
    .local v9, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v12}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v9, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v8

    .line 482
    .local v8, "toPriceValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getPriceMin()Ljava/lang/Integer;

    move-result-object v6

    .line 483
    .local v6, "priceMin":Ljava/lang/Integer;
    if-nez v6, :cond_2

    move v1, v11

    .line 485
    .local v1, "fromIndex":I
    :goto_1
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getPriceMax()Ljava/lang/Integer;

    move-result-object v5

    .line 486
    .local v5, "priceMax":Ljava/lang/Integer;
    if-nez v5, :cond_3

    move v7, v11

    .line 488
    .local v7, "toIndex":I
    :goto_2
    if-nez v7, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .line 490
    :cond_1
    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v11}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$400(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

    move-result-object v11

    invoke-interface {v11, v3, v9, v1, v7}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;->onUpdatePrice(Ljava/util/List;Ljava/util/List;II)V

    goto :goto_0

    .line 483
    .end local v1    # "fromIndex":I
    .end local v5    # "priceMax":Ljava/lang/Integer;
    .end local v7    # "toIndex":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    .line 486
    .restart local v1    # "fromIndex":I
    .restart local v5    # "priceMax":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_2
.end method

.method protected update()V
    .locals 18

    .prologue
    .line 494
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "anyString":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v2

    .line 498
    .local v2, "currentListingTypeId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getPriceMin()Ljava/lang/Integer;

    move-result-object v5

    .line 499
    .local v5, "priceFrom":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15, v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getPriceResourceNameFrom(I)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "fromResource":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lnz/co/realestate/android/lib/R$xml;->internal_arrays:I

    move/from16 v0, v16

    invoke-static {v15, v0, v3}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 501
    .local v11, "priceTuplesFrom":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {v11, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v6

    .line 502
    .local v6, "priceFromNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v11, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v7

    .line 503
    .local v7, "priceFromValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v4, v15

    .line 506
    .local v4, "fromValue":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getPriceMax()Ljava/lang/Integer;

    move-result-object v8

    .line 507
    .local v8, "priceTo":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15, v2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getPriceResourceNameTo(I)Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, "toResource":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lnz/co/realestate/android/lib/R$xml;->internal_arrays:I

    move/from16 v0, v16

    invoke-static {v15, v0, v13}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 509
    .local v12, "priceTuplesTo":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {v12, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v9

    .line 510
    .local v9, "priceToNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v12, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v10

    .line 511
    .local v10, "priceToValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v14, v15

    .line 514
    .local v14, "toValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->setValue(Ljava/lang/String;)V

    .line 516
    :goto_2
    return-void

    .end local v4    # "fromValue":Ljava/lang/String;
    .end local v8    # "priceTo":Ljava/lang/Integer;
    .end local v9    # "priceToNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "priceToValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "priceTuplesTo":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "toResource":Ljava/lang/String;
    .end local v14    # "toValue":Ljava/lang/String;
    :cond_0
    move-object v4, v1

    .line 503
    goto :goto_0

    .restart local v4    # "fromValue":Ljava/lang/String;
    .restart local v8    # "priceTo":Ljava/lang/Integer;
    .restart local v9    # "priceToNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "priceToValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "priceTuplesTo":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v13    # "toResource":Ljava/lang/String;
    :cond_1
    move-object v14, v1

    .line 511
    goto :goto_1

    .line 515
    .restart local v14    # "toValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lnz/co/realestate/android/lib/R$string;->_range_from_n_to_m:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PriceRowType;->setValue(Ljava/lang/String;)V

    goto :goto_2
.end method
