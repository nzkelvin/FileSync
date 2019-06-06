.class Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "RESUpdateUserLocationJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;JLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;
    .param p2, "x0"    # J

    .prologue
    .line 54
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    iput-object p4, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public tick()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->access$000(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;)Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    .line 57
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;->val$context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 58
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->access$100(Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;)Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 59
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob$1;->this$0:Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/eo/location/job/RESUpdateUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    invoke-interface {v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 60
    return-void
.end method
