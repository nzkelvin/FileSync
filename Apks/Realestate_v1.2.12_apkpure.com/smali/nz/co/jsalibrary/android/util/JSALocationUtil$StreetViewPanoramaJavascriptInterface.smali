.class final Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;
.super Ljava/lang/Object;
.source "JSALocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSALocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreetViewPanoramaJavascriptInterface"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLatitude:D

.field private final mListener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

.field private final mLongitude:D


# direct methods
.method public constructor <init>(DDLandroid/os/Handler;Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-wide p1, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mLatitude:D

    .line 425
    iput-wide p3, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mLongitude:D

    .line 426
    iput-object p6, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mListener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

    .line 427
    iput-object p5, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mHandler:Landroid/os/Handler;

    .line 428
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;)D
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    .prologue
    .line 416
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;)D
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    .prologue
    .line 416
    iget-wide v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;)Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    .prologue
    .line 416
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mListener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

    return-object v0
.end method


# virtual methods
.method public setHasPanorama(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;

    invoke-direct {v1, p0, p1}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;-><init>(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    return-void
.end method
