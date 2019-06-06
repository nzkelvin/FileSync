.class public Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "RESPropertyImagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageEnabledViewPager"
.end annotation


# instance fields
.field private mPagingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->mPagingEnabled:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->mPagingEnabled:Z

    .line 164
    return-void
.end method


# virtual methods
.method public getPagingEnabled()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->mPagingEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    iget-boolean v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->mPagingEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    .line 187
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 167
    iget-boolean v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->mPagingEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    .line 169
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->mPagingEnabled:Z

    .line 178
    return-void
.end method
