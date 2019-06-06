.class public Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;
.super Landroid/view/animation/Animation;
.source "JSAFlipZoomAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionalAnimation"
.end annotation


# instance fields
.field protected mAnimation1:Landroid/view/animation/Animation;

.field protected mAnimation2:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a1"    # Landroid/view/animation/Animation;
    .param p2, "a2"    # Landroid/view/animation/Animation;

    .prologue
    .line 258
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 259
    iput-object p1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;->mAnimation1:Landroid/view/animation/Animation;

    .line 260
    iput-object p2, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;->mAnimation2:Landroid/view/animation/Animation;

    .line 261
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 264
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;->mAnimation1:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 266
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;->mAnimation2:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    goto :goto_0
.end method
