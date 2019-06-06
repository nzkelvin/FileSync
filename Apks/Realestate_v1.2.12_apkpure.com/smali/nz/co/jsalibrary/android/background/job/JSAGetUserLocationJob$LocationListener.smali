.class public Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;
.super Ljava/lang/Object;
.source "JSAGetUserLocationJob.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LocationListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->mContext:Landroid/content/Context;

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;Landroid/content/Context;Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;-><init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-wide v2, v2, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxReportedAccuracy:J

    long-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    invoke-virtual {v1, p1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->onLocationRetrieved(Landroid/location/Location;)V

    .line 301
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v2, v2, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mBestLocation:Landroid/location/Location;

    invoke-static {v2, p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->betterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mBestLocation:Landroid/location/Location;

    .line 302
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-wide v2, v2, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxAcceptedAccuracy:J

    long-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 303
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 304
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v1, v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 305
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v2, v2, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mBestLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->onTerminate(Landroid/location/Location;)V

    .line 306
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    invoke-interface {v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 307
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v1, v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 310
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 314
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 312
    return-void
.end method
