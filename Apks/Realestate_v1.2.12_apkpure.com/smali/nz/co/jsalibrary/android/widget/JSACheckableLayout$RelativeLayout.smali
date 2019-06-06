.class public Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "JSACheckableLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACheckableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeLayout"
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

    .line 323
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 314
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetPressed:Z

    .line 315
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetSelected:Z

    .line 316
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetActivated:Z

    .line 324
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetPressed:Z

    .line 315
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetSelected:Z

    .line 316
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetActivated:Z

    .line 329
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 334
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 314
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetPressed:Z

    .line 315
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetSelected:Z

    .line 316
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetActivated:Z

    .line 335
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 337
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
    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

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
    .line 527
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetActivated:Z

    if-nez v3, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetActivatedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetActivatedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 533
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchSetActivated(Z)V

    goto :goto_0

    .line 538
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getChildCount()I

    move-result v1

    .line 539
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 540
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 541
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetActivatedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 542
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .prologue
    .line 475
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetPressed:Z

    if-nez v3, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetPressedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetPressedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 481
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchSetPressed(Z)V

    goto :goto_0

    .line 486
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getChildCount()I

    move-result v1

    .line 487
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 488
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetPressedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 487
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 490
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2
.end method

.method public dispatchSetSelected(Z)V
    .locals 5
    .param p1, "selected"    # Z

    .prologue
    .line 501
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetSelected:Z

    if-nez v3, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetSelectedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetSelectedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 507
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchSetSelected(Z)V

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getChildCount()I

    move-result v1

    .line 513
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 514
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetSelectedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 513
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 516
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2
.end method

.method protected initialiseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 344
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 345
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout_jsaCheckedBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout_jsaDispatchSetPressed:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetPressed:Z

    .line 347
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout_jsaDispatchSetSelected:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetSelected:Z

    .line 348
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout_jsaDispatchSetActivated:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetActivated:Z

    .line 349
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 431
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 432
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout;->access$000()[I

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mergeDrawableStates([I[I)[I

    .line 433
    :cond_0
    return-object v0
.end method

.method public setActivatedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 465
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetActivatedBlacklistIds:[I

    .line 466
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
    .line 390
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 392
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 406
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 407
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 401
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 375
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    if-ne v0, p1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    .line 377
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->updateBackground()V

    goto :goto_0
.end method

.method public setCheckedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 357
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->updateBackground()V

    .line 359
    :cond_0
    return-void
.end method

.method public setCheckedBackgroundResource(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 362
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 363
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->updateBackground()V

    .line 364
    :cond_0
    return-void
.end method

.method public setDispatchSetActivated(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetActivated:Z

    .line 450
    return-void
.end method

.method public setDispatchSetPressed(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetPressed:Z

    .line 442
    return-void
.end method

.method public setPressedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 457
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetPressedBlacklistIds:[I

    .line 458
    return-void
.end method

.method public setSelectedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 461
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mSetSelectedBlacklistIds:[I

    .line 462
    return-void
.end method

.method public setSelectedSetPressed(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 445
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mDispatchSetSelected:Z

    .line 446
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    .line 382
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->updateBackground()V

    .line 383
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackground()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mIgnoreSetBackground:Z

    .line 415
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->setSuperBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 417
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mIgnoreSetBackground:Z

    .line 418
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->refreshDrawableState()V

    .line 419
    return-void

    .line 416
    :cond_1
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$RelativeLayout;->setSuperBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
