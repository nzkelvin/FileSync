.class public Lnz/co/realestate/android/ui/myproperty/RESMyPropertyListFragment;
.super Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;
.source "RESMyPropertyListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected constructAdapter(Ljava/util/List;)Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;",
            ">;)",
            "Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;>;"
    new-instance v0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/ui/myproperty/RESMyPropertyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    return-object v0
.end method
