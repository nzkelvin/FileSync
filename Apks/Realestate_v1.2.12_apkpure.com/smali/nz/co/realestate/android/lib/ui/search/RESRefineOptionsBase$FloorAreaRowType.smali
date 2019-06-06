.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloorAreaRowType"
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
    .line 400
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 401
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 402
    return-void
.end method


# virtual methods
.method protected onRowClick()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 405
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$400(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

    move-result-object v12

    if-nez v12, :cond_0

    .line 425
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v0

    .line 408
    .local v0, "currentListingTypeId":I
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getFloorAreaResourceNameFrom(I)Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "fromResource":Ljava/lang/String;
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    invoke-static {v12, v13, v6}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 410
    .local v4, "fromAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v12}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v4, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 412
    .local v3, "fromAreaValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getFloorAreaResourceNameTo(I)Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, "toResource":Ljava/lang/String;
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    invoke-static {v12, v13, v10}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 414
    .local v8, "toAreas":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v12}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v8, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v7

    .line 416
    .local v7, "toAreaValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getFloorAreaMin()Ljava/lang/Integer;

    move-result-object v2

    .line 417
    .local v2, "floorAreaMin":Ljava/lang/Integer;
    if-nez v2, :cond_2

    move v5, v11

    .line 419
    .local v5, "fromIndex":I
    :goto_1
    iget-object v12, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v12}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v12

    invoke-virtual {v12}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getFloorAreaMax()Ljava/lang/Integer;

    move-result-object v1

    .line 420
    .local v1, "floorAreaMax":Ljava/lang/Integer;
    if-nez v1, :cond_3

    move v9, v11

    .line 422
    .local v9, "toIndex":I
    :goto_2
    if-nez v9, :cond_1

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .line 424
    :cond_1
    iget-object v11, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v11}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$400(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;

    move-result-object v11

    invoke-interface {v11, v4, v8, v5, v9}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$OptionsListener;->onUpdateFloorArea(Ljava/util/List;Ljava/util/List;II)V

    goto :goto_0

    .line 417
    .end local v1    # "floorAreaMax":Ljava/lang/Integer;
    .end local v5    # "fromIndex":I
    .end local v9    # "toIndex":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    .line 420
    .restart local v1    # "floorAreaMax":Ljava/lang/Integer;
    .restart local v5    # "fromIndex":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    goto :goto_2
.end method

.method protected update()V
    .locals 18

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "anyString":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentListingTypeId()I

    move-result v8

    .line 432
    .local v8, "currentListingTypeId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getFloorAreaMin()Ljava/lang/Integer;

    move-result-object v9

    .line 433
    .local v9, "floorAreaFrom":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15, v8}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getFloorAreaResourceNameFrom(I)Ljava/lang/String;

    move-result-object v10

    .line 434
    .local v10, "fromResource":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    move/from16 v0, v16

    invoke-static {v15, v0, v10}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 435
    .local v6, "areaTuplesFrom":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {v6, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 436
    .local v2, "areaFromNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v6, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 437
    .local v3, "areaFromValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v11, v15

    .line 440
    .local v11, "fromValue":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getFloorAreaMax()Ljava/lang/Integer;

    move-result-object v12

    .line 441
    .local v12, "priceTo":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15, v8}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getFloorAreaResourceNameTo(I)Ljava/lang/String;

    move-result-object v13

    .line 442
    .local v13, "toResource":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    move/from16 v0, v16

    invoke-static {v15, v0, v13}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 443
    .local v7, "areaTuplesTo":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {v7, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v4

    .line 444
    .local v4, "areaToNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v15}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v7, v15}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v5

    .line 445
    .local v5, "areaToValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v14, v15

    .line 448
    .local v14, "toValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->setValue(Ljava/lang/String;)V

    .line 450
    :goto_2
    return-void

    .end local v4    # "areaToNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "areaToValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "areaTuplesTo":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "fromValue":Ljava/lang/String;
    .end local v12    # "priceTo":Ljava/lang/Integer;
    .end local v13    # "toResource":Ljava/lang/String;
    .end local v14    # "toValue":Ljava/lang/String;
    :cond_0
    move-object v11, v1

    .line 437
    goto :goto_0

    .restart local v4    # "areaToNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "areaToValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "areaTuplesTo":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "fromValue":Ljava/lang/String;
    .restart local v12    # "priceTo":Ljava/lang/Integer;
    .restart local v13    # "toResource":Ljava/lang/String;
    :cond_1
    move-object v14, v1

    .line 445
    goto :goto_1

    .line 449
    .restart local v14    # "toValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

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

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$FloorAreaRowType;->setValue(Ljava/lang/String;)V

    goto :goto_2
.end method
