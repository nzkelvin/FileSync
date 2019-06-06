.class public Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "JSAPageEnabledViewPager.java"


# instance fields
.field private mPagingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->mPagingEnabled:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->mPagingEnabled:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getPagingEnabled()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->mPagingEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->mPagingEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 46
    :goto_0
    return v1

    .line 44
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->mPagingEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1

    .line 35
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSAPageEnabledViewPager;->mPagingEnabled:Z

    .line 56
    return-void
.end method
