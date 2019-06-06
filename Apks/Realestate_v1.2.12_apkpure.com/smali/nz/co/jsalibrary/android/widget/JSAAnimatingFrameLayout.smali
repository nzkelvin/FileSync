.class public Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "JSAAnimatingFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;,
        Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;
    }
.end annotation


# instance fields
.field protected mAnimatingFrameListener:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

.field protected mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

.field protected mCurrentIndex:I

.field protected mCurrentLongestRunningAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

.field protected mCurrentTargettedAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentlyAnimating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    .line 48
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    .line 53
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private animateToUncheckedIndex(IZ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 233
    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    .line 236
    .local v1, "oldIndex":I
    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->buildAnimationController(Landroid/view/View;Landroid/view/View;)Lnz/co/jsalibrary/android/animation/JSAAnimationController;

    move-result-object v0

    .line 239
    .local v0, "controller":Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    :goto_0
    iget-boolean v6, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentlyAnimating:Z

    if-eqz v6, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {v0}, Lnz/co/jsalibrary/android/animation/JSAAnimationController;->allowInterruptions()Z

    move-result v6

    if-nez v6, :cond_1

    .line 240
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onInternalAnimationEnd()V

    .line 241
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onFrameLayoutAnimationEnd()V

    .line 245
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    .line 248
    if-eqz p2, :cond_2

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    invoke-interface {v0, v5}, Lnz/co/jsalibrary/android/animation/JSAAnimationController;->getAnimations(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    :cond_2
    iput-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    .line 251
    if-eqz p2, :cond_3

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 252
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->resetView()V

    .line 270
    :cond_4
    return-void

    .end local v0    # "controller":Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    :cond_5
    move-object v0, v5

    .line 236
    goto :goto_0

    .line 257
    .restart local v0    # "controller":Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentlyAnimating:Z

    .line 260
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onFrameLayoutAnimationStart()V

    .line 263
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    .line 264
    .local v4, "targettedAnimation":Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;
    invoke-virtual {v4}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    new-instance v7, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;

    invoke-direct {v7, p0, v0, v4}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$InternalAnimationListener;-><init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;Lnz/co/jsalibrary/android/animation/JSAAnimationController;Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 265
    invoke-virtual {v4}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getTarget()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentLongestRunningAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentLongestRunningAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    invoke-virtual {v6}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 267
    .local v2, "longestRunningDuration":J
    :goto_2
    invoke-virtual {v4}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_7

    .line 268
    iput-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentLongestRunningAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    goto :goto_1

    .line 266
    .end local v2    # "longestRunningDuration":J
    :cond_8
    const-wide/16 v2, -0x1

    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewAdded()V

    .line 75
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    .line 79
    .local v0, "result":Z
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewAdded()V

    .line 80
    return v0
.end method

.method public animateInPlace()V
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->animateToUncheckedIndex(IZ)V

    .line 225
    return-void
.end method

.method public animateToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 201
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->animateToIndex(I)V

    .line 205
    :cond_1
    return-void
.end method

.method public animateToIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 213
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    if-ne p1, v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->animateToUncheckedIndex(IZ)V

    goto :goto_0
.end method

.method public animateToNext()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 191
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->animateToIndex(I)V

    goto :goto_0
.end method

.method public buildAnimationController(Landroid/view/View;Landroid/view/View;)Lnz/co/jsalibrary/android/animation/JSAAnimationController;
    .locals 3
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 317
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;->build([Landroid/view/View;)Lnz/co/jsalibrary/android/animation/JSAAnimationController;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnimatingFrameListener()Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimatingFrameListener:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

    return-object v0
.end method

.method public getAnimationControllerBuilder()Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    return v0
.end method

.method protected hideChild(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    return-void
.end method

.method protected initialiseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lnz/co/jsalibrary/android/R$styleable;->JSAAnimatingFrameLayout:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lnz/co/jsalibrary/android/R$styleable;->JSAAnimatingFrameLayout_jsaController:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 63
    .local v1, "controllerId":I
    if-nez v1, :cond_1

    new-instance v2, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$Builder;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipAnimationController$Builder;-><init>()V

    iput-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void

    .line 64
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/animation/controller/JSAFlipZoomAnimationController$Builder;-><init>()V

    iput-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentlyAnimating:Z

    return v0
.end method

.method protected onFrameLayoutAnimationEnd()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimatingFrameListener:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimatingFrameListener:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

    invoke-interface {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;->onAnimationEnd(Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;)V

    .line 372
    :cond_0
    return-void
.end method

.method protected onFrameLayoutAnimationStart()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimatingFrameListener:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimatingFrameListener:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

    invoke-interface {v0, p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;->onAnimationStart(Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;)V

    .line 356
    :cond_0
    return-void
.end method

.method protected onInternalAnimationEnd()V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->resetView()V

    .line 364
    return-void
.end method

.method protected onViewAdded()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->resetView()V

    .line 89
    return-void
.end method

.method protected onViewRemoved()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->resetView()V

    .line 131
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 112
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewRemoved()V

    .line 113
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewRemoved()V

    .line 98
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 102
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewRemoved()V

    .line 103
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewRemoved()V

    .line 108
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 122
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewRemoved()V

    .line 123
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    .line 117
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->onViewRemoved()V

    .line 118
    return-void
.end method

.method protected resetView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildCount()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    .line 279
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    .line 281
    .local v0, "animation":Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;->getTarget()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 283
    .end local v0    # "animation":Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentlyAnimating:Z

    .line 284
    iput-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentTargettedAnimations:Ljava/util/List;

    .line 285
    iput-object v4, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentLongestRunningAnimation:Lnz/co/jsalibrary/android/animation/JSATargettedAnimation;

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 287
    iget v2, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->showChild(I)V

    .line 286
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->hideChild(I)V

    goto :goto_2

    .line 290
    :cond_2
    return-void
.end method

.method public setAnimatingFrameListener(Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

    .prologue
    .line 154
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimatingFrameListener:Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout$AnimatingFrameListener;

    .line 155
    return-void
.end method

.method public setAnimationControllerBuilder(Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;)V
    .locals 0
    .param p1, "builder"    # Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    .prologue
    .line 142
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mAnimationControllerBuilder:Lnz/co/jsalibrary/android/animation/JSAAnimationController$Builder;

    .line 143
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 170
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 171
    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->mCurrentIndex:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->animateToUncheckedIndex(IZ)V

    goto :goto_0
.end method

.method protected showChild(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/JSAAnimatingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    return-void
.end method
