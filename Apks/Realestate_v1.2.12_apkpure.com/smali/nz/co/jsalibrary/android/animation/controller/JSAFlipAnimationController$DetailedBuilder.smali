.class public final Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;
.super Ljava/lang/Object;
.source "JSAFlipAnimationController.java"

# interfaces
.implements Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetailedBuilder"
.end annotation


# instance fields
.field protected mDuration:J

.field protected mToggleInPlaceDirection:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;->mDuration:J

    .line 173
    iput-wide p1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;->mDuration:J

    .line 174
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "toggleInPlaceDirection"    # Z

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;->mDuration:J

    .line 177
    iput-wide p1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;->mDuration:J

    .line 178
    iput-boolean p3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;->mToggleInPlaceDirection:Z

    .line 179
    return-void
.end method


# virtual methods
.method public varargs build([Landroid/view/View;)Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    .locals 4
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 182
    new-instance v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;

    invoke-direct {v0, p1}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;-><init>([Landroid/view/View;)V

    .line 183
    .local v0, "controller":Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;
    iget-wide v2, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;->mDuration:J

    iput-wide v2, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mDuration:J

    .line 184
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;->mToggleInPlaceDirection:Z

    iput-boolean v1, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mToggleInPlaceDirection:Z

    .line 185
    return-object v0
.end method
