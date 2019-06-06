.class Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;
.super Ljava/lang/Object;
.source "RESSynchroniseMyPropertyListingsJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;


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
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

.field final synthetic val$comment:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

.field final synthetic val$comparator:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    .prologue
    .line 369
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;->this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob;

    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;->val$comparator:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;->val$comment:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 369
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;->matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)Z

    move-result v0

    return v0
.end method

.method public matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;)Z
    .locals 2
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .prologue
    .line 370
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;->val$comparator:Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyListingsJob$4;->val$comment:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-interface {v0, p1, v1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
