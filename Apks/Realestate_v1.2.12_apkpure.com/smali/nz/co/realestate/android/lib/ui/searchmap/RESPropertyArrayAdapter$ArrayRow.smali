.class Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$ArrayRow;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;
.source "RESPropertyArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayRow"
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
    .line 57
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;

    check-cast p3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$ArrayRow;->updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Landroid/database/Cursor;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    return-void
.end method

.method public updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Landroid/database/Cursor;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 0
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "item"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 61
    invoke-super {p0, p1, p3}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Ljava/lang/Object;)V

    .line 62
    return-void
.end method
