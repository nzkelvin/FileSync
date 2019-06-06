.class Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;
.super Ljava/lang/Object;
.source "RESSynchroniseMyPropertyListingsJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;


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
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

.field final synthetic val$comparator:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

.field final synthetic val$rating:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    .prologue
    .line 510
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;->this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;->val$comparator:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;->val$rating:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 510
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;->matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)Z

    move-result v0

    return v0
.end method

.method public matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;)Z
    .locals 2
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .prologue
    .line 511
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;->val$comparator:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$8;->val$rating:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-interface {v0, p1, v1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
