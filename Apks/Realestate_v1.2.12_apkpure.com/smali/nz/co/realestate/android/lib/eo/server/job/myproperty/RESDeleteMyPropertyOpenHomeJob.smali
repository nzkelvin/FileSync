.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDeleteMyPropertyOpenHomeJob.java"


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
    .line 16
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(I)Landroid/os/Bundle;
    .locals 2
    .param p0, "openHomeId"    # I

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "open_home_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    return-object v0
.end method

.method public static buildBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "openHomeId"    # I
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "open_home_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 45
    if-eqz p2, :cond_0

    const-string v10, "username"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "username":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string v10, "password"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "password":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    move v0, v7

    .line 49
    .local v0, "isAuthenticationProvided":Z
    :goto_2
    const-string v10, "open_home_id"

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "openHomeId":I
    if-ne v1, v11, :cond_3

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .end local v0    # "isAuthenticationProvided":Z
    .end local v1    # "openHomeId":I
    .end local v2    # "password":Ljava/lang/String;
    .end local v6    # "username":Ljava/lang/String;
    :cond_0
    move-object v6, v9

    .line 45
    goto :goto_0

    .restart local v6    # "username":Ljava/lang/String;
    :cond_1
    move-object v2, v9

    .line 46
    goto :goto_1

    .restart local v2    # "password":Ljava/lang/String;
    :cond_2
    move v0, v8

    .line 47
    goto :goto_2

    .line 53
    .restart local v0    # "isAuthenticationProvided":Z
    .restart local v1    # "openHomeId":I
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/1/my-property/open-homes/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "requestPath":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 55
    invoke-static {v3, v9, v9, v6, v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "url":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {p0, v5, v9, v6, v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->deleteAuthenticated(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 64
    .local v4, "response":Lorg/apache/http/HttpResponse;
    :goto_4
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xcc

    if-ne v9, v10, :cond_6

    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 56
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {v3, v9}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 61
    .restart local v5    # "url":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->deleteAuthenticated(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    goto :goto_4

    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    move v7, v8

    .line 64
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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

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
    .line 68
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error deleting my property open home"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
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

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyOpenHomeJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
