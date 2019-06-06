.class Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$1;
.super Ljava/lang/Object;
.source "RESMyPropertyListFragmentBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;->loadInBackground()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

    .prologue
    .line 190
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$1;->this$1:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$1;->map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 191
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    return-object v0
.end method
