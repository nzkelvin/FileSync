.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$GetDrivingDistanceIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDrivingDistanceIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;I)V

    .line 290
    return-void
.end method

.method public static startService(Landroid/content/Context;ILcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "destination"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 295
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$GetDrivingDistanceIntentService;

    invoke-static {p1, p2}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->buildBundle(ILcom/google/android/gms/maps/model/LatLng;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$GetDrivingDistanceIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 296
    return-void
.end method

.method public static startService(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 292
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$GetDrivingDistanceIntentService;

    invoke-static {p1, p2}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->buildBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$GetDrivingDistanceIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 293
    return-void
.end method
