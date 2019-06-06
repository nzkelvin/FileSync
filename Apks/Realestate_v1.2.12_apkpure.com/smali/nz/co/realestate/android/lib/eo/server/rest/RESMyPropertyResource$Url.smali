.class public Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource$Url;
.super Ljava/lang/Object;
.source "RESMyPropertyResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/rest/RESMyPropertyResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Url"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListingsRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "/1/my-property/listings"

    return-object v0
.end method

.method public static getRegisterRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "/1/my-property/register"

    return-object v0
.end method
