.class public Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;
.super Ljava/lang/Object;
.source "JSAScrubGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$SimpleOnTranslateGestureListener;,
        Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;
    }
.end annotation


# static fields
.field protected static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field protected static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field protected static final DEFAULT_CANCEL_DISTANCE:D = 50.0

.field protected static final DEFAULT_SNAPSHOT_COUNT:I = 0x5

.field protected static final DEFAULT_TURN_ANGLE:D = 30.0

.field protected static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field protected mActivePointerId:I

.field protected mCancelDistance:D

.field protected mCurrentLap:I

.field protected mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

.field protected mListener:Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

.field protected mNextExpectedAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

.field protected mPointVectorQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;",
            "Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSnapshotCount:I

.field protected mStartOnMove:Z

.field protected mTotalLapDistance:D

.field protected mTurnAngleDegrees:D


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;)V
    .locals 2
    .param p1, "listener"    # Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mSnapshotCount:I

    .line 57
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTurnAngleDegrees:D

    .line 60
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCancelDistance:D

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mStartOnMove:Z

    .line 85
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

    .line 87
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;I)V
    .locals 2
    .param p1, "listener"    # Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;
    .param p2, "snapshotCount"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mSnapshotCount:I

    .line 57
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTurnAngleDegrees:D

    .line 60
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCancelDistance:D

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mStartOnMove:Z

    .line 90
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

    .line 92
    iput p2, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mSnapshotCount:I

    .line 93
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    .line 101
    return-void
.end method

.method protected endGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    .line 233
    iget-object v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

    iget v1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCurrentLap:I

    invoke-interface {v0, p0, v1}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;->onScrubEnd(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;I)V

    .line 234
    iput-object v2, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    .line 235
    iput-object v2, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 236
    iput-object v2, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mNextExpectedAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTotalLapDistance:D

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCurrentLap:I

    .line 239
    return-void
.end method

.method public getCancelDistance()D
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCancelDistance:D

    return-wide v0
.end method

.method public getCurrentLap()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCurrentLap:I

    return v0
.end method

.method public getLapDistance()D
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 252
    :goto_0
    return-wide v2

    .line 251
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    iget-object v2, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 252
    .local v0, "p":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    iget-object v1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->distance(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTotalLapDistance()D
    .locals 4

    .prologue
    .line 261
    iget-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTotalLapDistance:D

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->getLapDistance()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getTurnAngle()D
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTurnAngleDegrees:D

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v12, 0xff00

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 117
    .local v0, "action":I
    if-ne v0, v11, :cond_2

    iget v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    if-ne v8, v10, :cond_2

    iget-boolean v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mStartOnMove:Z

    if-eqz v8, :cond_2

    move v1, v9

    .line 119
    .local v1, "canStartOnMove":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    .line 120
    :cond_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    .line 121
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    .line 122
    new-instance v8, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-double v12, v12

    invoke-direct {v8, v10, v11, v12, v13}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(DD)V

    iput-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 123
    iget-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

    invoke-interface {v8, p0, v3}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;->onScrubBegin(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;I)V

    .line 166
    :cond_1
    :goto_1
    return v9

    .end local v1    # "canStartOnMove":Z
    :cond_2
    move v1, v3

    .line 117
    goto :goto_0

    .line 127
    .restart local v1    # "canStartOnMove":Z
    :cond_3
    if-ne v0, v11, :cond_6

    iget v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    if-eq v8, v10, :cond_6

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/2addr v8, v12

    shr-int/lit8 v6, v8, 0x8

    .line 129
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 130
    .local v5, "pointerId":I
    iget v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    if-ne v5, v8, :cond_1

    .line 132
    iget-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    iget-object v10, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v8}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-object v2, v8

    .line 133
    .local v2, "lastPoint":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    :goto_2
    new-instance v4, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-double v10, v8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-double v12, v8

    invoke-direct {v4, v10, v11, v12, v13}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(DD)V

    .line 134
    .local v4, "point":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    new-instance v7, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    new-instance v8, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    invoke-direct {v8, v2}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)V

    new-instance v10, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    invoke-direct {v10, v4}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)V

    invoke-direct {v7, v8, v10}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;-><init>(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)V

    .line 136
    .local v7, "vector":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;
    iget-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    new-instance v10, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-direct {v10, v4, v7}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v10, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mSnapshotCount:I

    if-le v8, v10, :cond_4

    iget-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    :cond_4
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->updateGesture()V

    goto :goto_1

    .line 132
    .end local v2    # "lastPoint":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .end local v4    # "point":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    .end local v7    # "vector":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;
    :cond_5
    iget-object v2, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    goto :goto_2

    .line 143
    .end local v5    # "pointerId":I
    .end local v6    # "pointerIndex":I
    :cond_6
    if-ne v0, v9, :cond_7

    .line 144
    const-string v8, "action ended with action up"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;

    aput-object v11, v10, v3

    invoke-static {v8, v10}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 145
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->endGesture()V

    goto/16 :goto_1

    .line 149
    :cond_7
    const/4 v8, 0x3

    if-ne v0, v8, :cond_8

    .line 150
    const-string v8, "action ended with action cancel"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;

    aput-object v11, v10, v3

    invoke-static {v8, v10}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 151
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->endGesture()V

    goto/16 :goto_1

    .line 155
    :cond_8
    const/4 v8, 0x6

    if-ne v0, v8, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/2addr v8, v12

    shr-int/lit8 v6, v8, 0x8

    .line 157
    .restart local v6    # "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 158
    .restart local v5    # "pointerId":I
    iget v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    if-ne v5, v8, :cond_1

    .line 159
    if-nez v6, :cond_9

    move v3, v9

    .line 160
    .local v3, "newPointerIndex":I
    :cond_9
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    .line 161
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mActivePointerId:I

    .line 162
    new-instance v8, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-double v12, v12

    invoke-direct {v8, v10, v11, v12, v13}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;-><init>(DD)V

    iput-object v8, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    goto/16 :goto_1
