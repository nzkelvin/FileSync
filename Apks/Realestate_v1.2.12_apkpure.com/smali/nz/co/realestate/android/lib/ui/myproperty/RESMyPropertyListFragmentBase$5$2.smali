.class Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$2;
.super Ljava/lang/Object;
.source "RESMyPropertyListFragmentBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;


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
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

.field final synthetic val$archiveCutoffDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;Ljava/util/Date;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

    .prologue
    .line 194
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$2;->this$1:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$2;->val$archiveCutoffDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 194
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$2;->filter(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z

    move-result v0

    return v0
.end method

.method public filter(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z
    .locals 3
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isSold()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isWithdrawn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->getListingStatusChangeDate()Ljava/util/Date;

    move-result-object v0

    .line 198
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$2;->val$archiveCutoffDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    goto :goto_0
.end method
