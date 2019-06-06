.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadAdImageIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;I)V

    .line 336
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 338
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->buildBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 339
    return-void
.end method
