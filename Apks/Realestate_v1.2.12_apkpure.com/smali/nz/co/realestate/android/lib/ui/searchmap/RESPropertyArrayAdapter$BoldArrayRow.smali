.class Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BoldArrayRow;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$ArrayRow;
.source "RESPropertyArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoldArrayRow"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$ArrayRow;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BoldArrayRow;->mBoldFirstAddressLine:Z

    .line 73
    return-void
.end method
