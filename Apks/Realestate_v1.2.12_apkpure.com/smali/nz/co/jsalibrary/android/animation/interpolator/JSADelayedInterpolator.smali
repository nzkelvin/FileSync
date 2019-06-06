.class public Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;
.super Ljava/lang/Object;
.source "JSADelayedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field protected mDelayUntil:F

.field protected mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;F)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "delayUntil"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 29
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;->mDelayUntil:F

    .line 30
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 33
    iget v0, p0, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;->mDelayUntil:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;->mDelayUntil:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;->mDelayUntil:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method
