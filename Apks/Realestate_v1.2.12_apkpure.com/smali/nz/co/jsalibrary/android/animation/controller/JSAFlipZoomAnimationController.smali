.class public Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;
.super Ljava/lang/Object;
.source "JSAFlipZoomAnimationController.java"

# interfaces
.implements Lnz/co/jsalibrary/android/animation/JSAAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;,
        Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$DetailedBuilder;,
        Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;
    }
.end annotation


# static fields
.field protected static final DEFAULT_DURATION:J = 0x3e8L

.field protected static final DEFAULT_ZOOM_DOWN_TO_LEVEL:F = 0.75f

.field protected static final DEFAULT_ZOOM_FLIP_OVERLAP:D = 0.75

.field protected static mLastInPlaceAnimationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDuration:J

.field protected mFirstView:Landroid/view/View;

.field protected mSecondView:Landroid/view/View;

.field protected mToggleInPlaceDirection:Z

.field protected mZoomDownToLevel:F

.field protected mZoomFlipOverlap:D


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 2
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    .line 37
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    .line 38
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomFlipOverlap:D

    .line 56
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    .line 57
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    .line 58
    return-void
.end method


# virtual methods
.method public allowInterruptions()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected flipRight()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v2

    .line 180
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    .local v0, "firstParent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 182
    .local v1, "secondParent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAnimations(Ljava/util/List;)Ljava/util/List;
    .locals 20
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

    .prologue
    .line 73
    .local p1, "interruptedAnimations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->getInPlaceAnimations(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 117
    :goto_0
    return-object v9

    .line 76
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v9, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->flipRight()Z

    move-result v14

    .line 82
    .local v14, "flipRight":Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v18, 0x4

    div-long v6, v6, v18

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomFlipOverlap:D

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    double-to-long v6, v6

    add-long v10, v4, v6

    .line 83
    .local v10, "effectDuration":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomFlipOverlap:D

    move-wide/from16 v18, v0

    sub-double v6, v6, v18

    mul-double/2addr v4, v6

    double-to-long v12, v4

    .line 86
    .local v12, "flipOffset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 87
    .local v16, "view":Landroid/view/View;
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 88
    .local v15, "set":Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v15, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    new-instance v3, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 92
    .local v2, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    new-instance v2, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    const/4 v4, 0x0

    if-eqz v14, :cond_1

    const/high16 v3, -0x3d4c0000    # -90.0f

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v2, v4, v3, v5, v6}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 96
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 98
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 102
    new-instance v15, Landroid/view/animation/AnimationSet;

    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x1

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 103
    .restart local v15    # "set":Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v15, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 104
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v15, v4, v5}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 105
    new-instance v3, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    if-eqz v14, :cond_2

    const/high16 v3, 0x42b40000    # 90.0f

    :goto_2
    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 108
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 111
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 112
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 113
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 114
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 95
    .end local v2    # "animation":Landroid/view/animation/Animation;
    :cond_1
    const/high16 v3, 0x42b40000    # 90.0f

    goto/16 :goto_1

    .line 107
    :cond_2
    const/high16 v3, -0x3d4c0000    # -90.0f

    goto :goto_2
.end method

.method protected getInPlaceAnimations(Ljava/util/List;)Ljava/util/List;
    .locals 22
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

    .prologue
    .line 121
    .local p1, "interruptedAnimations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v9, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v19

    .line 123
    .local v19, "viewId":I
    sget-object v3, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    if-nez v3, :cond_0

    new-instance v3, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(I)V

    sput-object v3, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    .line 124
    :cond_0
    sget-object v3, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 125
    .local v16, "lastDirectionRight":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mToggleInPlaceDirection:Z

    if-eqz v3, :cond_3

    if-nez v16, :cond_2

    const/4 v14, 0x1

    .line 126
    .local v14, "flipRight":Z
    :goto_1
    sget-object v3, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v20, 0x4

    div-long v6, v6, v20

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomFlipOverlap:D

    move-wide/from16 v20, v0

    mul-double v6, v6, v20

    double-to-long v6, v6

    add-long v10, v4, v6

    .line 130
    .local v10, "effectDuration":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomFlipOverlap:D

    move-wide/from16 v20, v0

    sub-double v6, v6, v20

    mul-double/2addr v4, v6

    double-to-long v12, v4

    .line 133
    .local v12, "flipOffset":J
    new-instance v17, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;-><init>(Z)V

    .line 134
    .local v17, "set":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    move-object/from16 v18, v0

    .line 138
    .local v18, "view":Landroid/view/View;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 139
    .local v2, "animation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 140
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 141
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 142
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    new-instance v2, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    const/4 v4, 0x0

    if-eqz v14, :cond_4

    const/high16 v3, -0x3d4c0000    # -90.0f

    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v2, v4, v3, v5, v6}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 146
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 147
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 148
    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 149
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 152
    new-instance v2, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    if-eqz v14, :cond_5

    const/high16 v3, 0x42b40000    # 90.0f

    :goto_3
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 153
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 154
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 156
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v3, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mZoomDownToLevel:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 160
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 161
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 163
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 164
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    new-instance v15, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;

    invoke-virtual/range {v17 .. v17}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-direct {v15, v3, v2}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 168
    .local v15, "functionalAnimation":Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;
    invoke-virtual {v15, v10, v11}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;->setDuration(J)V

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 172
    new-instance v3, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v9

    .line 124
    .end local v2    # "animation":Landroid/view/animation/Animation;
    .end local v10    # "effectDuration":J
    .end local v12    # "flipOffset":J
    .end local v14    # "flipRight":Z
    .end local v15    # "functionalAnimation":Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$FunctionalAnimation;
    .end local v16    # "lastDirectionRight":Z
    .end local v17    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "view":Landroid/view/View;
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 125
    .restart local v16    # "lastDirectionRight":Z
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 145
    .restart local v10    # "effectDuration":J
    .restart local v12    # "flipOffset":J
    .restart local v14    # "flipRight":Z
    .restart local v17    # "set":Landroid/view/animation/AnimationSet;
    .restart local v18    # "view":Landroid/view/View;
    :cond_4
    const/high16 v3, 0x42b40000    # 90.0f

    goto/16 :goto_2

    .line 152
    :cond_5
    const/high16 v3, -0x3d4c0000    # -90.0f

    goto/16 :goto_3
.end method

.method public onAnimationEnd(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V
    .locals 2
    .param p1, "animation"    # Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;
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

    .prologue
    .line 196
    .local p2, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getTarget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V
    .locals 0
    .param p1, "animation"    # Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;
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

    .prologue
    .line 201
    .local p2, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    return-void
.end method

.method public onAnimationStart(Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;Ljava/util/List;)V
    .locals 2
    .param p1, "animation"    # Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;
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

    .prologue
    .line 190
    .local p2, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getTarget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mSecondView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController;->mFirstView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
