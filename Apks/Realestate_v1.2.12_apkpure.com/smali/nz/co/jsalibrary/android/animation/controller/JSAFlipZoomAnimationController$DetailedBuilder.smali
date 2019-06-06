.class public Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;
.super Ljava/lang/Object;
.source "JSAFlipZoomAnimationController.java"

# interfaces
.implements Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailedBuilder"
.end annotation


# instance fields
.field protected mDuration:J

.field protected mToggleInPlaceDirection:Z

.field protected mZoomDownToLevel:F

.field protected mZoomFlipOverlap:D


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mDuration:J

    .line 219
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomDownToLevel:F

    .line 220
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomFlipOverlap:D

    .line 224
    iput-wide p1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mDuration:J

    .line 225
    return-void
.end method

.method public constructor <init>(JFD)V
    .locals 2
    .param p1, "duration"    # J
    .param p3, "zoomDownToLevel"    # F
    .param p4, "zoomFlipOverlap"    # D

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mDuration:J

    .line 219
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomDownToLevel:F

    .line 220
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomFlipOverlap:D

    .line 228
    iput-wide p1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mDuration:J

    .line 229
    iput p3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomDownToLevel:F

    .line 230
    iput-wide p4, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomFlipOverlap:D

    .line 231
    return-void
.end method

.method public constructor <init>(JFDZ)V
    .locals 2
    .param p1, "duration"    # J
    .param p3, "zoomDownToLevel"    # F
    .param p4, "zoomFlipOverlap"    # D
    .param p6, "toggleInPlaceDirection"    # Z

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mDuration:J

    .line 219
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomDownToLevel:F

    .line 220
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomFlipOverlap:D

    .line 234
    iput-wide p1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mDuration:J

    .line 235
    iput p3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomDownToLevel:F

    .line 236
    iput-wide p4, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomFlipOverlap:D

    .line 237
    iput-boolean p6, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mToggleInPlaceDirection:Z

    .line 238
    return-void
.end method


# virtual methods
.method public varargs build([Landroid/view/View;)Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    .locals 4
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 241
    new-instance v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;

    invoke-direct {v0, p1}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;-><init>([Landroid/view/View;)V

    .line 242
    .local v0, "controller":Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;
    iget-wide v2, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mDuration:J

    iput-wide v2, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    .line 243
    iget v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomDownToLevel:F

    iput v1, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    .line 244
    iget-wide v2, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mZoomFlipOverlap:D

    iput-wide v2, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomFlipOverlap:D

    .line 245
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;->mToggleInPlaceDirection:Z

    iput-boolean v1, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mToggleInPlaceDirection:Z

    .line 246
    return-object v0
.end method
