.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListedAfterRowType"
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
    .line 553
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 554
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 555
    return-void
.end method


# virtual methods
.method protected getRowTypeItems()Ljava/util/List;
    .locals 4
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
    .line 558
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    const-string v3, "listed_after"

    invoke-static {v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 559
    .local v0, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected onRowValueSelected(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 563
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    const-string v6, "listed_after"

    invoke-static {v3, v5, v6}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 564
    .local v0, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v0, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 565
    .local v1, "valueStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToIntegerMapFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToIntegerMapFunction;-><init>()V

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 566
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$100(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v5, v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListedAfter(Ljava/lang/Integer;)V

    .line 567
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v5, v3}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListedAfterDays(Ljava/lang/Integer;)V

    .line 568
    return-void

    :cond_0
    move-object v3, v4

    .line 566
    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 567
    goto :goto_1
.end method

.method protected update()V
    .locals 8

    .prologue
    .line 571
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    const-string v7, "listed_after"

    invoke-static {v5, v6, v7}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 572
    .local v2, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {v2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 573
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;-><init>()V

    invoke-static {v2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 574
    .local v3, "valueStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToIntegerMapFunction;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToIntegerMapFunction;-><init>()V

    invoke-static {v3, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v4

    .line 575
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getListedAfterDays()Ljava/lang/Integer;

    move-result-object v0

    .line 576
    .local v0, "after":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListedAfterRowType;->setValue(Ljava/lang/String;)V

    .line 577
    return-void

    .line 576
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0
.end method
