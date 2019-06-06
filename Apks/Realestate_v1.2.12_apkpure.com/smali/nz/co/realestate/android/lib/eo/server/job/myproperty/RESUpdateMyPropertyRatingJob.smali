.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESUpdateMyPropertyRatingJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob$JsonRequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field private static final CHANNEL:Ljava/lang/String; = "channel"

.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final RATING:Ljava/lang/String; = "rating"

.field private static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(III)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "rating"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v1, "rating"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    return-object v0
.end method

.method public static buildBundle(IIILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "rating"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "channel"    # I

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v1, "rating"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "channel"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p2, :cond_1

    const-string v1, "channel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "channel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 58
    .local v8, "channel":I
    :goto_0
    if-eqz p2, :cond_2

    const-string v1, "username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "username":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_3

    const-string v1, "password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "password":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    const/4 v9, 0x1

    .line 62
    .local v9, "isAuthenticationProvided":Z
    :goto_3
    const-string v1, "listing_id"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 63
    .local v10, "listingId":I
    const-string v1, "category_id"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 64
    .local v7, "categoryId":I
    const-string v1, "rating"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 65
    .local v12, "rating":I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_0

    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    const/4 v1, -0x1

    if-ne v12, v1, :cond_5

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 57
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "categoryId":I
    .end local v8    # "channel":I
    .end local v9    # "isAuthenticationProvided":Z
    .end local v10    # "listingId":I
    .end local v12    # "rating":I
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v8

    goto :goto_0

    .line 58
    .restart local v8    # "channel":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 59
    .restart local v5    # "username":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 60
    .restart local v6    # "password":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 68
    .restart local v7    # "categoryId":I
    .restart local v9    # "isAuthenticationProvided":Z
    .restart local v10    # "listingId":I
    .restart local v12    # "rating":I
    :cond_5
    new-instance v13, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob$JsonRequestBody;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob$JsonRequestBody;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob$1;)V

    .line 69
    .local v13, "requestBodyObject":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob$JsonRequestBody;
    iput v8, v13, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob$JsonRequestBody;->channel:I

    .line 70
    iput v12, v13, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob$JsonRequestBody;->rating:I

    .line 71
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "requestBody":Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v11, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "channel"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/1/my-property/listings/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/ratings/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, "requestPath":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 79
    invoke-static {v14, v11, v3, v5, v6}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "url":Ljava/lang/String;
    :goto_4
    if-eqz v9, :cond_7

    const/4 v4, 0x0

    move-object/from16 v1, p0

    .line 84
    invoke-virtual/range {v1 .. v6}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;->putStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 88
    .local v15, "response":Lorg/apache/http/HttpResponse;
    :goto_5
    if-nez v15, :cond_8

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 80
    .end local v2    # "url":Ljava/lang/String;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    invoke-static {v14, v11, v3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 85
    .restart local v2    # "url":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;->putStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    goto :goto_5

    .line 91
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    :cond_8
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v4, 0xcc

    if-ne v1, v4, :cond_9

    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_9
    const/4 v1, 0x0

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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

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
    .line 95
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error updating my property rating"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
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

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESUpdateMyPropertyRatingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
