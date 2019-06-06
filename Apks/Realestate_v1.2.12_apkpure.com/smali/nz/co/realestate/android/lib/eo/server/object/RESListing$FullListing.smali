.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
.super Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
.source "RESListing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/object/RESListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullListing"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4722a03f59a41e4fL


# instance fields
.field public agents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public expired:Z

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public images_md5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public is_featured:Z

.field public land_area:I

.field public open_homes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            ">;"
        }
    .end annotation
.end field

.field public update_timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataRefreshRequired()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->update_timestamp:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->update_timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
