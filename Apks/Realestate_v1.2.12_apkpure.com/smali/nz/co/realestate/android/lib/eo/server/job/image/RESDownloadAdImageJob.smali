.class public final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDownloadAdImageJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_REREQUEST_DELAY:J = 0x493e0L

.field private static sectionRequestFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static sectionRequestTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestTimes:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestFiles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static final buildBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "section"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "item"

    new-instance v2, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    return-object v0
.end method

.method private static getAdRequestSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->ADHUB_SIZES:[[Ljava/lang/Integer;

    .line 142
    .local v1, "sizes":[[Ljava/lang/Integer;
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v2

    .line 143
    .local v2, "width":I
    aget-object v3, v1, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :goto_0
    return-object v3

    .line 144
    :cond_0
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 145
    aget-object v3, v1, v0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 144
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 146
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    const-string v21, "item"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;

    .line 76
    .local v4, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;
    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;->access$000(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob$Config;)Ljava/lang/String;

    move-result-object v15

    .line 77
    .local v15, "section":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 80
    .local v18, "time":J
    sget-object v21, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestTimes:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    sget-object v21, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestTimes:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v22, v18, v22

    const-wide/32 v24, 0x493e0

    cmp-long v21, v22, v24

    if-gez v21, :cond_0

    sget-object v21, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestFiles:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/io/File;

    move-object/from16 v8, v21

    .line 133
    :goto_0
    return-object v8

    .line 83
    :cond_0
    const-string v21, "%08d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide v26, 0x4197d78400000000L    # 1.0E8

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 84
    .local v12, "randomOne":Ljava/lang/String;
    const-string v21, "%08d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide v26, 0x4197d78400000000L    # 1.0E8

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, "randomTwo":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdhubFormatUrl()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x1

    invoke-static/range {p1 .. p1}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->getAdRequestSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    aput-object v12, v22, v23

    const/16 v23, 0x3

    aput-object v13, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 88
    .local v20, "url":Ljava/lang/String;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 91
    .local v14, "response":Lorg/apache/http/HttpResponse;
    if-nez v14, :cond_1

    new-instance v21, Ljava/lang/Exception;

    const-string v22, "ad server response invalid"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 94
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v16

    .line 95
    .local v16, "string":Ljava/lang/String;
    const-string v21, "<a.*href=\"(\\S+)\""

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 96
    .local v10, "m1":Ljava/util/regex/Matcher;
    const-string v21, "<img.*src=\"(\\S+)\""

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 97
    .local v11, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "forwardingUrl":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "imageUrl":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_2

    if-nez v9, :cond_5

    :cond_2
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ad server response invalid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 97
    .end local v6    # "forwardingUrl":Ljava/lang/String;
    .end local v9    # "imageUrl":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 98
    .restart local v6    # "forwardingUrl":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 104
    .restart local v9    # "imageUrl":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    .line 107
    .local v7, "hash":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAdImagesFolder()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "jpg"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v8, "image":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 109
    sget-object v21, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestTimes:Ljava/util/Map;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v21, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestFiles:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addAdImage(Ljava/lang/String;Ljava/io/File;)V

    .line 112
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addAdImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_6
    new-instance v5, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;-><init>()V

    .line 118
    .local v5, "downloader":Lnz/co/jsalibrary/android/download/JSAFileDownloader;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->setUsePartFile(Z)V

    .line 119
    invoke-virtual {v5, v9, v8}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;)Z

    move-result v17

    .line 122
    .local v17, "success":Z
    if-nez v17, :cond_7

    new-instance v21, Ljava/lang/Exception;

    const-string v22, "error downloading ad image file"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 125
    :cond_7
    sget-object v21, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestTimes:Ljava/util/Map;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v21, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->sectionRequestFiles:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addAdImage(Ljava/lang/String;Ljava/io/File;)V

    .line 130
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v6}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addAdImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
