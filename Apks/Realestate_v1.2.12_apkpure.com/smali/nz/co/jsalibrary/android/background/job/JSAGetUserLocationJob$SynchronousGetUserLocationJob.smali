.class Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;
.super Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
.source "JSAGetUserLocationJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronousGetUserLocationJob"
.end annotation


# instance fields
.field private mIsRunning:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;

    .prologue
    .line 355
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;

    .prologue
    .line 355
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->mIsRunning:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Void;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->mMaxSearchDuration:J

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->mIsRunning:Z

    .line 361
    invoke-super {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected getLocationServiceHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p1, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 374
    return-object p1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    invoke-super {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onLocationRetrieved(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 366
    return-void
.end method

.method protected declared-synchronized onTerminate(Landroid/location/Location;)V
    .locals 1
    .param p1, "bestLocation"    # Landroid/location/Location;

    .prologue
    .line 369
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;->mIsRunning:Z

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
