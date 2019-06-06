.class public Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$SimpleOnTranslateGestureListener;
.super Ljava/lang/Object;
.source "JSAScrubGestureDetector.java"

# interfaces
.implements Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnTranslateGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrub(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;I)V
    .locals 0
    .param p1, "detector"    # Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;
    .param p2, "currentLap"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onScrubBegin(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;I)V
    .locals 0
    .param p1, "detector"    # Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;
    .param p2, "currentLap"    # I

    .prologue
    .line 324
    return-void
.end method

.method public onScrubDistanceChanged(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;IDD)V
    .locals 0
    .param p1, "detector"    # Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;
    .param p2, "currentLap"    # I
    .param p3, "currentLapDistance"    # D
    .param p5, "totalLapDistance"    # D

    .prologue
    .line 326
    return-void
.end method

.method public onScrubEnd(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;I)V
    .locals 0
    .param p1, "detector"    # Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;
    .param p2, "currentLap"    # I

    .prologue
    .line 325
    return-void
.end method
