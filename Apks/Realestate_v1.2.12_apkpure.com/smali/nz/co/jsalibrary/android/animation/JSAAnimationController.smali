.class public interface abstract Lnz/co/jsalibrary/android/animation/JSAAnimationController;
.super Ljava/lang/Object;
.source "JSAAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;
    }
.end annotation


# virtual methods
.method public abstract allowInterruptions()Z
.end method

.method public abstract getAnimations(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onAnimationEnd(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAnimationRepeat(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAnimationStart(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            ">;)V"
        }
    .end annotation
.end method
