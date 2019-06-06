.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendPricingMethodsRequestIntentService;
.super Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendPricingMethodsRequestIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;-><init>()V

    invoke-direct {p0, v0}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoggedBackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V

    .line 120
    return-void
.end method

.method public static startService(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resultRequired"    # Z

    .prologue
    .line 122
    const-class v0, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendPricingMethodsRequestIntentService;

    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/job/RESPricingMethodJob;->buildBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SendPricingMethodsRequestIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method
