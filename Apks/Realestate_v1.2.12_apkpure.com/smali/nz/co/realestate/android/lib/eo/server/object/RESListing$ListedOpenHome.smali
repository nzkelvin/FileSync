.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;
.super Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
.source "RESListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/object/RESListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListedOpenHome"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e93ff71bf3f79faL


# instance fields
.field public listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Ljava/lang/String;)V
    .locals 1
    .param p1, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p2, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p3, "updateTimestamp"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;-><init>()V

    .line 450
    iget v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    iput v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->id:I

    .line 451
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->time_start:Ljava/lang/String;

    .line 452
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_end:Ljava/lang/String;

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->time_end:Ljava/lang/String;

    .line 453
    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->updated_at:Ljava/lang/String;

    .line 454
    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;->listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 455
    return-void
.end method
