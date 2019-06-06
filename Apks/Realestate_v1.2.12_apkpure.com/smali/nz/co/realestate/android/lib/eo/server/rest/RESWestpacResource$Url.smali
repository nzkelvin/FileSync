.class public Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Url;
.super Ljava/lang/Object;
.source "RESWestpacResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Url"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationsRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "/1/westpac-locations/"

    return-object v0
.end method

.method public static getRatesRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "/1/westpac-rates/"

    return-object v0
.end method
