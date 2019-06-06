.class Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$CursorRow;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;
.source "RESRecentListingsCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    check-cast p3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$CursorRow;->updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Landroid/database/Cursor;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    return-void
.end method

.method public updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Landroid/database/Cursor;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 5
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 44
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbRecentPropertyListing()Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v0, v3, v4}, Lnz/co/realestate/android/lib/eo/database/RESDbRecentPropertyListing;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    .line 46
    .local v1, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    invoke-super {p0, p1, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Ljava/lang/Object;)V

    .line 47
    return-void
.end method
