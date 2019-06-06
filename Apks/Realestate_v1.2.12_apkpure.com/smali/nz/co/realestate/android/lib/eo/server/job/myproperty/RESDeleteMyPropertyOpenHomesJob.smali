.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomesJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDeleteMyPropertyOpenHomesJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 33
    if-eqz p2, :cond_0

    const-string v9, "username"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "username":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string v9, "password"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "password":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v0, v6

    .line 38
    .local v0, "isAuthenticationProvided":Z
    :goto_2
    const-string v2, "/1/my-property/open-homes/"

    .line 39
    .local v2, "requestPath":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 40
    invoke-static {v2, v8, v8, v5, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomesJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "url":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p0, v4, v8, v5, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomesJob;->deleteAuthenticated(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 49
    .local v3, "response":Lorg/apache/http/HttpResponse;
    :goto_4
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xcc

    if-ne v8, v9, :cond_5

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .end local v0    # "isAuthenticationProvided":Z
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "requestPath":Ljava/lang/String;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "username":Ljava/lang/String;
    :cond_0
    move-object v5, v8

    .line 33
    goto :goto_0

    .restart local v5    # "username":Ljava/lang/String;
    :cond_1
    move-object v1, v8

    .line 34
    goto :goto_1

    .restart local v1    # "password":Ljava/lang/String;
    :cond_2
    move v0, v7

    .line 35
    goto :goto_2

    .line 41
    .restart local v0    # "isAuthenticationProvided":Z
    .restart local v2    # "requestPath":Ljava/lang/String;
    :cond_3
    invoke-static {v2, v8}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomesJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 46
    .restart local v4    # "url":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomesJob;->deleteAuthenticated(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    goto :goto_4

    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    move v6, v7

    .line 49
    goto :goto_5
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomesJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 53
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error deleting my property open homes"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
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

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomesJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
