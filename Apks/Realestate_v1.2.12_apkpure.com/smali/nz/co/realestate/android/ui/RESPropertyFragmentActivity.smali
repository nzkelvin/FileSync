.class public final Lnz/co/realestate/android/ui/RESPropertyFragmentActivity;
.super Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;
.source "RESPropertyFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected showAffordabilityTab(I)Z
    .locals 1
    .param p1, "listingTypeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
