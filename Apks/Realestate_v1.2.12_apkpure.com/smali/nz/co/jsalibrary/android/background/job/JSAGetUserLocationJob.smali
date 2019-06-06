.class public abstract Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;
.source "JSAGetUserLocationJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousGetUserLocationJob;,
        Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousJob;,
        Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;,
        Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EXPIRATION_DURATION:J = 0x5265c00L

.field public static final LOCATION_CONFIG:Ljava/lang/String; = "location_config"

.field protected static final MAX_ACCEPTED_ACCURACY:J = 0x100L

.field protected static final MAX_REPORTED_ACCURACY:J = 0x400L

.field protected static final MAX_SEARCH_DURATION:J = 0x1d4c0L

.field protected static final REFRESH_DURATION:J = 0x493e0L


# instance fields
.field protected mBestLocation:Landroid/location/Location;

.field protected mExpirationDuration:J

.field protected mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

.field protected mMaxAcceptedAccuracy:J

.field protected mMaxReportedAccuracy:J

.field protected mMaxSearchDuration:J

.field protected mRefreshDuration:J

.field protected mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleAsynchronousBackgroundJob;-><init>()V

    .line 72
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxSearchDuration:J

    .line 75
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mRefreshDuration:J

    .line 78
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mExpirationDuration:J

    .line 81
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxReportedAccuracy:J

    .line 84
    const-wide/16 v0, 0x100

    iput-wide v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxAcceptedAccuracy:J

    return-void
.end method

.method public static buildBundle(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;)Landroid/os/Bundle;
    .locals 2
    .param p0, "config"    # Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "location_config"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 124
    return-object v0
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
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Void;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    const-string v3, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/location/LocationManager;

    .line 133
    .local v19, "locationManager":Landroid/location/LocationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 136
    .local v14, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/16 v17, 0x1

    .line 137
    .local v17, "hasFinePermission":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/16 v16, 0x1

    .line 140
    .local v16, "hasCoarsePermission":Z
    :goto_1
    if-eqz p2, :cond_0

    const-string v3, "location_config"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "location_config"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "location_config"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    .line 142
    .local v13, "config":Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
    sget-object v3, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$2;->$SwitchMap$nz$co$jsalibrary$android$background$job$JSAGetUserLocationJob$LocationConfig:[I

    invoke-virtual {v13}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 156
    .end local v13    # "config":Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
    :cond_0
    :goto_2
    if-nez v17, :cond_3

    if-nez v16, :cond_3

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No location permissions"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    .end local v16    # "hasCoarsePermission":Z
    .end local v17    # "hasFinePermission":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 137
    .restart local v17    # "hasFinePermission":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 144
    .restart local v13    # "config":Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
    .restart local v16    # "hasCoarsePermission":Z
    :pswitch_0
    const/16 v17, 0x0

    .line 145
    goto :goto_2

    .line 147
    :pswitch_1
    const/16 v16, 0x0

    .line 148
    goto :goto_2

    .line 159
    .end local v13    # "config":Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
    :cond_3
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v18, "lastLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    if-eqz v17, :cond_4

    const-string v3, "gps"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_4
    if-eqz v16, :cond_5

    const-string v3, "network"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_5
    const/4 v2, 0x0

    .line 165
    .local v2, "bestLocation":Landroid/location/Location;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 175
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxAcceptedAccuracy:J

    long-to-float v4, v6

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long v6, v14, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mRefreshDuration:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->onLocationRetrieved(Landroid/location/Location;)V

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->onTerminate(Landroid/location/Location;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v3

    invoke-interface {v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 179
    :cond_6
    const/4 v3, 0x0

    .line 207
    :goto_4
    return-object v3

    .line 167
    :pswitch_2
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "bestLocation":Landroid/location/Location;
    check-cast v2, Landroid/location/Location;

    .line 168
    .restart local v2    # "bestLocation":Landroid/location/Location;
    goto :goto_3

    .line 170
    :pswitch_3
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->betterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    goto :goto_3

    .line 183
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxReportedAccuracy:J

    long-to-float v4, v6

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long v6, v14, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mExpirationDuration:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_8

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->onLocationRetrieved(Landroid/location/Location;)V

    .line 185
    move-object/from16 v0, p0

    iput-object v2, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mBestLocation:Landroid/location/Location;

    .line 189
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getLocationServiceHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v5

    .line 192
    .local v5, "handler":Landroid/os/Handler;
    new-instance v3, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mMaxSearchDuration:J

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;-><init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;Landroid/os/Handler;JLandroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .line 203
    new-instance v3, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v4}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;-><init>(Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;Landroid/content/Context;Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    .line 204
    if-eqz v16, :cond_9

    const-string v7, "network"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    move-object/from16 v6, v19

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 205
    :cond_9
    if-eqz v17, :cond_a

    const-string v7, "gps"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    move-object/from16 v6, v19

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 206
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->start()V

    .line 207
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getBestLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mBestLocation:Landroid/location/Location;

    return-object v0
.end method

.method protected getLocationServiceHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Void;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 280
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 281
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mListener:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 282
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->mBestLocation:Landroid/location/Location;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->onTerminate(Landroid/location/Location;)V

    .line 283
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v1

    invoke-interface {v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    .line 284
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract onLocationRetrieved(Landroid/location/Location;)V
.end method

.method protected abstract onTerminate(Landroid/location/Location;)V
.end method
