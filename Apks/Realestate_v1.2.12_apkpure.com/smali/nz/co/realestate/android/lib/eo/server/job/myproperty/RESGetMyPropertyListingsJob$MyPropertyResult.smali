.class final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob$MyPropertyResult;
.super Ljava/lang/Object;
.source "RESGetMyPropertyListingsJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyPropertyResult"
.end annotation


# instance fields
.field public saved_listings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
