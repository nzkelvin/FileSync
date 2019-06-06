.class public final Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;
.source "RESPropertyArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$EndlessPropertyArrayAdapter;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowListing;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BoldArrayRow;,
        Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$ArrayRow;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "bold"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    if-eqz p3, :cond_0

    new-instance v1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BoldArrayRow;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BoldArrayRow;-><init>(Landroid/content/Context;)V

    :goto_0
    const-class v2, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    sget v4, Lnz/co/realestate/android/lib/R$layout;->my_property_list_row:I

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 49
    return-void

    .line 48
    :cond_0
    new-instance v1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$ArrayRow;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$ArrayRow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;->onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;)V

    return-void
.end method

.method protected onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;->onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V

    .line 82
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v0

    iget-object v1, p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->unloadTarget(Landroid/widget/ImageView;)V

    .line 83
    return-void
.end method
