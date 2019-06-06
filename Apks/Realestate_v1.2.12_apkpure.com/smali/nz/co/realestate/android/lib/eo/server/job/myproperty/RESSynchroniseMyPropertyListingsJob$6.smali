.class Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$6;
.super Ljava/lang/Object;
.source "RESSynchroniseMyPropertyListingsJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListingRatings(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    .prologue
    .line 497
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$6;->this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 497
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    check-cast p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$6;->equals(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)Z

    move-result v0

    return v0
.end method

.method public equals(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)Z
    .locals 2
    .param p1, "r1"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .param p2, "r2"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .prologue
    .line 500
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    iget v1, p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 497
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$6;->hashCode(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)I

    move-result v0

    return v0
.end method

.method public hashCode(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)I
    .locals 1
    .param p1, "rating"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .prologue
    .line 498
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    return v0
.end method
