.class final Lnz/co/jsalibrary/android/util/JSALocationUtil$1;
.super Landroid/webkit/WebViewClient;
.source "JSALocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSALocationUtil;->hasStreetViewPanorama(Landroid/webkit/WebView;DDLnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$latitude:D

.field final synthetic val$listener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Landroid/os/Handler;Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;DD)V
    .locals 1

    .prologue
    .line 387
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$listener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

    iput-wide p3, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$latitude:D

    iput-wide p5, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$longitude:D

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;

    invoke-direct {v1, p0, p2}, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;-><init>(Lnz/co/jsalibrary/android/util/JSALocationUtil$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method
