.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;
.super Ljava/lang/Object;
.source "RESInitialListingResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitialListingsRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e678ae4815f54d9L


# instance fields
.field private properties:Ljava/util/Map;
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    .line 43
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "listingTypeId"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "listingTypeId"    # I
    .param p2, "location"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    if-eqz p2, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "near"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
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
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "format"

    const-string v2, "full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    instance-of v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 37
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;

    .line 38
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getListingTypeId()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
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
    .line 64
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public setLatitudeLongitude(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 68
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "near"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public setListingTypeId(I)V
    .locals 3
    .param p1, "typeId"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESInitialListingResource$InitialListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "listing_type_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
