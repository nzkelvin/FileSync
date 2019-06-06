.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;
.super Ljava/lang/Object;
.source "RESFeaturedListingResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeaturedListingsRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66d68ad3ec9cab3fL


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
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;->properties:Ljava/util/Map;

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
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v0, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "format"

    const-string v2, "full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    instance-of v1, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 32
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;

    .line 33
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;->properties:Ljava/util/Map;

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;->properties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    .line 43
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public setLatitudeLongitude(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListingsRequest;->properties:Ljava/util/Map;

    const-string v1, "near"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
