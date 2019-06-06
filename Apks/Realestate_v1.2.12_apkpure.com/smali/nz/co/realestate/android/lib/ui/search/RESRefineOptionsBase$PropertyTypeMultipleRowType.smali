.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyTypeMultipleRowType"
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
    .line 295
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    .line 296
    invoke-direct {p0, p2, p3, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 297
    return-void
.end method


# virtual methods
.method protected deriveDisplayedValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v1

    .line 355
    .local v1, "listingType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    if-nez v1, :cond_0

    .line 365
    :goto_0
    return-object v3

    .line 357
    :cond_0
    iget-object v2, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    .line 358
    .local v2, "subTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getListingSubTypeIds()Ljava/util/List;

    move-result-object v0

    .line 360
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->any:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 361
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lnz/co/realestate/android/lib/R$string;->_n_selected:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 363
    :cond_3
    new-instance v4, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$3;

    invoke-direct {v4, p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$3;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;Ljava/util/List;)V

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 365
    const-string v4, ", "

    new-instance v5, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-direct {v5, v6, v3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$1;)V

    invoke-static {v2, v4, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

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

    .line 320
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v0

    .line 321
    .local v0, "listingType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-object v1

    .line 322
    :cond_0
    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    .line 323
    .local v2, "subTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    new-instance v3, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-direct {v3, v4, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$ListingTypeSubTypeToNameMapFunction;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$1;)V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    .local v1, "propertyTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method protected getSelectedRows()[Z
    .locals 6

    .prologue
    .line 328
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v2

    .line 329
    .local v2, "listingType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    .line 335
    :cond_0
    return-object v3

    .line 330
    :cond_1
    iget-object v4, v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    .line 331
    .local v4, "subTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Z

    .line 332
    .local v3, "selected":[Z
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getListingSubTypeIds()Ljava/util/List;

    move-result-object v1

    .line 333
    .local v1, "listingSubTypeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    iget v5, v5, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onRowClick()V
    .locals 7

    .prologue
    .line 300
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->getRowTypeItems()Ljava/util/List;

    move-result-object v3

    .line 301
    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 302
    .local v4, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->getSelectedRows()[Z

    move-result-object v2

    .line 303
    .local v2, "initial":[Z
    array-length v5, v2

    new-array v1, v5, [Ljava/lang/Boolean;

    .line 304
    .local v1, "changed":[Ljava/lang/Boolean;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$1;

    invoke-direct {v6, p0, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$1;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;[Ljava/lang/Boolean;)V

    invoke-virtual {v5, v4, v2, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 309
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lnz/co/realestate/android/lib/R$string;->ok:I

    new-instance v6, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;

    invoke-direct {v6, p0, v2, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;[Z[Ljava/lang/Boolean;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 317
    return-void
.end method

.method protected onRowValuesSelected([Z)V
    .locals 6
    .param p1, "selected"    # [Z

    .prologue
    .line 339
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentCachedListingType()Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;

    move-result-object v2

    .line 340
    .local v2, "listingType":Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
    if-nez v2, :cond_0

    .line 347
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v3, v2, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;->sub_types:Ljava/util/List;

    .line 342
    .local v3, "subTypes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "listingSubTypeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_2

    aget-boolean v4, p1, v0

    if-eqz v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;

    iget v4, v4, Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_2
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$100(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListingSubTypeIds(Ljava/util/List;)V

    .line 345
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;

    invoke-static {v4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;->access$200(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;)Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingSubTypeIds(Ljava/util/List;)V

    .line 346
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->update()V

    goto :goto_0
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->deriveDisplayedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->setValue(Ljava/lang/String;)V

    .line 351
    return-void
.end method
