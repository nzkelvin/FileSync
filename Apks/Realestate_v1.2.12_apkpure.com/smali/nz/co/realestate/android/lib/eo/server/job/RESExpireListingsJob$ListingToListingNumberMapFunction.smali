.class public Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob$ListingToListingNumberMapFunction;
.super Ljava/lang/Object;
.source "RESExpireListingsJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingToListingNumberMapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/RESExpireListingsJob$ListingToListingNumberMapFunction;->map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 98
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->listing_no:Ljava/lang/String;

    return-object v0
.end method
