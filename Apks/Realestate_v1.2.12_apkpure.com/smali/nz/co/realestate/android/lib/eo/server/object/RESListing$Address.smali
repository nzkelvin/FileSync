.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;
.super Ljava/lang/Object;
.source "RESListing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/object/RESListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4ef455b8216700c5L


# instance fields
.field public accuracy:I

.field public district_id:I

.field public region_id:I

.field public suburb_id:I

.field public text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
