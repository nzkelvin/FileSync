.class public final Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;
.source "RESMyPropertyArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter$BoldArrayRow;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter$ArrayRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "bold"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    if-eqz p3, :cond_0

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter$BoldArrayRow;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter$BoldArrayRow;-><init>(Landroid/content/Context;)V

    :goto_0
    const-class v2, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    const/4 v0, 0x2

    new-array v4, v0, [I

    const/4 v0, 0x0

    sget v3, Lnz/co/realestate/android/lib/R$layout;->my_property_list_row:I

    aput v3, v4, v0

    const/4 v0, 0x1

    sget v3, Lnz/co/realestate/android/lib/R$layout;->my_property_heading_row:I

    aput v3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V

    .line 25
    return-void

    .line 23
    :cond_0
    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter$ArrayRow;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter$ArrayRow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 38
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    instance-of v1, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 43
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    instance-of v1, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;

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
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;->onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;)V

    return-void
.end method

.method protected onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;->onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V

    .line 33
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v0

    iget-object v1, p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->unloadTarget(Landroid/widget/ImageView;)V

    .line 34
    return-void
.end method
