.class public Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;
.super Landroid/widget/LinearLayout;
.source "JSACheckableLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSACheckableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearLayout"
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

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetPressed:Z

    .line 83
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetSelected:Z

    .line 84
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetActivated:Z

    .line 92
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetPressed:Z

    .line 83
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetSelected:Z

    .line 84
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetActivated:Z

    .line 97
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lnz/co/jsalibrary/android/R$styleable;->JSACheckableLayout_jsaCheckedBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
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
    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

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
    .line 278
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetActivated:Z

    if-nez v3, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetActivatedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetActivatedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 284
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetActivated(Z)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getChildCount()I

    move-result v1

    .line 290
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 291
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetActivatedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 293
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .prologue
    .line 226
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetPressed:Z

    if-nez v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetPressedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetPressedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 232
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetPressed(Z)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getChildCount()I

    move-result v1

    .line 238
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 239
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetPressedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 238
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 241
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2
.end method

.method public dispatchSetSelected(Z)V
    .locals 5
    .param p1, "selected"    # Z

    .prologue
    .line 252
    iget-boolean v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetSelected:Z

    if-nez v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetSelectedBlacklistIds:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetSelectedBlacklistIds:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 258
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetSelected(Z)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getChildCount()I

    move-result v1

    .line 264
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 265
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetSelectedBlacklistIds:[I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 182
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 183
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout;->access$000()[I

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mergeDrawableStates([I[I)[I

    .line 184
    :cond_0
    return-object v0
.end method

.method public setActivatedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 216
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetActivatedBlacklistIds:[I

    .line 217
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
    .line 141
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 157
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 152
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mIgnoreSetBackground:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 126
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    if-ne v0, p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    .line 128
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->updateBackground()V

    goto :goto_0
.end method

.method public setCheckedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 108
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->updateBackground()V

    .line 110
    :cond_0
    return-void
.end method

.method public setCheckedBackgroundResource(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->updateBackground()V

    .line 115
    :cond_0
    return-void
.end method

.method public setDispatchSetActivated(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetActivated:Z

    .line 201
    return-void
.end method

.method public setDispatchSetPressed(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetPressed:Z

    .line 193
    return-void
.end method

.method public setPressedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 208
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetPressedBlacklistIds:[I

    .line 209
    return-void
.end method

.method public setSelectedBlacklistIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 212
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mSetSelectedBlacklistIds:[I

    .line 213
    return-void
.end method

.method public setSelectedSetPressed(Z)V
    .locals 0
    .param p1, "dispatch"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mDispatchSetSelected:Z

    .line 197
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    .line 133
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->updateBackground()V

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackground()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mIgnoreSetBackground:Z

    .line 166
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mCheckedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->setSuperBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mIgnoreSetBackground:Z

    .line 169
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->refreshDrawableState()V

    .line 170
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/widget/JSACheckableLayout$LinearLayout;->setSuperBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
