.class public Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;
.super Ljava/lang/Object;
.source "JSAFlipAnimationController.java"

# interfaces
.implements Lnz/co/jsalibrary/android/animation/JSAAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$DetailedBuilder;,
        Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$Builder;
    }
.end annotation


# static fields
.field protected static final DEFAULT_DURATION:J = 0x3e8L

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


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 2
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mDuration:J

    .line 53
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    .line 54
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    .line 55
    return-void
.end method


# virtual methods
.method public allowInterruptions()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected flipRight()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 132
    .local v0, "firstParent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 133
    .local v1, "secondParent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAnimations(Ljava/util/List;)Ljava/util/List;
    .locals 13
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
    .local p1, "interruptedAnimations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 70
    iget-object v4, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    iget-object v7, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    if-ne v4, v7, :cond_0

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->getInPlaceAnimations(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 73
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->flipRight()Z

    move-result v2

    .line 79
    .local v2, "flipRight":Z
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    .line 80
    .local v3, "view":Landroid/view/View;
    new-instance v0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    if-eqz v2, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {v0, v12, v4, v7, v8}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 81
    .local v0, "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    iget-wide v8, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mDuration:J

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setDuration(J)V

    .line 82
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    new-instance v4, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    invoke-direct {v4, v0, v3}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v3, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    .line 87
    new-instance v0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    .end local v0    # "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v0, v6, v12, v4, v5}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 88
    .restart local v0    # "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    iget-wide v4, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mDuration:J

    invoke-virtual {v0, v4, v5}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setDuration(J)V

    .line 89
    new-instance v4, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/animation/interpolator/JSADelayedInterpolator;-><init>(Landroid/view/animation/Interpolator;F)V

    invoke-virtual {v0, v4}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    new-instance v4, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    invoke-direct {v4, v0, v3}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    :cond_1
    move v4, v6

    .line 80
    goto :goto_1

    :cond_2
    move v6, v5

    .line 87
    goto :goto_2
.end method

.method protected getInPlaceAnimations(Ljava/util/List;)Ljava/util/List;
    .locals 12
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
    .line 97
    .local p1, "interruptedAnimations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    iget-object v7, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 99
    .local v6, "viewId":I
    sget-object v7, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    if-nez v7, :cond_0

    new-instance v7, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;-><init>(I)V

    sput-object v7, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    .line 100
    :cond_0
    sget-object v7, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 101
    .local v3, "lastDirectionRight":Z
    :goto_0
    iget-boolean v7, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mToggleInPlaceDirection:Z

    if-eqz v7, :cond_3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 102
    .local v2, "flipRight":Z
    :goto_1
    sget-object v7, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mLastInPlaceAnimationMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v4, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;-><init>(Z)V

    .line 106
    .local v4, "set":Landroid/view/animation/AnimationSet;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 107
    iget-object v5, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    .line 110
    .local v5, "view":Landroid/view/View;
    new-instance v0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    const/4 v8, 0x0

    if-eqz v2, :cond_4

    const/high16 v7, -0x3d4c0000    # -90.0f

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-direct {v0, v8, v7, v9, v10}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 111
    .local v0, "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    iget-wide v8, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mDuration:J

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setDuration(J)V

    .line 112
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 116
    new-instance v0, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;

    .end local v0    # "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    if-eqz v2, :cond_5

    const/high16 v7, 0x42b40000    # 90.0f

    :goto_3
    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-direct {v0, v7, v8, v9, v10}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;-><init>(FFFF)V

    .line 117
    .restart local v0    # "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    iget-wide v8, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mDuration:J

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setDuration(J)V

    .line 118
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    iget-wide v8, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mDuration:J

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;->setStartOffset(J)V

    .line 120
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    new-instance v7, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    invoke-direct {v7, v4, v5}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v1

    .line 100
    .end local v0    # "animation":Lnz/co/jsalibrary/android/animation/animation/JSAFlip3d;
    .end local v2    # "flipRight":Z
    .end local v3    # "lastDirectionRight":Z
    .end local v4    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 101
    .restart local v3    # "lastDirectionRight":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 110
    .restart local v2    # "flipRight":Z
    .restart local v4    # "set":Landroid/view/animation/AnimationSet;
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    const/high16 v7, 0x42b40000    # 90.0f

    goto :goto_2

    .line 116
    :cond_5
    const/high16 v7, -0x3d4c0000    # -90.0f

    goto :goto_3
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
    .line 147
    .local p2, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getTarget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

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
    .line 152
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
    .line 141
    .local p2, "animations":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getTarget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    iget-object v1, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mSecondView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController;->mFirstView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
