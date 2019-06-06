.class Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "JSAGetUserLocationJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;Landroid/os/Handler;JLandroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tickIntervalMillis"    # J

    .prologue
    .line 192
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iput-object p5, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public tick()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v1, v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    .line 195
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->val$context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 196
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v1, v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 197
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    iget-object v2, v2, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mBestLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->onTerminate(Landroid/location/Location;)V

    .line 198
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;->this$0:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    invoke-interface {v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 199
    :cond_0
    return-void
.end method
