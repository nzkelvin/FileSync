.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
.super Ljava/lang/Object;
.source "RESListingResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListingsRequest"
.end annotation


# static fields
.field private static final DURATION_72_HOURS_MILLIS:J = 0xf731400L

.field private static final DURATION_DAY_MILLIS:J = 0x5265c00L

.field private static final PROPERTY_BEDROOMS_MAX:Ljava/lang/String; = "bedrooms_max"

.field private static final PROPERTY_BEDROOMS_MIN:Ljava/lang/String; = "bedrooms_min"

.field private static final PROPERTY_BOUNDS:Ljava/lang/String; = "bounds"

.field private static final PROPERTY_DISTRICT_ID:Ljava/lang/String; = "district_id"

.field private static final PROPERTY_FLOOR_AREA_MAX:Ljava/lang/String; = "floor_area_max"

.field private static final PROPERTY_FLOOR_AREA_MIN:Ljava/lang/String; = "floor_area_min"

.field private static final PROPERTY_FORMAT:Ljava/lang/String; = "format"

.field private static final PROPERTY_ID:Ljava/lang/String; = "id"

.field private static final PROPERTY_INCLUDE_COUNT:Ljava/lang/String; = "include_count"

.field private static final PROPERTY_LISTED_AFTER:Ljava/lang/String; = "listed_after"

.field private static final PROPERTY_LISTING_NUMBER:Ljava/lang/String; = "listing_no"

.field private static final PROPERTY_LISTING_SUBTYPE_ID:Ljava/lang/String; = "listing_subtype_id"

.field private static final PROPERTY_LISTING_TYPE_ID:Ljava/lang/String; = "listing_type_id"

.field private static final PROPERTY_MAX_RESULTS:Ljava/lang/String; = "max_results"

.field private static final PROPERTY_OPEN_HOME_BEFORE:Ljava/lang/String; = "open_home_before"

.field private static final PROPERTY_PRICE_MAX:Ljava/lang/String; = "price_max"

.field private static final PROPERTY_PRICE_MIN:Ljava/lang/String; = "price_min"

.field private static final PROPERTY_REGION_ID:Ljava/lang/String; = "region_id"

.field private static final PROPERTY_SORT_ORDER:Ljava/lang/String; = "sort_order"

.field private static final PROPERTY_SUBURB_ID:Ljava/lang/String; = "suburb_id"

.field private static final serialVersionUID:J = 0x1255b8a732c02475L


# instance fields
.field private mListedAfterDays:Ljava/lang/Integer;

.field private mListingIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListingNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    .line 73
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "sort_order"

    const-string v2, "-listing_date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
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
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "include_count"

    const-string v2, "TRUE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "max_results"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "format"

    const-string v2, "basic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
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
    .line 39
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->clone()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;-><init>()V

    .line 88
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingIds:Ljava/util/List;

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingIds:Ljava/util/List;

    .line 90
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingNumbers:Ljava/util/List;

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingNumbers:Ljava/util/List;

    .line 91
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    iput-object v1, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    .line 93
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;

    .line 79
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingIds:Ljava/util/List;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingIds:Ljava/util/List;

    .line 80
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingNumbers:Ljava/util/List;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingNumbers:Ljava/util/List;

    .line 81
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    .line 82
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    .line 83
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getListedAfter()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getListingIdParams()Ljava/util/List;
    .locals 5
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
    .line 219
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingIds:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 222
    :cond_0
    return-object v1

    .line 220
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "listingId":Ljava/lang/String;
    new-instance v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v4, "id"

    invoke-direct {v3, v4, v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getListingNumberParams()Ljava/util/List;
    .locals 5
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
    .line 197
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingNumbers:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 200
    :cond_0
    return-object v1

    .line 198
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "listingNumber":Ljava/lang/String;
    new-instance v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v4, "listing_no"

    invoke-direct {v3, v4, v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .line 208
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 211
    :cond_0
    return-object v1

    .line 209
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "tuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingSubTypeIds:Ljava/util/List;

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

.method public getProperties()Ljava/util/Map;
    .locals 8
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
    .line 105
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home_before"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    .line 108
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home_before"

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    new-instance v3, Lorg/joda/time/DateTime;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf731400

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    goto :goto_0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "sort_order"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isResponseFormatFull()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "full"

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBedroomsMax(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_max"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBedroomsMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_min"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bedrooms_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBounds(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V
    .locals 3
    .param p1, "bounds"    # Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    .prologue
    .line 121
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "bounds"

    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getServerBoundsString(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDistrictId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "district_id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "district_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFloorAreaMax(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_max"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFloorAreaMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_min"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "floor_area_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setListedAfter(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "days"    # Ljava/lang/Integer;

    .prologue
    .line 181
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListedAfterDays:Ljava/lang/Integer;

    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 184
    .local v0, "timeDiff":J
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

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

    .line 186
    :goto_1
    return-void

    .line 182
    .end local v0    # "timeDiff":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 185
    .restart local v0    # "timeDiff":J
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v3, "listed_after"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setListingIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingIds:Ljava/util/List;

    .line 216
    return-void
.end method

.method public setListingNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingNumbers:Ljava/util/List;

    .line 194
    return-void
.end method

.method public setListingSubTypeId(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 146
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListingSubTypeIds(Ljava/util/List;)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->setListingSubTypeIds(Ljava/util/List;)V

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
    .line 204
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mListingSubTypeIds:Ljava/util/List;

    .line 205
    return-void
.end method

.method public setListingTypeId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOpenHomeNext72Hours(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 226
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home_before"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "open_home_before"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPriceMax(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_max"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_max"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPriceMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_min"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "price_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setRegionId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "region_id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "region_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setResponseFormatFull()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "format"

    const-string v2, "full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 112
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "sort_order"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "sort_order"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSuburbId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "suburb_id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsRequest;->mProperties:Ljava/util/Map;

    const-string v1, "suburb_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
