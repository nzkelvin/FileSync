.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
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
    name = "MyPropertyComment"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c35f314083dcb8aL


# instance fields
.field public category:I

.field public comment:Ljava/lang/String;

.field public id:Ljava/lang/Integer;

.field public internal_id:Ljava/lang/Integer;

.field public updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 193
    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 194
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .line 195
    .local v0, "comment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->updated_at:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
