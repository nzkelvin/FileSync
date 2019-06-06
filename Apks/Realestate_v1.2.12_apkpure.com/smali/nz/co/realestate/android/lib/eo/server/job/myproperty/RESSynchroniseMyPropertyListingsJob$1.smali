.class Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;
.super Ljava/lang/Object;
.source "RESSynchroniseMyPropertyListingsJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListings(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)Z
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
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

.field final synthetic val$listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    .prologue
    .line 218
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;->this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;->val$listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 218
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;->matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)Z

    move-result v0

    return v0
.end method

.method public matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)Z
    .locals 2
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 219
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$1;->val$listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
