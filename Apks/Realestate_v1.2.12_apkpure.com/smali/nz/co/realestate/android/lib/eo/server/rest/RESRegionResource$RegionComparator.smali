.class public Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$RegionComparator;
.super Ljava/lang/Object;
.source "RESRegionResource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    check-cast p2, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$RegionComparator;->compare(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)I

    move-result v0

    return v0
.end method

.method public compare(Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;)I
    .locals 2
    .param p1, "a"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;
    .param p2, "b"    # Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;

    .prologue
    .line 52
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->name:Ljava/lang/String;

    iget-object v1, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESRegionResource$Region;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
