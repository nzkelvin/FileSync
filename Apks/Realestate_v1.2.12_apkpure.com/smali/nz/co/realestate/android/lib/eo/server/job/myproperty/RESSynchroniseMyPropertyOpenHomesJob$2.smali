.class Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$2;
.super Ljava/lang/Object;
.source "RESSynchroniseMyPropertyOpenHomesJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;->synchroniseListings(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$SyncParams;)Z
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
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;

.field final synthetic val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;

    .prologue
    .line 162
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$2;->this$0:Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob;

    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$2;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 162
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$2;->matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;)Z

    move-result v0

    return v0
.end method

.method public matches(Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;)Z
    .locals 2
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    .prologue
    .line 163
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->id:I

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESSynchroniseMyPropertyOpenHomesJob$2;->val$home:Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
