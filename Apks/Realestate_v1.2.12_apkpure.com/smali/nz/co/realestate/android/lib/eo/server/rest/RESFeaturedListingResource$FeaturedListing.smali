.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource$FeaturedListing;
.super Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
.source "RESFeaturedListingResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESFeaturedListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeaturedListing"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5f379666d70c6396L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;-><init>()V

    return-void
.end method
