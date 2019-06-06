.class public Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
.super Ljava/lang/Object;
.source "RESDistrictResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "District"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x201e74b151cc02dcL


# instance fields
.field public bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public name:Ljava/lang/String;

.field public region_id:I

.field public updated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 41
    if-eqz p1, :cond_0

    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    if-nez v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 42
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;

    .line 43
    .local v0, "district":Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;
    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    iget v3, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBounds()Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$District;->bounds:Ljava/util/List;

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getBoundsFromServer(Ljava/util/List;)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    return-object v0
.end method
