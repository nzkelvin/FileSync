.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMyPropertyDetailsIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 432
    return-void
.end method

.method public static startServiceAddComment(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->buildBundleAddComment(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 436
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 438
    return-void
.end method

.method public static startServiceAddPhoto(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "photo"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-static {p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->buildBundleAddPhoto(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 454
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 456
    return-void
.end method

.method public static startServiceDeleteComment(Landroid/content/Context;III)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I

    .prologue
    .line 447
    invoke-static {p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->buildBundleDeleteComment(III)Landroid/os/Bundle;

    move-result-object v0

    .line 448
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 450
    return-void
.end method

.method public static startServiceDeletePhoto(Landroid/content/Context;III)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I

    .prologue
    .line 462
    invoke-static {p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->buildBundleDeletePhoto(III)Landroid/os/Bundle;

    move-result-object v0

    .line 463
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 464
    return-void
.end method

.method public static startServiceSetRating(Landroid/content/Context;III)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "rating"    # I

    .prologue
    .line 466
    invoke-static {p1, p2, p3}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->buildBundleSetRating(III)Landroid/os/Bundle;

    move-result-object v0

    .line 467
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 468
    return-void
.end method

.method public static startServiceUpdateComment(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I
    .param p4, "comment"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-static {p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->buildBundleUpdateComment(IIILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 442
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 444
    return-void
.end method

.method public static startServiceUpdatePhoto(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # I
    .param p2, "categoryId"    # I
    .param p3, "index"    # I
    .param p4, "photo"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-static {p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/database/job/RESUpdateMyPropertyDetailsJob;->buildBundleUpdatePhoto(IIILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 459
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 460
    return-void
.end method
