.class public final Lnz/co/realestate/android/ui/home/RESHomeFragment;
.super Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;
.source "RESHomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActionBarTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "listingTypeId"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0800af

    :goto_0
    invoke-virtual {p0, v0}, Lnz/co/realestate/android/ui/home/RESHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0800ff

    goto :goto_0
.end method

.method protected getDefaultImageResource(I)I
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .local v0, "isForSale":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0200d9

    :goto_1
    return v1

    .line 10
    .end local v0    # "isForSale":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 11
    .restart local v0    # "isForSale":Z
    :cond_1
    const v1, 0x7f0200da

    goto :goto_1
.end method

.method protected getDiscoverText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .local v0, "isForSale":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f08008c

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/ui/home/RESHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 15
    .end local v0    # "isForSale":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    .restart local v0    # "isForSale":Z
    :cond_1
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/ui/home/RESHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected getFooterColor(I)I
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .local v0, "isForSale":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0e0014

    :goto_1
    return v1

    .line 25
    .end local v0    # "isForSale":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    .restart local v0    # "isForSale":Z
    :cond_1
    const v1, 0x7f0e0072

    goto :goto_1
.end method

.method protected getHeaderText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .local v0, "isForSale":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f080046

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/ui/home/RESHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 20
    .end local v0    # "isForSale":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 21
    .restart local v0    # "isForSale":Z
    :cond_1
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/ui/home/RESHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected getMyPropertyImageResource(I)I
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    const v1, 0x7f0200aa

    const/4 v0, 0x1

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .local v0, "isForSale":Z
    :goto_0
    if-eqz v0, :cond_0

    :cond_0
    return v1

    .line 30
    .end local v0    # "isForSale":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPropertyTypeImageResource(I)I
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .local v0, "isForSale":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0200d7

    :goto_1
    return v1

    .line 35
    .end local v0    # "isForSale":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    .restart local v0    # "isForSale":Z
    :cond_1
    const v1, 0x7f0200a9

    goto :goto_1
.end method

.method protected getPropertyTypeText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "listingTypeId"    # I

    .prologue
    const/4 v0, 0x1

    .line 40
    if-ne p1, v0, :cond_0

    .line 41
    .local v0, "isForSale":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0800ff

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/ui/home/RESHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 40
    .end local v0    # "isForSale":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    .restart local v0    # "isForSale":Z
    :cond_1
    const v1, 0x7f0800af

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/ui/home/RESHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected retrieveListingDrivingDirections()Z
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lnz/co/realestate/android/ui/home/RESHomeFragment;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/ui/home/RESHomeFragment;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/ui/home/RESHomeFragment;->mInitialListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 46
    .local v0, "openHomeValid":Z
    :goto_0
    return v0

    .line 45
    .end local v0    # "openHomeValid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
