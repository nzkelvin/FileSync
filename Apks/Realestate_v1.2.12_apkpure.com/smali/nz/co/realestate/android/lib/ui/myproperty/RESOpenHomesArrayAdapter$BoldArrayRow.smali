.class Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$BoldArrayRow;
.super Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;
.source "RESOpenHomesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoldArrayRow"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;-><init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$BoldArrayRow;->mBoldFirstAddressLine:Z

    .line 91
    return-void
.end method
