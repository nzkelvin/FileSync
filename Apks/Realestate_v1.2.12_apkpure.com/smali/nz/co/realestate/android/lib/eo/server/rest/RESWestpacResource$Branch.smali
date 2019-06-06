.class public Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;
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
    name = "Branch"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7e0d42035a90cdeL


# instance fields
.field public contact_phone:Ljava/lang/String;

.field public contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;",
            ">;"
        }
    .end annotation
.end field

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

.field public name:Ljava/lang/String;

.field public open_weekends:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Branch;->location:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method
