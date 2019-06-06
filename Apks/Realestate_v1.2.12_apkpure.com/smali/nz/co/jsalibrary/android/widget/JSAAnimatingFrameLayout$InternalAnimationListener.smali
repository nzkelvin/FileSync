.class public Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;
.super Ljava/lang/Object;
.source "JSAAnimatingFrameLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalAnimationListener"
.end annotation


# instance fields
.field protected mAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

.field protected mController:Lnz/co/jsalibrary/android/animation/JSAAnimationController;

.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;Lnz/co/jsalibrary/android/animation/JSAAnimationController;Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;
    .param p2, "controller"    # Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    .param p3, "animation"    # Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    .prologue
    .line 329
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mController:Lnz/co/jsalibrary/android/animation/JSAAnimationController;

    .line 331
    iput-object p3, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    .line 332
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 343
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mController:Lnz/co/jsalibrary/android/animation/JSAAnimationController;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lnz/co/jsalibrary/android/animation/JSAAnimationController;->onAnimationEnd(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V

    .line 344
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    iget-object v1, v1, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentLongestRunningAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    if-eq v0, v1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onInternalAnimationEnd()V

    .line 346
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onFrameLayoutAnimationEnd()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 339
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mController:Lnz/co/jsalibrary/android/animation/JSAAnimationController;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lnz/co/jsalibrary/android/animation/JSAAnimationController;->onAnimationRepeat(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V

    .line 340
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 335
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mController:Lnz/co/jsalibrary/android/animation/JSAAnimationController;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->mAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;->this$0:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lnz/co/jsalibrary/android/animation/JSAAnimationController;->onAnimationStart(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V

    .line 336
    return-void
.end method
