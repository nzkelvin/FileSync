.class Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESLocationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionRowType"
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
    .line 167
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    .line 168
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 169
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

    .line 172
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 173
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedRegions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 176
    :goto_0
    return-object v1

    .line 174
    :cond_0
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedRegions()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionToNameMapFunction;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-direct {v3, v4, v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$1;)V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    .local v1, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onRowValueSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 181
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedRegions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedRegions()Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;>;"
    if-nez p1, :cond_4

    move-object v1, v4

    .line 184
    .local v1, "region":Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    :goto_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$100(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 185
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3, v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$102(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .line 186
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3, v4}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$202(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;)Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .line 187
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3, v4}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$302(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;)Lnz/co/realestate/android/lib/eo/server/rest/RESSuburbResource$Suburb;

    .line 188
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedDistricts()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedDistricts()Ljava/util/Map;

    move-result-object v3

    iget v4, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v3, v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$400(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)V

    .line 189
    :cond_3
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->updateView()V

    goto :goto_0

    .line 183
    .end local v1    # "region":Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    :cond_4
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    move-object v1, v3

    goto :goto_1
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$100(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->access$100(Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;)Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    move-result-object v1

    iget-object v0, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->name:Ljava/lang/String;

    .line 194
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->setValue(Ljava/lang/String;)V

    .line 195
    return-void

    .line 193
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions$RegionRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/search/RESLocationOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
