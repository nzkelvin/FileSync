.class public final Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESGetServerTimeJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob$JsonResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/Date;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, "/1/servertime/"

    .line 27
    .local v0, "requestPath":Ljava/lang/String;
    invoke-static {v0}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;->constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 33
    .local v1, "response":Lorg/apache/http/HttpResponse;
    if-nez v1, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "string":Ljava/lang/String;
    const-class v5, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob$JsonResponseBody;

    invoke-static {v5, v3}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob$JsonResponseBody;

    .line 42
    .local v2, "result":Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob$JsonResponseBody;
    iget-object v5, v2, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob$JsonResponseBody;->time:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lnz/co/realestate/android/lib/util/RESListingUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESGetServerTimeJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/Date;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 50
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error getting server time"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
