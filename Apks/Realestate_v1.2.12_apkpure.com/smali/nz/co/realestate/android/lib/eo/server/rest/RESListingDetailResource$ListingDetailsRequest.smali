.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;
.super Ljava/lang/Object;
.source "RESListingDetailResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListingDetailsRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1255b8a732c02475L


# instance fields
.field private mListingId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "listingId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->mListingId:I

    .line 31
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
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "format"

    const-string v2, "full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 35
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;

    .line 36
    .local v0, "request":Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;
    iget v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->mListingId:I

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->mListingId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getListingId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESListingDetailResource$ListingDetailsRequest;->mListingId:I

    return v0
.end method
