.class public Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;
.super Ljava/lang/Object;
.source "JSATargettedAnimation.java"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/View;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->setAnimation(Landroid/view/animation/Animation;)V

    .line 22
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->setTarget(Landroid/view/View;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 34
    iput-object p1, p0, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->mAnimation:Landroid/view/animation/Animation;

    .line 35
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 38
    iput-object p1, p0, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->mTarget:Landroid/view/View;

    .line 39
    return-void
.end method
