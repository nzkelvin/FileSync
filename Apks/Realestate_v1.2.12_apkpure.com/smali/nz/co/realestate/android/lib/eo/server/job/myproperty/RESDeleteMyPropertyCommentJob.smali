.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDeleteMyPropertyCommentJob.java"


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
.field private static final CHANNEL:Ljava/lang/String; = "channel"

.field private static final COMMENT_ID:Ljava/lang/String; = "comment_id"

.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"

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

.method public static buildBundle(II)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "commentId"    # I

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    return-object v0
.end method

.method public static buildBundle(IILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "commentId"    # I
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "channel"    # I

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "channel"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
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
    .line 54
    if-eqz p2, :cond_1

    const-string v10, "channel"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "channel"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "channel":I
    :goto_0
    if-eqz p2, :cond_2

    const-string v10, "username"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "username":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_3

    const-string v10, "password"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "password":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 59
    .local v2, "isAuthenticationProvided":Z
    :goto_3
    const-string v10, "listing_id"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 60
    .local v3, "listingId":I
    const-string v10, "comment_id"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, "commentId":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_0

    const/4 v10, -0x1

    if-ne v1, v10, :cond_5

    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 54
    .end local v0    # "channel":I
    .end local v1    # "commentId":I
    .end local v2    # "isAuthenticationProvided":Z
    .end local v3    # "listingId":I
    .end local v5    # "password":Ljava/lang/String;
    .end local v9    # "username":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v0

    goto :goto_0

    .line 55
    .restart local v0    # "channel":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 56
    .restart local v9    # "username":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 57
    .restart local v5    # "password":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 64
    .restart local v1    # "commentId":I
    .restart local v2    # "isAuthenticationProvided":Z
    .restart local v3    # "listingId":I
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "channel"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/1/my-property/listings/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/comments/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "requestPath":Ljava/lang/String;
    if-eqz v2, :cond_6

    const/4 v10, 0x0

    .line 69
    invoke-static {v6, v4, v10, v9, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "url":Ljava/lang/String;
    :goto_4
    if-eqz v2, :cond_7

    const/4 v10, 0x0

    .line 74
    invoke-virtual {p0, v8, v10, v9, v5}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->deleteAuthenticated(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 78
    .local v7, "response":Lorg/apache/http/HttpResponse;
    :goto_5
    if-nez v7, :cond_8

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    .line 69
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "url":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .line 70
    invoke-static {v6, v4, v10}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 75
    .restart local v8    # "url":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->deleteAuthenticated(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    goto :goto_5

    .line 81
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_8
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xcc

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    :goto_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    return-object v10

    :cond_9
    const/4 v10, 0x0

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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Boolean;

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
    .line 85
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error deleting my property comment"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
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

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESDeleteMyPropertyCommentJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
