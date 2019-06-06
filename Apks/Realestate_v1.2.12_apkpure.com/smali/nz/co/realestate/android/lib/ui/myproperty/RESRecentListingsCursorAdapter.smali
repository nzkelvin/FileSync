.class public final Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;
.source "RESRecentListingsCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$BoldCursorRow;,
        Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$CursorRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "bold"    # Z

    .prologue
    .line 22
    if-eqz p3, :cond_0

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$BoldCursorRow;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$BoldCursorRow;-><init>(Landroid/content/Context;)V

    :goto_0
    const-class v2, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    sget v5, Lnz/co/realestate/android/lib/R$layout;->my_property_list_row:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 23
    return-void

    .line 22
    :cond_0
    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$CursorRow;

    invoke-direct {v1, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$CursorRow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;->onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;)V

    return-void
.end method

.method protected onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;->onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V

    .line 31
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v0

    iget-object v1, p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->unloadTarget(Landroid/widget/ImageView;)V

    .line 32
    return-void
.end method
