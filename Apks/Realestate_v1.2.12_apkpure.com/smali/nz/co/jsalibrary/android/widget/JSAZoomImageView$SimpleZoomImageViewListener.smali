.class public Lnz/co/jsalibrary/android/widget/JSAZoomImageView$SimpleZoomImageViewListener;
.super Ljava/lang/Object;
.source "JSAZoomImageView.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleZoomImageViewListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsGestureInProgressChange(Z)V
    .locals 0
    .param p1, "isInProgress"    # Z

    .prologue
    .line 406
    return-void
.end method

.method public onIsGestureInProgressHorizontalChange(Z)V
    .locals 0
    .param p1, "isInProgress"    # Z

    .prologue
    .line 407
    return-void
.end method

.method public onIsGestureInProgressVerticalChange(Z)V
    .locals 0
    .param p1, "isInProgress"    # Z

    .prologue
    .line 408
    return-void
.end method

.method public onSizeChanged(IIII)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method
