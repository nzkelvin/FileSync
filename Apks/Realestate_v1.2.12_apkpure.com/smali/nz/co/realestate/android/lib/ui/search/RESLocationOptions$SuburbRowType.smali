.class Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESLocationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuburbRowType"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;


# direct methods
.method protected constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "row"    # Landroid/view/View;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    .line 241
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 242
    return-void
.end method


# virtual methods
.method protected getRowTypeItems()Ljava/util/List;
    .locals 5
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

    .line 245
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$100(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$200(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    move-result-object v2

    if-nez v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object v1

    .line 246
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 247
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$200(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    move-result-object v3

    iget v3, v3, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$200(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    move-result-object v3

    iget v3, v3, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbToNameMapFunction;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-direct {v3, v4, v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$1;)V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    .local v1, "suburbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onRowValueSelected(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 254
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$100(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$200(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    move-result-object v2

    if-nez v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 256
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$200(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    move-result-object v3

    iget v3, v3, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedSuburbs()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$200(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    move-result-object v3

    iget v3, v3, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 258
    .local v1, "suburbs":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;>;"
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    if-nez p1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-static {v3, v2}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$302(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    goto :goto_1
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$300(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$300(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    move-result-object v1

    iget-object v0, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;->name:Ljava/lang/String;

    .line 263
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->setValue(Ljava/lang/String;)V

    .line 264
    return-void

    .line 262
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$SuburbRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
