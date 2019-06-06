.class public final Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever;
.super Ljava/lang/Object;
.source "RESImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/util/RESImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyImageRetriever"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever$OnImageReadyExtendedListener;,
        Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever$OnImageReadyListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPropertyImageUrl(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Ljava/lang/String;
    .locals 1
    .param p0, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever;->getPropertyImageUrl(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyImageUrl(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;I)Ljava/lang/String;
    .locals 3
    .param p0, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v1

    .line 47
    :cond_1
    instance-of v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v2, :cond_2

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->image_md5:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 48
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 49
    .local v0, "full":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isImageValid(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Z
    .locals 1
    .param p0, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever;->isImageValid(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;I)Z

    move-result v0

    return v0
.end method

.method public static isImageValid(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;I)Z
    .locals 4
    .param p0, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-nez p0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v2

    .line 28
    :cond_1
    instance-of v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-nez v3, :cond_3

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->image_md5:Ljava/lang/String;

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move-object v0, p0

    .line 29
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 30
    .local v0, "full":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    iget-object v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images_md5:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 32
    goto :goto_0
.end method
