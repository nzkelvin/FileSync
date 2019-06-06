.class Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;
.super Ljava/lang/Object;
.source "RESUpdateUserLocationJob.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;Landroid/content/Context;Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;-><init>(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x44800000    # 1024.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v0

    .line 95
    .local v0, "currentUserLocation":Landroid/location/Location;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->betterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setCurrentUserLocation(Landroid/location/Location;)V

    .line 96
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x43800000    # 256.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 97
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 98
    .local v1, "locationManager":Landroid/location/LocationManager;
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->access$100(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;)Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 99
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v2

    invoke-interface {v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 100
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->access$000(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;)Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 104
    return-void
.end method
