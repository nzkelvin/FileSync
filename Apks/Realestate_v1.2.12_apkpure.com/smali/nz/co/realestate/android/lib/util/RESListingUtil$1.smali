.class final Lnz/co/realestate/android/lib/util/RESListingUtil$1;
.super Ljava/lang/Object;
.source "RESListingUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/util/RESListingUtil;->mapToBasicListing(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/util/RESListingUtil$1;->map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    .locals 0
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 120
    return-object p1
.end method
