.class public Lnz/co/jsalibrary/android/util/JSAMotionEventUtil;
.super Ljava/lang/Object;
.source "JSAMotionEventUtil.java"


# static fields
.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAMotionEventUtil;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public static obtain(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "action"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    .line 66
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 67
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 68
    .local v1, "m":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    add-int v0, v2, p1

    .line 69
    .local v0, "indexedAction":I
    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 70
    return-object v1
.end method
