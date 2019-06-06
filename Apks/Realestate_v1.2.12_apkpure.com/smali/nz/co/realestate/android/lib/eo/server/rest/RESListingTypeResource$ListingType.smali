.class public Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingType;
.super Ljava/lang/Object;
.source "RESListingTypeResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingType"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72cf297953659efdL


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public sort_key:I

.field public sub_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESListingTypeResource$ListingTypeSubType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
