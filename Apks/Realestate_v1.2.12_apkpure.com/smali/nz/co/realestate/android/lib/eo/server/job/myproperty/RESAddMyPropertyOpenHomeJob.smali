.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESAddMyPropertyOpenHomeJob.java"


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
.field private static final OPEN_HOME_ID:Ljava/lang/String; = "open_home_id"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(I)Landroid/os/Bundle;
    .locals 2
    .param p0, "openHomeId"    # I

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "open_home_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    return-object v0
.end method

.method public static buildBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "openHomeId"    # I
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "open_home_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p2, :cond_0

    const-string v0, "username"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "username":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string v0, "password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "password":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    .line 52
    .local v6, "isAuthenticationProvided":Z
    :goto_2
    const-string v0, "open_home_id"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 53
    .local v7, "openHomeId":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    .end local v4    # "username":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "isAuthenticationProvided":Z
    .end local v7    # "openHomeId":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 49
    .restart local v4    # "username":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 50
    .restart local v5    # "password":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 56
    .restart local v6    # "isAuthenticationProvided":Z
    .restart local v7    # "openHomeId":I
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v8, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/1/my-property/open-homes/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "requestPath":Ljava/lang/String;
    if-eqz v6, :cond_4

    const/4 v0, 0x0

    .line 59
    invoke-static {v9, v8, v0, v4, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "url":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 64
    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 68
    .local v10, "response":Lorg/apache/http/HttpResponse;
    :goto_4
    if-nez v10, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 59
    .end local v1    # "url":Ljava/lang/String;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    const/4 v0, 0x0

    .line 60
    invoke-static {v9, v8, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 64
    .restart local v1    # "url":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    goto :goto_4

    .line 71
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 74
    :goto_5
    return-object v0

    :cond_7
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 78
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    .line 79
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v2, "error adding my property open home"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyOpenHomeJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
