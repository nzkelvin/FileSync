.class public Lnz/co/jsalibrary/android/util/JSAListUtil;
.super Ljava/lang/Object;
.source "JSAListUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearChoices(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 102
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return v0

    .line 99
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 100
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0

    .line 102
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCheckedItemCount(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 208
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 209
    :cond_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    .line 211
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return v0

    .line 210
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    goto :goto_0

    .line 211
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCheckedItemIds(Landroid/widget/AbsListView;)[J
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 228
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 229
    :cond_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 231
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return-object v0

    .line 230
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    goto :goto_0

    .line 231
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCheckedItemPosition(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 162
    :cond_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 164
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return v0

    .line 163
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    goto :goto_0

    .line 164
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCheckedItemPositions(Landroid/widget/AbsListView;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 181
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 182
    :cond_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 184
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return-object v0

    .line 183
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    goto :goto_0

    .line 184
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getListViewChild(Landroid/widget/ListView;I)Landroid/view/View;
    .locals 7
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 273
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 274
    :cond_0
    if-gez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 277
    .local v2, "headerCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 278
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 280
    .local v3, "lastVisiblePosition":I
    sub-int v5, v1, v2

    if-ge p1, v5, :cond_3

    .line 283
    :cond_2
    :goto_0
    return-object v4

    .line 281
    :cond_3
    sub-int v5, v3, v2

    if-gt p1, v5, :cond_2

    .line 282
    sub-int v0, v1, v2

    .line 283
    .local v0, "firstPosition":I
    sub-int v4, p1, v0

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public static isItemChecked(Landroid/widget/AbsListView;I)Z
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v0

    .line 144
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return v0

    .line 143
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    goto :goto_0

    .line 144
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAdapter(Landroid/widget/AbsListView;Landroid/widget/ListAdapter;)Z
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x1

    .line 31
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 32
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    :goto_0
    return v0

    .line 34
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    instance-of v1, p0, Landroid/widget/GridView;

    if-eqz v1, :cond_1

    .line 35
    check-cast p0, Landroid/widget/GridView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 37
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setChoiceMode(Landroid/widget/AbsListView;I)Z
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "choiceMode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 79
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return v0

    .line 76
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 77
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0

    .line 79
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultListRowBackgroundResource(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "row"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const v0, 0x10102f0

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->resolveThemeAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    const v0, 0x1080062

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static setItemChecked(Landroid/widget/AbsListView;IZ)Z
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSADeviceUtil;->isHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 125
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :goto_0
    return v0

    .line 122
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 123
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 125
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRecyclerListener(Landroid/widget/AbsListView;Landroid/widget/AbsListView$RecyclerListener;)Z
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    const/4 v0, 0x1

    .line 50
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 51
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 56
    :goto_0
    return v0

    .line 53
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    instance-of v1, p0, Landroid/widget/GridView;

    if-eqz v1, :cond_1

    .line 54
    check-cast p0, Landroid/widget/GridView;

    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    goto :goto_0

    .line 56
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
