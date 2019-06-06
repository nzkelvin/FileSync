.class public Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;
.source "RESOpenHomesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$BoldArrayRow;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter",
        "<",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
            ">;",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;
    .param p4, "bold"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
            ">;",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;>;"
    if-eqz p4, :cond_0

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$BoldArrayRow;

    invoke-direct {v1, p1, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$BoldArrayRow;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;)V

    :goto_0
    const-class v2, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;

    const/4 v0, 0x2

    new-array v4, v0, [I

    const/4 v0, 0x0

    sget v3, Lnz/co/realestate/android/lib/R$layout;->open_homes_list_row:I

    aput v3, v4, v0

    const/4 v0, 0x1

    sget v3, Lnz/co/realestate/android/lib/R$layout;->open_homes_list_header_row:I

    aput v3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    invoke-direct {v1, p1, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;

    .line 104
    .local v0, "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    instance-of v1, v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    :cond_0
    instance-of v1, v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;

    .line 45
    .local v0, "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    instance-of v1, v0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;->onRowRecycled(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)V

    return-void
.end method

.method protected onRowRecycled(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;->onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V

    .line 40
    iget-object v0, p1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v0

    iget-object v1, p1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->unloadTarget(Landroid/widget/ImageView;)V

    .line 41
    :cond_0
    return-void
.end method
