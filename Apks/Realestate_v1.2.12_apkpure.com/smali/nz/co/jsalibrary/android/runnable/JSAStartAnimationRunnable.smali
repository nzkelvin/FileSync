.class public Lnz/co/jsalibrary/android/runnable/JSAStartAnimationRunnable;
.super Ljava/lang/Object;
.source "JSAStartAnimationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lnz/co/jsalibrary/android/runnable/JSAStartAnimationRunnable;->mView:Landroid/view/View;

    .line 22
    iput-object p2, p0, Lnz/co/jsalibrary/android/runnable/JSAStartAnimationRunnable;->mAnimation:Landroid/view/animation/Animation;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/jsalibrary/android/runnable/JSAStartAnimationRunnable;->mView:Landroid/view/View;

    iget-object v1, p0, Lnz/co/jsalibrary/android/runnable/JSAStartAnimationRunnable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    return-void
.end method
