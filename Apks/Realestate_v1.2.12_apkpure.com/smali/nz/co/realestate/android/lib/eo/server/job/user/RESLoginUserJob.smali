.class public final Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESLoginUserJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;,
        Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final ERROR_CODE_INVALID_USERNAME_OR_PASSWORD:I = 0x1

.field public static final ERROR_CODE_UNKNOWN:I = 0x3

.field public static final ERROR_CODE_USERNAME_DOESNT_EXIST:I = 0x2

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 40
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "channel"    # I

    .prologue
    .line 48
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 49
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
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
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 62
    :cond_1
    const-string v1, "username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "username":Ljava/lang/String;
    const-string v1, "password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "password":Ljava/lang/String;
    const-string v1, "channel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "channel"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 65
    .local v8, "channel":I
    :goto_0
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    const/4 v1, -0x1

    if-ne v8, v1, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 64
    .end local v8    # "channel":I
    :cond_3
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v8

    goto :goto_0

    .line 68
    .restart local v8    # "channel":I
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v12, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "format"

    const-string v3, "full"

    invoke-interface {v12, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "channel"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v13, "/1/my-property/listings/"

    .line 72
    .local v13, "requestPath":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v13, v12, v1, v5, v6}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;->getAuthenticated(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 78
    .local v14, "response":Lorg/apache/http/HttpResponse;
    if-nez v14, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 81
    :cond_5
    new-instance v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;

    invoke-direct {v15}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;-><init>()V

    .line 82
    .local v15, "result":Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 83
    .local v16, "statusCode":I
    const/16 v1, 0xc8

    move/from16 v0, v16

    if-eq v0, v1, :cond_6

    const/16 v1, 0xcc

    move/from16 v0, v16

    if-ne v0, v1, :cond_a

    :cond_6
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mSuccess:Z

    .line 86
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v11

    .line 87
    .local v11, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    iget-boolean v1, v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mSuccess:Z

    if-eqz v1, :cond_7

    if-eqz v11, :cond_7

    invoke-virtual {v11, v5, v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setLoggedInUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_7
    :try_start_0
    iget-boolean v1, v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mSuccess:Z

    if-eqz v1, :cond_8

    invoke-static/range {p1 .. p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceOnUiThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :cond_8
    :goto_2
    :try_start_1
    iget-boolean v1, v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mSuccess:Z

    if-eqz v1, :cond_9

    invoke-static/range {p1 .. p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;->startServiceOnUiThread(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :cond_9
    :goto_3
    iget-boolean v1, v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mSuccess:Z

    if-eqz v1, :cond_b

    .line 112
    :goto_4
    return-object v15

    .line 83
    .end local v11    # "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    .line 102
    .restart local v11    # "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v17

    .line 105
    .local v17, "string":Ljava/lang/String;
    :try_start_2
    const-class v1, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;

    .line 106
    .local v7, "body":Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;
    iget-object v1, v7, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "message":Ljava/lang/String;
    const-string v1, "invalid username"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 108
    :goto_5
    iput v1, v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mErrorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 110
    .end local v7    # "body":Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;
    .end local v10    # "message":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 111
    .local v9, "exception":Ljava/lang/Exception;
    const/4 v1, 0x3

    iput v1, v15, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;->mErrorCode:I

    goto :goto_4

    .line 107
    .end local v9    # "exception":Ljava/lang/Exception;
    .restart local v7    # "body":Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;
    .restart local v10    # "message":Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v1, "unable to find"

    .line 108
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    goto :goto_5

    :cond_d
    const/4 v1, 0x3

    goto :goto_5

    .line 96
    .end local v7    # "body":Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$JsonResponse;
    .end local v10    # "message":Ljava/lang/String;
    .end local v17    # "string":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_3

    .line 92
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESLoginUserJob$Result;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 121
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    .line 122
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v2, "error logging in user"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
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

    .line 124
    const/4 v1, 0x0

    return-object v1
.end method
