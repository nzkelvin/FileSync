.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;
.super Ljava/lang/Object;
.source "RESMapListingResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapListingsResult"
.end annotation


# instance fields
.field public clusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;",
            ">;"
        }
    .end annotation
.end field

.field public count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCachedIsRecent()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    if-nez v1, :cond_1

    .line 233
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$MapListingsResult;->clusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    .line 232
    .local v0, "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->updateCachedIsRecent()V

    goto :goto_0
.end method
