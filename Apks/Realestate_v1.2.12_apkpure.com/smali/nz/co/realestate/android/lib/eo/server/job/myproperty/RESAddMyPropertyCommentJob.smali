.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESAddMyPropertyCommentJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonResponseBody;,
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field private static final CHANNEL:Ljava/lang/String; = "channel"

.field private static final COMMENT:Ljava/lang/String; = "comment"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final LISTING_ID:Ljava/lang/String; = "listing_id"

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

.method public static buildBundle(IILjava/lang/String;Ljava/util/Date;)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;

    .prologue
    .line 37
    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 38
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v1, "comment"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "date"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 43
    return-object v0
.end method

.method public static buildBundle(IILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "channel"    # I

    .prologue
    .line 47
    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 48
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v1, "comment"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "date"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    const-string v1, "username"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "password"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "channel"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
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
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p2, :cond_1

    const-string v2, "channel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "channel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 65
    .local v9, "channel":I
    :goto_0
    if-eqz p2, :cond_2

    const-string v2, "username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "username":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_3

    const-string v2, "password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "password":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    const/4 v13, 0x1

    .line 69
    .local v13, "isAuthenticationProvided":Z
    :goto_3
    const-string v2, "listing_id"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 70
    .local v14, "listingId":I
    const-string v2, "category_id"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 71
    .local v8, "categoryId":I
    const-string v2, "comment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, "comment":Ljava/lang/String;
    const-string v2, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/Date;

    .line 73
    .local v12, "date":Ljava/util/Date;
    const/4 v2, -0x1

    if-eq v14, v2, :cond_0

    const/4 v2, -0x1

    if-eq v8, v2, :cond_0

    if-nez v10, :cond_5

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 64
    .end local v6    # "username":Ljava/lang/String;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "categoryId":I
    .end local v9    # "channel":I
    .end local v10    # "comment":Ljava/lang/String;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "isAuthenticationProvided":Z
    .end local v14    # "listingId":I
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v9

    goto :goto_0

    .line 65
    .restart local v9    # "channel":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 66
    .restart local v6    # "username":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 67
    .restart local v7    # "password":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 74
    .restart local v8    # "categoryId":I
    .restart local v10    # "comment":Ljava/lang/String;
    .restart local v12    # "date":Ljava/util/Date;
    .restart local v13    # "isAuthenticationProvided":Z
    .restart local v14    # "listingId":I
    :cond_5
    if-nez v12, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 77
    :cond_6
    new-instance v16, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$1;)V

    .line 78
    .local v16, "requestBodyObject":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;
    move-object/from16 v0, v16

    iput v9, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;->channel:I

    .line 79
    move-object/from16 v0, v16

    iput v8, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;->comment_category_id:I

    .line 80
    move-object/from16 v0, v16

    iput-object v10, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;->comment:Ljava/lang/String;

    .line 81
    invoke-static {v12}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonRequestBody;->date:Ljava/lang/String;

    .line 82
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "requestBody":Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v15, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "channel"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/1/my-property/listings/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/comments/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, "requestPath":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 90
    move-object/from16 v0, v17

    invoke-static {v0, v15, v4, v6, v7}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "url":Ljava/lang/String;
    :goto_4
    if-eqz v13, :cond_8

    const/4 v5, 0x0

    move-object/from16 v2, p0

    .line 95
    invoke-virtual/range {v2 .. v7}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 99
    .local v18, "response":Lorg/apache/http/HttpResponse;
    :goto_5
    if-nez v18, :cond_9

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 91
    .end local v3    # "url":Ljava/lang/String;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    move-object/from16 v0, v17

    invoke-static {v0, v15, v4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 96
    .restart local v3    # "url":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    goto :goto_5

    .line 102
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_9
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_a

    const/4 v11, 0x0

    .line 114
    :goto_6
    return-object v11

    .line 105
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v20

    .line 106
    .local v20, "string":Ljava/lang/String;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonResponseBody;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonResponseBody;

    .line 109
    .local v19, "result":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonResponseBody;
    new-instance v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-direct {v11}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;-><init>()V

    .line 110
    .local v11, "commentObj":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    move-object/from16 v0, v19

    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob$JsonResponseBody;->comment_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->id:Ljava/lang/Integer;

    .line 111
    iput v8, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    .line 112
    iput-object v10, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    .line 113
    invoke-static {v12}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->updated_at:Ljava/lang/String;

    goto :goto_6
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyCommentJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 118
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v1, "error adding my property comment"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
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

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method
