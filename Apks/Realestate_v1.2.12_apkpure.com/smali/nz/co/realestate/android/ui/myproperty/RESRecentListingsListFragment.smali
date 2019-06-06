.class public Lnz/co/realestate/android/ui/myproperty/RESRecentListingsListFragment;
.super Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;
.source "RESRecentListingsListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsListFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected constructAdapter()Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/ui/myproperty/RESRecentListingsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/myproperty/RESRecentListingsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    return-object v0
.end method
