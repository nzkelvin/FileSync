.class public Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;
.super Landroid/view/animation/AnimationSet;
.source "JSAAnimationSet.java"


# instance fields
.field private mEnded:Z

.field protected mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mStarted:Z

.field private final temp:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->temp:Landroid/view/animation/Transformation;

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "shareInterpolator"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 27
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->temp:Landroid/view/animation/Transformation;

    .line 35
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 19
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 66
    .local v8, "count":I
    const/4 v11, 0x0

    .line 67
    .local v11, "more":Z
    const/4 v13, 0x0

    .line 68
    .local v13, "started":Z
    const/4 v9, 0x1

    .line 70
    .local v9, "ended":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/animation/Transformation;->clear()V

    .line 72
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_b

    .line 73
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 75
    .local v2, "a":Landroid/view/animation/Animation;
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_6

    move-wide/from16 v14, p1

    :goto_1
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v16

    add-long v6, v14, v16

    .line 76
    .local v6, "animationStartTime":J
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v14

    add-long v4, v6, v14

    .line 77
    .local v4, "animationEndTime":J
    cmp-long v14, p1, v6

    if-gez v14, :cond_0

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v14

    if-nez v14, :cond_2

    :cond_0
    cmp-long v14, p1, v6

    if-ltz v14, :cond_1

    cmp-long v14, p1, v4

    if-lez v14, :cond_2

    :cond_1
    cmp-long v14, p1, v4

    if-lez v14, :cond_7

    .line 79
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_2
    const/4 v12, 0x1

    .line 81
    .local v12, "playing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->temp:Landroid/view/animation/Transformation;

    invoke-virtual {v14}, Landroid/view/animation/Transformation;->clear()V

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->temp:Landroid/view/animation/Transformation;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v14}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v14

    if-nez v14, :cond_3

    if-eqz v11, :cond_8

    :cond_3
    const/4 v11, 0x1

    .line 83
    :goto_3
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->temp:Landroid/view/animation/Transformation;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 85
    :cond_4
    if-nez v13, :cond_5

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_5
    const/4 v13, 0x1

    .line 86
    :goto_4
    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    .line 72
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 75
    .end local v4    # "animationEndTime":J
    .end local v6    # "animationStartTime":J
    .end local v12    # "playing":Z
    :cond_6
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v14

    goto :goto_1

    .line 79
    .restart local v4    # "animationEndTime":J
    .restart local v6    # "animationStartTime":J
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 82
    .restart local v12    # "playing":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 85
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 86
    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 89
    .end local v2    # "a":Landroid/view/animation/Animation;
    .end local v4    # "animationEndTime":J
    .end local v6    # "animationStartTime":J
    .end local v12    # "playing":Z
    :cond_b
    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mStarted:Z

    if-nez v14, :cond_d

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 91
    :cond_c
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mStarted:Z

    .line 94
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mEnded:Z

    if-eq v9, v14, :cond_f

    .line 95
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 96
    :cond_e
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mEnded:Z

    .line 99
    :cond_f
    return v11
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mStarted:Z

    return v0
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 47
    iput-object p1, p0, Lnz/co/jsalibrary/android/animation/animation/JSAAnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 48
    return-void
.end method
