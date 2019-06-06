.class public Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource$Url;
.super Ljava/lang/Object;
.source "RESDistrictResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESDistrictResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Url"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "/1/districts/"

    return-object v0
.end method
