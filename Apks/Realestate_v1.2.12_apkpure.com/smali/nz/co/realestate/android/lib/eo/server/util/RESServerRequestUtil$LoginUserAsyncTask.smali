.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$LoginUserAsyncTask;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginUserAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 477
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;-><init>()V

    invoke-static {p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;->buildBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 478
    return-void
.end method
