.class public Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;
.super Ljava/lang/Object;
.source "RESDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$CacheMyPropertyListingIntentService;,
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$CacheRegionsIntentService;,
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$AddRecentListingIntentService;,
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$RemoveOpenHomeIntentService;,
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$AddOpenHomeIntentService;,
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedSuburbsIntentService;,
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$UpdateCachedDistrictsIntentService;,
        Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeAddress(Ljava/lang/String;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 184
    :goto_0
    return-object v1

    .line 183
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 184
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    goto :goto_0
.end method

.method public static decodeAgents(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "agents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 204
    :goto_0
    return-object v1

    .line 203
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 204
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$4;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$4;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public static decodeBounds(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "bounds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    .line 153
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 154
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$1;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public static decodeContacts(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "contacts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    .line 173
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 174
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$3;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$3;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public static decodeImages(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "images"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 214
    :goto_0
    return-object v1

    .line 213
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 214
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$5;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$5;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public static decodeLocation(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 164
    :goto_0
    return-object v1

    .line 163
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 164
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$2;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$2;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public static decodeOpenHomes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "homes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 224
    :goto_0
    return-object v1

    .line 223
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 224
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v1, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$6;

    invoke-direct {v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$6;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public static decodePrice(Ljava/lang/String;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;
    .locals 2
    .param p0, "price"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 194
    :goto_0
    return-object v1

    .line 193
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 194
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    goto :goto_0
.end method

.method public static decodeSoldDetails(Ljava/lang/String;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;
    .locals 2
    .param p0, "details"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    .line 233
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 234
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;

    goto :goto_0
.end method

.method public static encodeObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    .line 143
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 144
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