.end method

.method public setCancelDistance(D)V
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 308
    iput-wide p1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCancelDistance:D

    .line 309
    return-void
.end method

.method public setTurnAngle(D)V
    .locals 1
    .param p1, "angle"    # D

    .prologue
    .line 289
    iput-wide p1, p0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTurnAngleDegrees:D

    .line 290
    return-void
.end method

.method protected updateGesture()V
    .locals 28

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mSnapshotCount:I

    if-ge v3, v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v2, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;-><init>()V

    .line 180
    .local v2, "averageVector":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 181
    .local v24, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;>;"
    invoke-virtual/range {v24 .. v24}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;->add(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;)V

    goto :goto_1

    .line 184
    .end local v24    # "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 185
    .local v23, "midpoint":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 188
    .local v19, "endpoint":Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mNextExpectedAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mNextExpectedAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->perpendicularDistance(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCancelDistance:D

    cmpl-double v3, v4, v8

    if-lez v3, :cond_3

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mNextExpectedAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->perpendicularDistance(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D

    move-result-wide v20

    .line 190
    .local v20, "distance":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action ended from perpendicular distance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->endGesture()V

    goto/16 :goto_0

    .line 196
    .end local v20    # "distance":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->distance(Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;)D

    move-result-wide v6

    .line 199
    .local v6, "lapDistance":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

    move-object/from16 v0, p0

    iget v5, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCurrentLap:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTotalLapDistance:D

    add-double/2addr v8, v6

    move-object/from16 v4, p0

    invoke-interface/range {v3 .. v9}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;->onScrubDistanceChanged(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;IDD)V

    .line 202
    move-object/from16 v0, v23

    iget-wide v8, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    iget-wide v12, v3, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->x:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    iget-wide v14, v3, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;->y:D

    invoke-static/range {v8 .. v15}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->angleToPoint(DDDD)D

    move-result-wide v16

    .line 205
    .local v16, "anchorAngle":D
    iget-wide v4, v2, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;->x:D

    iget-wide v8, v2, Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Vector;->y:D

    invoke-static {v4, v5, v8, v9}, Lnz/co/jsalibrary/android/util/JSAGeometryUtil;->angleToPoint(DD)D

    move-result-wide v26

    .line 208
    .local v26, "vectorAngle":D
    sub-double v4, v16, v26

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSAMathUtil;->toDegrees(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTurnAngleDegrees:D

    cmpl-double v3, v4, v8

    if-gtz v3, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-wide v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTotalLapDistance:D

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mTotalLapDistance:D

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    move-object/from16 v0, p0

    iput-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mNextExpectedAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 215
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mLastAnchor:Lnz/co/jsalibrary/android/util/JSAGeometryUtil$Point;

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    .line 219
    .local v18, "count":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v18

    if-gt v0, v1, :cond_4

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mPointVectorQueue:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 223
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCurrentLap:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCurrentLap:I

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mListener:Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;

    move-object/from16 v0, p0

    iget v4, v0, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;->mCurrentLap:I

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v4}, Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector$OnScrubGestureListener;->onScrub(Lnz/co/jsalibrary/android/view/JSAScrubGestureDetector;I)V

    goto/16 :goto_0
.end method
