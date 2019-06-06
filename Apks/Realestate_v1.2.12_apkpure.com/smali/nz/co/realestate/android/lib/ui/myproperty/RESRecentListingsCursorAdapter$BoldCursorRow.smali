.class Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$BoldCursorRow;
.super Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$CursorRow;
.source "RESRecentListingsCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoldCursorRow"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$CursorRow;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter$BoldCursorRow;->mBoldFirstAddressLine:Z

    .line 58
    return-void
.end method
