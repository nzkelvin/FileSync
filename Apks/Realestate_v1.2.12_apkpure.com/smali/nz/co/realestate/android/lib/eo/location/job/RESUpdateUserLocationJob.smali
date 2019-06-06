.class public final Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;
.source "RESUpdateUserLocationJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXPIRATION_DURATION:J = 0x5265c00L

.field private static final MAX_ACCEPTED_ACCURACY:J = 0x100L

.field private static final MAX_REPORTED_ACCURACY:J = 0x400L

.field private static final MAX_SEARCH_DURATION:J = 0x1d4c0L

.field private static final REFRESH_DURATION:J = 0x493e0L


# instance fields
.field private mListener:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

.field private mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;)Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    .prologue
    .line 13
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;)Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    .prologue
    .line 13
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mListener:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 34
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 37
    .local v8, "currentTime":J
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 38
    .local v10, "lastNetworkLocation":Landroid/location/Location;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 39
    .local v7, "lastGPSLocation":Landroid/location/Location;
    invoke-static {v10, v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->betterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v6

    .line 42
    .local v6, "bestLocation":Landroid/location/Location;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x43800000    # 256.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long v2, v8, v2

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 43
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCurrentUserLocation(Landroid/location/Location;)V

    .line 44
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    invoke-interface {v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 45
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 49
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x44800000    # 1024.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long v2, v8, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 50
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1, v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCurrentUserLocation(Landroid/location/Location;)V

    .line 54
    :cond_1
    new-instance v1, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;

    const-wide/32 v2, 0x1d4c0

    invoke-direct {v1, p0, v2, v3, p1}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;-><init>(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;JLandroid/content/Context;)V

    iput-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .line 64
    new-instance v1, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;-><init>(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;)V

    iput-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mListener:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    .line 65
    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mListener:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 66
    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mListener:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 67
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->start()V

    .line 68
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 76
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 77
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mListener:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->mListener:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 78
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
