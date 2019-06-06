.class public final Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESCreateUserAccountJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;,
        Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final ERROR_CODE_EMAIL_ADDRESS_INVALID:I = 0x2

.field public static final ERROR_CODE_UNKNOWN:I = 0x3

.field public static final ERROR_CODE_USER_ALREADY_EXISTS:I = 0x1

.field private static final FIRST_NAME:Ljava/lang/String; = "first_name"

.field private static final LAST_NAME:Ljava/lang/String; = "last_name"

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

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 42
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "first_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "last_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

.method public static buildBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "channel"    # I

    .prologue
    .line 52
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 53
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "first_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "last_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "channel"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 68
    :cond_1
    const-string v17, "username"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 69
    .local v16, "username":Ljava/lang/String;
    const-string v17, "password"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "password":Ljava/lang/String;
    const-string v17, "first_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "firstName":Ljava/lang/String;
    const-string v17, "last_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "lastName":Ljava/lang/String;
    const-string v17, "channel"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "channel"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 73
    .local v3, "channel":I
    :goto_0
    if-eqz v16, :cond_2

    if-eqz v8, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_4

    :cond_2
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 72
    .end local v3    # "channel":I
    :cond_3
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v3

    goto :goto_0

    .line 76
    .restart local v3    # "channel":I
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 77
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_6

    :cond_5
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 85
    :cond_6
    new-instance v9, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;-><init>(Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$1;)V

    .line 86
    .local v9, "request":Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;
    move-object/from16 v0, v16

    iput-object v0, v9, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;->email:Ljava/lang/String;

    .line 87
    iput-object v8, v9, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;->password:Ljava/lang/String;

    .line 88
    iput-object v4, v9, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;->first_name:Ljava/lang/String;

    .line 89
    iput-object v5, v9, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;->last_name:Ljava/lang/String;

    .line 90
    iput v3, v9, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$JsonRequest;->subscriptions:I

    .line 91
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "requestString":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "/1/accounts/register/"

    .line 96
    .local v10, "requestPath":Ljava/lang/String;
    invoke-static {v10, v7, v11}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;->constructUrlHttp(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 99
    .local v15, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;->postJsonEncoded(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 102
    .local v12, "response":Lorg/apache/http/HttpResponse;
    if-nez v12, :cond_7

    new-instance v17, Ljava/lang/IllegalStateException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalStateException;-><init>()V

    throw v17

    .line 105
    :cond_7
    new-instance v13, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;

    invoke-direct {v13}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;-><init>()V

    .line 106
    .local v13, "result":Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 107
    .local v14, "statusCode":I
    const/16 v17, 0xc9

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    iput-boolean v0, v13, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;->mSuccess:Z

    .line 108
    iget-boolean v0, v13, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;->mSuccess:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x199

    move/from16 v0, v17

    if-ne v14, v0, :cond_a

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    iput v0, v13, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;->mErrorCode:I

    .line 112
    :cond_8
    iget-boolean v0, v13, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;->mSuccess:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 125
    :goto_3
    return-object v13

    .line 107
    :cond_9
    const/16 v17, 0x0

    goto :goto_1

    .line 108
    :cond_a
    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v14, v0, :cond_b

    const/16 v17, 0x2

    goto :goto_2

    :cond_b
    const/16 v17, 0x3

    goto :goto_2

    .line 115
    :cond_c
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v6

    .line 116
    .local v6, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    if-eqz v6, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->setLoggedInUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_d
    :try_start_0
    invoke-static/range {p1 .. p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyListingsIntentService;->startServiceOnUiThread(Landroid/content/Context;)V

    .line 121
    invoke-static/range {p1 .. p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$SynchroniseMyPropertyOpenHomesIntentService;->startServiceOnUiThread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 122
    :catch_0
    move-exception v17

    goto :goto_3
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/job/user/RESCreateUserAccountJob$Result;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 133
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    .line 134
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v2, "error creating user account"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
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

    .line 136
    const/4 v1, 0x0

    return-object v1
.end method
