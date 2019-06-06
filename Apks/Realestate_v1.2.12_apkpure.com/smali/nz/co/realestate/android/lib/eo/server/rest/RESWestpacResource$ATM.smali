.class public Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;
.super Ljava/lang/Object;
.source "RESWestpacResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ATM"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1eabc9e8e9b9ab0fL


# instance fields
.field public location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$ATM;->location:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method
