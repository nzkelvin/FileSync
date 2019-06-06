.class public Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource$ListingsResult;
.super Ljava/lang/Object;
.source "RESListingResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESListingResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingsResult"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x68e6dfc59d961406L


# instance fields
.field public count:I

.field public listings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;"
        }
    .end annotation
.end field

.field public more:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
