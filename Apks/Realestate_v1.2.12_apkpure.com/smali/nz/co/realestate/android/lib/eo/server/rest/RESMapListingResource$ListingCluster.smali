.class public Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
.super Ljava/lang/Object;
.source "RESMapListingResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingCluster"
.end annotation


# instance fields
.field public bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public listing_count:I

.field public listings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;"
        }
    .end annotation
.end field

.field public location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRecent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deriveIsRecent()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 280
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    invoke-virtual {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isRecent()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 267
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 268
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;

    .line 269
    .local v0, "cluster":Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;
    iget v2, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->listing_count:I

    if-ne v2, v3, :cond_0

    .line 270
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v1

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->bounds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/location/JSAGeoBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->bounds:Ljava/util/List;

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getBoundsFromServer(Ljava/util/List;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->location:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public isRecent()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->mIsRecent:Z

    return v0
.end method

.method public updateCachedIsRecent()V
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->deriveIsRecent()Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESMapListingResource$ListingCluster;->mIsRecent:Z

    .line 275
    return-void
.end method
