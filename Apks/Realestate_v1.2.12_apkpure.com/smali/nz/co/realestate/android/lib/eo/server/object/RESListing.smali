.class public final Lnz/co/realestate/android/lib/eo/server/object/RESListing;
.super Ljava/lang/Object;
.source "RESListing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$SoldDetails;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;,
        Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    }
.end annotation


# static fields
.field public static final LISTING_REFRESH_FREQUENCY:J = 0x5265c00L

.field public static final LISTING_STATUS_ACTIVE:I = 0x1

.field public static final LISTING_STATUS_HIDDEN:I = 0x4

.field public static final LISTING_STATUS_SOLD:I = 0x2

.field public static final LISTING_STATUS_UNKNOWN:I = -0x1

.field public static final LISTING_STATUS_WITHDRAWN:I = 0x3

.field public static final RATING_NEUTRAL:I = 0x2

.field public static final RATING_NOT_RATED:I = 0x0

.field public static final RATING_THUMBS_DOWN:I = 0x3

.field public static final RATING_THUMBS_UP:I = 0x1

.field public static final RECENT_LISTING_DURATION:J = 0x240c8400L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
