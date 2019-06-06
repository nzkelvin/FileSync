.class Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$3;
.super Ljava/lang/Object;
.source "RESSynchroniseMyPropertyListingsJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;->synchroniseListingComments(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$SyncParams;)I
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
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;",
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
    .line 357
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$3;->this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 357
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    check-cast p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$3;->equals(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)Z

    move-result v0

    return v0
.end method

.method public equals(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)Z
    .locals 2
    .param p1, "c1"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .param p2, "c2"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .prologue
    .line 360
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    iget-object v1, p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->internal_id:Ljava/lang/Integer;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    iget-object v1, p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    .line 361
    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 357
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$3;->hashCode(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)I

    move-result v0

    return v0
.end method

.method public hashCode(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)I
    .locals 1
    .param p1, "comment"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .prologue
    .line 358
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    return v0
.end method
