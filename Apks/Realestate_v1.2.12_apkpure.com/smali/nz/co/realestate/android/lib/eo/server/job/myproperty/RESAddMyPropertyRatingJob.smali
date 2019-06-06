.class public final Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESAddMyPropertyRatingJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonResponseBody;,
        Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonRequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;",
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
    .line 20
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(III)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "categoryId"    # I
    .param p2, "rating"    # I

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v1, "rating"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
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
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listing_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v1, "rating"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "channel"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
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
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
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

    .line 59
    .local v9, "channel":I
    :goto_0
    if-eqz p2, :cond_2

    const-string v2, "username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "username":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_3

    const-string v2, "password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "password":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    const/4 v10, 0x1

    .line 63
    .local v10, "isAuthenticationProvided":Z
    :goto_3
    const-string v2, "listing_id"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 64
    .local v11, "listingId":I
    const-string v2, "category_id"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 65
    .local v8, "categoryId":I
    const-string v2, "rating"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 66
    .local v13, "rating":I
    const/4 v2, -0x1

    if-eq v11, v2, :cond_0

    const/4 v2, -0x1

    if-eq v8, v2, :cond_0

    const/4 v2, -0x1

    if-ne v13, v2, :cond_5

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 58
    .end local v6    # "username":Ljava/lang/String;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "categoryId":I
    .end local v9    # "channel":I
    .end local v10    # "isAuthenticationProvided":Z
    .end local v11    # "listingId":I
    .end local v13    # "rating":I
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getMyPropertyChannel()I

    move-result v9

    goto :goto_0

    .line 59
    .restart local v9    # "channel":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 60
    .restart local v6    # "username":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 61
    .restart local v7    # "password":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 69
    .restart local v8    # "categoryId":I
    .restart local v10    # "isAuthenticationProvided":Z
    .restart local v11    # "listingId":I
    .restart local v13    # "rating":I
    :cond_5
    new-instance v15, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonRequestBody;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonRequestBody;-><init>(Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$1;)V

    .line 70
    .local v15, "requestBodyObject":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonRequestBody;
    iput v9, v15, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonRequestBody;->channel:I

    .line 71
    iput v8, v15, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonRequestBody;->rating_category_id:I

    .line 72
    iput v13, v15, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonRequestBody;->rating:I

    .line 73
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "requestBody":Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v12, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "channel"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/1/my-property/listings/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/ratings/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 80
    .local v16, "requestPath":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 81
    move-object/from16 v0, v16

    invoke-static {v0, v12, v4, v6, v7}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "url":Ljava/lang/String;
    :goto_4
    if-eqz v10, :cond_7

    const/4 v5, 0x0

    move-object/from16 v2, p0

    .line 86
    invoke-virtual/range {v2 .. v7}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 90
    .local v17, "response":Lorg/apache/http/HttpResponse;
    :goto_5
    if-nez v17, :cond_8

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 82
    .end local v3    # "url":Ljava/lang/String;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    move-object/from16 v0, v16

    invoke-static {v0, v12, v4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 87
    .restart local v3    # "url":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    goto :goto_5

    .line 93
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    :cond_8
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_9

    const/4 v14, 0x0

    .line 105
    :goto_6
    return-object v14

    .line 96
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v19

    .line 97
    .local v19, "string":Ljava/lang/String;
    const-class v2, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonResponseBody;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonResponseBody;

    .line 100
    .local v18, "result":Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonResponseBody;
    new-instance v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-direct {v14}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;-><init>()V

    .line 101
    .local v14, "ratingObj":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    move-object/from16 v0, v18

    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob$JsonResponseBody;->rating_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->id:Ljava/lang/Integer;

    .line 102
    iput v8, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    .line 103
    iput v13, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    .line 104
    const/4 v2, 0x0

    iput-object v2, v14, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->updated_at:Ljava/lang/String;

    goto :goto_6
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/myproperty/RESAddMyPropertyRatingJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 109
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    .line 110
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    const-string v2, "error adding my property rating"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
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

    .line 112
    const/4 v1, 0x0

    return-object v1
.end method
