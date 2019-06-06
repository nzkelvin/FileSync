.class public Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;
.super Landroid/widget/FrameLayout;
.source "JSACheckableLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACheckableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameLayout"
.end annotation


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChecked:Z

.field private mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDispatchSetActivated:Z

.field private mDispatchSetPressed:Z

.field private mDispatchSetSelected:Z

.field private mIgnoreSetBackground:Z

.field private mSetActivatedBlacklistIds:[I

.field private mSetPressedBlacklistIds:[I

.field private mSetSelectedBlacklistIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 568
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 559
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetPressed:Z

    .line 560
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetSelected:Z

    .line 561
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetActivated:Z

    .line 569
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 570
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 573
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 559
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetPressed:Z

    .line 560
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetSelected:Z

    .line 561
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetActivated:Z

    .line 574
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 575
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 576
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout_jsaCheckedBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 577
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 578
    return-void
.end method

.method private setSuperBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchSetActivated(Z)V
    .locals 5
    .param p1, "activated"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 755
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetActivated:Z

    if-nez v3, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetActivatedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetActivatedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 761
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetActivated(Z)V

    goto :goto_0

    .line 766
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getChildCount()I

    move-result v1

    .line 767
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 768
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 769
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetActivatedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 767
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 770
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .prologue
    .line 703
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetPressed:Z

    if-nez v3, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetPressedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetPressedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 709
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetPressed(Z)V

    goto :goto_0

    .line 714
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getChildCount()I

    move-result v1

    .line 715
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 716
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 717
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetPressedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 715
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 718
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2
.end method

.method public dispatchSetSelected(Z)V
    .locals 5
    .param p1, "selected"    # Z

    .prologue
    .line 729
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetSelected:Z

    if-nez v3, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetSelectedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetSelectedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 735
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetSelected(Z)V

    goto :goto_0

    .line 740
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getChildCount()I

    move-result v1

    .line 741
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 742
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 743
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetSelectedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 741
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 744
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 659
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 660
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout;->access$000()[I

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mergeDrawableStates([I[I)[I

    .line 661
    :cond_0
    return-object v0
.end method

.method public setActivatedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 693
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetActivatedBlacklistIds:[I

    .line 694
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 618
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 620
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 633
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 634
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 635
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 623
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 625
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 629
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 630
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 603
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    if-ne v0, p1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    .line 605
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->updateBackground()V

    goto :goto_0
.end method

.method public setCheckedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 585
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 586
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->updateBackground()V

    .line 587
    :cond_0
    return-void
.end method

.method public setCheckedBackgroundResource(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->updateBackground()V

    .line 592
    :cond_0
    return-void
.end method

.method public setDispatchSetActivated(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 677
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetActivated:Z

    .line 678
    return-void
.end method

.method public setDispatchSetPressed(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetPressed:Z

    .line 670
    return-void
.end method

.method public setPressedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 685
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetPressedBlacklistIds:[I

    .line 686
    return-void
.end method

.method public setSelectedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 689
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mSetSelectedBlacklistIds:[I

    .line 690
    return-void
.end method

.method public setSelectedSetPressed(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 673
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mDispatchSetSelected:Z

    .line 674
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    .line 610
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->updateBackground()V

    .line 611
    return-void

    .line 609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackground()V
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mIgnoreSetBackground:Z

    .line 643
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->setSuperBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mIgnoreSetBackground:Z

    .line 646
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->refreshDrawableState()V

    .line 647
    return-void

    .line 644
    :cond_1
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$FrameLayout;->setSuperBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
