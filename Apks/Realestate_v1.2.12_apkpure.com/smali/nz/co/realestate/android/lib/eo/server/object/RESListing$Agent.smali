.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;
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
    name = "Agent"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x75015d1b40099085L


# instance fields
.field public id:I

.field public logo:Ljava/lang/String;

.field public logo_md5:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public office:Ljava/lang/String;

.field public office_id:Ljava/lang/String;

.field public office_phone:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public photo_md5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 476
    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    if-nez v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 477
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    .line 478
    .local v0, "agent":Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;
    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->id:I

    iget v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;->id:I

    return v0
.end method
