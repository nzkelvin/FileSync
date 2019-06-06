.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESGetMyPropertyListingsJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob$MyPropertyResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/util/List",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "channel"

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

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "channel"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/util/List;
    .locals 13
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
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    if-eqz p2, :cond_0

    const-string v0, "channel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "channel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 46
    .local v6, "channel":I
    :goto_0
    if-eqz p2, :cond_1

    const-string v0, "username"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "username":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_2

    const-string v0, "password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "password":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    const/4 v7, 0x1

    .line 51
    .local v7, "isAuthenticationProvided":Z
    :goto_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v8, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "format"

    const-string v2, "full"

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "channel"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v9, "/1/my-property/listings/"

    .line 55
    .local v9, "requestPath":Ljava/lang/String;
    if-eqz v7, :cond_4

    const/4 v0, 0x0

    .line 56
    invoke-static {v9, v8, v0, v4, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "url":Ljava/lang/String;
    :goto_4
    if-eqz v7, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->getAuthenticated(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 65
    .local v10, "response":Lorg/apache/http/HttpResponse;
    :goto_5
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :goto_6
    return-object v0

    .line 45
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "username":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "channel":I
    .end local v7    # "isAuthenticationProvided":Z
    .end local v8    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "requestPath":Ljava/lang/String;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v6

    goto :goto_0

    .line 46
    .restart local v6    # "channel":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 47
    .restart local v4    # "username":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 48
    .restart local v5    # "password":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 57
    .restart local v7    # "isAuthenticationProvided":Z
    .restart local v8    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "requestPath":Ljava/lang/String;
    :cond_4
    invoke-static {v9, v8}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 61
    .restart local v1    # "url":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v1, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->getAuthenticated(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v10

    goto :goto_5

    .line 68
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    invoke-virtual {p0, v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, "string":Ljava/lang/String;
    const-class v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob$MyPropertyResult;

    invoke-static {v0, v12}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob$MyPropertyResult;

    .line 72
    .local v11, "result":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob$MyPropertyResult;
    if-eqz v11, :cond_7

    iget-object v0, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob$MyPropertyResult;->saved_listings:Ljava/util/List;

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_8
    iget-object v0, v11, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob$MyPropertyResult;->saved_listings:Ljava/util/List;

    goto :goto_6
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESGetMyPropertyListingsJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/util/List;

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
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error getting my propery listings"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
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

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method
