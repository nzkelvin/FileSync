.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
.super Ljava/lang/Object;
.source "RESMapListingResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapListingsRequest"
.end annotation


# static fields
.field private static final DURATION_DAY_MILLIS:J = 0x5265c00L

.field public static final MAX_REQUEST_ZOOM_LEVEL:I = 0x19

.field private static final PROPERTY_BEDROOMS_MIN:Ljava/lang/String; = "bedrooms_min"

.field private static final PROPERTY_BOUNDS:Ljava/lang/String; = "bounds"

.field private static final PROPERTY_FLOOR_AREA_MAX:Ljava/lang/String; = "floor_area_max"

.field private static final PROPERTY_FLOOR_AREA_MIN:Ljava/lang/String; = "floor_area_min"

.field private static final PROPERTY_FORMAT:Ljava/lang/String; = "format"

.field private static final PROPERTY_LISTED_AFTER:Ljava/lang/String; = "listed_after"

.field private static final PROPERTY_LISTING_SUBTYPE_ID:Ljava/lang/String; = "listing_subtype_id"

.field private static final PROPERTY_LISTING_TYPE_ID:Ljava/lang/String; = "listing_type_id"

.field private static final PROPERTY_OPEN_HOME:Ljava/lang/String; = "open_home"

.field private static final PROPERTY_PRICE_MAX:Ljava/lang/String; = "price_max"

.field private static final PROPERTY_PRICE_MIN:Ljava/lang/String; = "price_min"

.field private static final PROPERTY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final serialVersionUID:J = 0x1255b8a732c02475L


# instance fields
.field private mListedAfterDays:Ljava/lang/Integer;

.field private mListingSubTypeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    return-void
.end method

.method public static getDefaultProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v0, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "format"

    const-string v2, "basic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;-><init>()V

    .line 70
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    .line 72
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    .line 73
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 61
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 62
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;

    .line 63
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    .line 64
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    .line 65
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBedroomsMin()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v2, "bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "bounds":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getBoundsFromServer(Ljava/lang/String;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloorAreaMax()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getFloorAreaMin()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getListedAfterDays()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getListingSubTypeId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getListingSubTypeIdParams()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 216
    :cond_0
    return-object v1

    .line 214
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "id":Ljava/lang/Integer;
    new-instance v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v4, "listing_subtype_id"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getListingSubTypeIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    return-object v0
.end method

.method public getListingTypeId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getOpenHome()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPriceMax()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getPriceMin()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getZoomLevel()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v2, "zoom"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "zoom":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRefined()Z
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getBedroomsMin()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getPriceMin()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getPriceMax()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getFloorAreaMin()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getFloorAreaMax()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->getListingSubTypeId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBedroomsMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 117
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_min"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 3
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 87
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bounds"

    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getServerBoundsString(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFloorAreaMax(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 147
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_max"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFloorAreaMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 137
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_min"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setListedAfterDays(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "days"    # Ljava/lang/Integer;

    .prologue
    .line 157
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 160
    .local v0, "timeDiff":J
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v3, "listed_after"

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    new-instance v5, Lorg/joda/time/DateTime;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-direct {v5, v6, v7}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_1
    return-void

    .line 158
    .end local v0    # "timeDiff":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 161
    .restart local v0    # "timeDiff":J
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v3, "listed_after"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setListingSubTypeId(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 107
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingSubTypeIds(Ljava/util/List;)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->setListingSubTypeIds(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setListingSubTypeIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    .line 206
    return-void
.end method

.method public setListingTypeId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 97
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOpenHome(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 179
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPriceMax(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 169
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_max"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPriceMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 127
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_min"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setZoomLevel(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 92
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "zoom"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "zoom"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
