.class public Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$Builder;
.super Ljava/lang/Object;
.source "JSAFlipAnimationController.java"

# interfaces
.implements Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs build([Landroid/view/View;)Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    .locals 1
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 160
    new-instance v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;

    invoke-direct {v0, p1}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;-><init>([Landroid/view/View;)V

    return-object v0
.end method
