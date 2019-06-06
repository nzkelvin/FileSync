.class public Lnz/co/jsalibrary/android/widget/JSAViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "JSAViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;
    }
.end annotation


# instance fields
.field private mHandleDisabledTouchScrollingEvents:Z

.field private mTouchScrollingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    .line 38
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mHandleDisabledTouchScrollingEvents:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    .line 38
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mHandleDisabledTouchScrollingEvents:Z

    .line 50
    return-void
.end method


# virtual methods
.method public fakeDragBy(F)V
    .locals 1
    .param p1, "xOffset"    # F

    .prologue
    .line 121
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getTouchScrollingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    return v0
.end method

.method public isHandleDisabledTouchScrollingEvents()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mHandleDisabledTouchScrollingEvents:Z

    return v0
.end method

.method public isTouchScrollingEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mHandleDisabledTouchScrollingEvents:Z

    .line 110
    :goto_0
    return v1

    .line 108
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "exception":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mHandleDisabledTouchScrollingEvents:Z

    .line 96
    :goto_0
    return v1

    .line 94
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setHandleDisabledTouchScrollingEvents(Z)V
    .locals 1
    .param p1, "handle"    # Z

    .prologue
    .line 79
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mHandleDisabledTouchScrollingEvents:Z

    if-ne v0, p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mHandleDisabledTouchScrollingEvents:Z

    goto :goto_0
.end method

.method public setTouchScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 66
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager;->mTouchScrollingEnabled:Z

    goto :goto_0
.end method
