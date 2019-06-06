.class public final Lnz/co/realestate/android/ui/RESSearchMapActivity;
.super Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
.source "RESSearchMapActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActionBarTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "listingTypeId"    # I

    .prologue
    .line 20
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/ui/RESSearchMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/ui/RESSearchMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
