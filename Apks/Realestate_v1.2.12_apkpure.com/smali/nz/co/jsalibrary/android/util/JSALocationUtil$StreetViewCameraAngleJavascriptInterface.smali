.class final Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;
.super Ljava/lang/Object;
.source "JSALocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSALocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreetViewCameraAngleJavascriptInterface"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLatitude:D

.field private final mListener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;

.field private final mLongitude:D


# direct methods
.method public constructor <init>(DDLandroid/os/Handler;Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-wide p1, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mLatitude:D

    .line 522
    iput-wide p3, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mLongitude:D

    .line 523
    iput-object p6, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mListener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;

    .line 524
    iput-object p5, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mHandler:Landroid/os/Handler;

    .line 525
    return-void
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;)D
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    .prologue
    .line 513
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;)D
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    .prologue
    .line 513
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;)Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    .prologue
    .line 513
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mListener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;

    return-object v0
.end method


# virtual methods
.method public setStreetViewCamera(DD)V
    .locals 11
    .param p1, "cameraLatitude"    # D
    .param p3, "cameraLongitude"    # D

    .prologue
    .line 536
    iget-wide v4, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mLatitude:D

    iget-wide v6, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mLongitude:D

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->bearing(DDDD)D

    move-result-wide v0

    .line 537
    .local v0, "cameraAngle":D
    const-wide/16 v2, 0x0

    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->boundCircularValue(DDD)D

    move-result-wide v8

    .line 538
    .local v8, "boundCameraAngle":D
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v3, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;

    invoke-direct {v3, p0, v8, v9}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;-><init>(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;D)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method public setStreetViewCameraAngle(D)V
    .locals 3
    .param p1, "cameraAngle"    # D

    .prologue
    .line 528
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$1;-><init>(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method
