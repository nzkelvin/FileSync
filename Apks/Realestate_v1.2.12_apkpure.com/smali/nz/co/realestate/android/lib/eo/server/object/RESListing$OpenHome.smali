.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
.super Ljava/lang/Object;
.source "RESListing.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/object/RESListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenHome"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6305d206614eb9fcL


# instance fields
.field public id:I

.field public time_end:Ljava/lang/String;

.field public time_start:Ljava/lang/String;

.field public updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 395
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->compareTo(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)I
    .locals 10
    .param p1, "another"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 429
    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v6

    .line 430
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v0

    .line 431
    .local v0, "d1":Ljava/util/Date;
    if-nez v0, :cond_2

    move v6, v7

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v1

    .line 433
    .local v1, "d2":Ljava/util/Date;
    if-nez v1, :cond_3

    move v6, v8

    goto :goto_0

    .line 434
    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 435
    .local v2, "t1":J
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 436
    .local v4, "t2":J
    cmp-long v9, v2, v4

    if-eqz v9, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 419
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    if-nez v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 420
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .line 421
    .local v0, "home":Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    iget v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_end:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->time_start:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->updated_at:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    return v0
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 415
    if-eqz p1, :cond_0

    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->updated_at:Ljava/lang/String;

    .line 416
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
