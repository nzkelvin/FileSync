.class public final Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$FullListingsResult;
.super Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
.source "RESListingResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FullListingsResult"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe8638e9119fb6deL


# instance fields
.field public listings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;-><init>()V

    return-void
.end method
