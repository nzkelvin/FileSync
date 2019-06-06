.class final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob$JsonResponseBody;
.super Ljava/lang/Object;
.source "RESGetMyPropertyOpenHomesJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JsonResponseBody"
.end annotation


# instance fields
.field public open_homes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
