.class public Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;
.super Ljava/lang/Object;
.source "JSAViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnPageChangeListenerProxy"
.end annotation


# instance fields
.field protected final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;-><init>([Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    return-void
.end method

.method public varargs constructor <init>([Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 4
    .param p1, "listeners"    # [Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;->mListeners:Ljava/util/List;

    .line 140
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 141
    .local v0, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 145
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 146
    .local v0, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 147
    .end local v0    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 151
    .local v0, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 152
    .end local v0    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAViewPager$OnPageChangeListenerProxy;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 156
    .local v0, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 157
    .end local v0    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method
