.class public Lnz/co/realestate/android/ui/RESMyPropertyFragmentActivity;
.super Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;
.source "RESMyPropertyFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESMyPropertyFragmentActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMyPropertyFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    const-class v0, Lnz/co/realestate/android/ui/myproperty/RESMyPropertyListFragment;

    return-object v0
.end method

.method protected getRecentListingsFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    const-class v0, Lnz/co/realestate/android/ui/myproperty/RESRecentListingsListFragment;

    return-object v0
.end method

.method protected includeOpenHomeTab()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
