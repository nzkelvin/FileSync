.class public Lnz/co/jsalibrary/android/util/JSAAnimationUtil;
.super Ljava/lang/Object;
.source "JSAAnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/high16 v0, 0x10a0000

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAAnimationUtil;->fadeIn(Landroid/view/View;Landroid/content/Context;I)V

    .line 21
    return-void
.end method

.method public static fadeIn(Landroid/view/View;Landroid/content/Context;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationId"    # I

    .prologue
    .line 25
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 26
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAAnimationUtil;->fadeIn(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 27
    return-void
.end method

.method public static fadeIn(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 31
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAAnimationUtil$1;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/util/JSAAnimationUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    return-void
.end method

.method public static fadeOut(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const v0, 0x10a0001

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAAnimationUtil;->fadeOut(Landroid/view/View;Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public static fadeOut(Landroid/view/View;Landroid/content/Context;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationId"    # I

    .prologue
    .line 53
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 54
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAAnimationUtil;->fadeOut(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 55
    return-void
.end method

.method public static fadeOut(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 59
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAAnimationUtil$2;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/util/JSAAnimationUtil$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    return-void
.end method
