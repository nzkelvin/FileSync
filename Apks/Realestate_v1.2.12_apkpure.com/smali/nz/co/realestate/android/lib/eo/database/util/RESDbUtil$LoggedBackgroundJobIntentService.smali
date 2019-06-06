.class Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$LoggedBackgroundJobIntentService;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
.source "RESDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggedBackgroundJobIntentService"
.end annotation


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;"
    const/4 v2, 0x1

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    :goto_0
    invoke-direct {p0, p1, v2, v0, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;IJ)V

    .line 42
    return-void

    .line 41
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;I)V
    .locals 2
    .param p2, "maxThreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;IJ)V

    .line 45
    return-void

    .line 44
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
