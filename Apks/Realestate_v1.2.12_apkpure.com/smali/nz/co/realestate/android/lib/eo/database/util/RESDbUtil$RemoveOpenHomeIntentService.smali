.class public Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$RemoveOpenHomeIntentService;
.super Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;
.source "RESDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveOpenHomeIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lnz/co/realestate/android/lib/eo/database/job/RESRemoveOpenHomeJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/database/job/RESRemoveOpenHomeJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 95
    return-void
.end method

.method public static startService(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openHomeId"    # I

    .prologue
    .line 97
    const-class v0, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$RemoveOpenHomeIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/database/job/RESRemoveOpenHomeJob;->buildBundle(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$RemoveOpenHomeIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method
