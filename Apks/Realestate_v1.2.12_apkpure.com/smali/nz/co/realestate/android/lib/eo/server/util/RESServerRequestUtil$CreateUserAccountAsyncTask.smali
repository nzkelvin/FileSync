.class public Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$CreateUserAccountAsyncTask;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
.source "RESServerRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateUserAccountAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "firstName"    # Ljava/lang/String;
    .param p5, "lastName"    # Ljava/lang/String;

    .prologue
    .line 501
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;-><init>()V

    invoke-static {p2, p3, p4, p5}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;->buildBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 502
    return-void
.end method
