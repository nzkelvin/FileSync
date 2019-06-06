.class Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$3;
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


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

    .prologue
    .line 202
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$3;->this$1:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 202
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$5$3;->filter(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z

    move-result v0

    return v0
.end method

.method public filter(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z
    .locals 1
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 203
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
