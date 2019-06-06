.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESGetMyPropertyOpenHomesJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob$JsonResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v0
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
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p2, :cond_0

    const-string v0, "username"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "username":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string v0, "password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "password":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    .line 48
    .local v6, "isAuthenticationProvided":Z
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "format"

    const-string v2, "full"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v8, "/1/my-property/open-homes/"

    .line 51
    .local v8, "requestPath":Ljava/lang/String;
    if-eqz v6, :cond_3

    const/4 v0, 0x0

    .line 52
    invoke-static {v8, v7, v0, v4, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "url":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 57
    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->getAuthenticated(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 61
    .local v9, "response":Lorg/apache/http/HttpResponse;
    :goto_4
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :goto_5
    return-object v0

    .line 43
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "username":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "isAuthenticationProvided":Z
    .end local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "requestPath":Ljava/lang/String;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 44
    .restart local v4    # "username":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 45
    .restart local v5    # "password":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 53
    .restart local v6    # "isAuthenticationProvided":Z
    .restart local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "requestPath":Ljava/lang/String;
    :cond_3
    invoke-static {v8, v7}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 57
    .restart local v1    # "url":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->getAuthenticated(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v9

    goto :goto_4

    .line 64
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    invoke-virtual {p0, v9}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "string":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    .line 70
    :cond_6
    const-class v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob$JsonResponseBody;

    invoke-static {v0, v11}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob$JsonResponseBody;

    .line 73
    .local v10, "result":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob$JsonResponseBody;
    if-eqz v10, :cond_7

    iget-object v0, v10, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob$JsonResponseBody;->open_homes:Ljava/util/List;

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :cond_8
    iget-object v0, v10, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob$JsonResponseBody;->open_homes:Ljava/util/List;

    goto :goto_5
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyOpenHomesJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Exception;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$ListedOpenHome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error getting my property open homes"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
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

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method
