.class public final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDownloadAgentLogoJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;
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
.field private static final MAX_IMAGE_WIDTH:I = 0xfa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method private static getFileLocationFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 96
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbImage()Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    move-result-object v2

    const-string v3, "image_url"

    invoke-virtual {v2, v3, p0, v0, v6}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "images":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 98
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAgentLogoFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    iget v2, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->id:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;
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
    .line 58
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 59
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v10, "item"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;

    .line 60
    .local v2, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;
    invoke-static {v2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;->access$000(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob$Config;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob;->getFileLocationFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "fileUrl":Ljava/lang/String;
    if-eqz v5, :cond_0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 65
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-object v10

    .line 69
    :cond_0
    const/16 v10, 0xfa

    invoke-static/range {p1 .. p1}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 70
    .local v6, "imageWidth":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ".scale."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-double v12, v6

    const-wide v14, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "urlParameters":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 74
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbImage()Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    move-result-object v10

    new-instance v11, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v8, v12, v13}, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v10, v11, v3}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 75
    invoke-static {v8}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob;->getFileLocationFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    :cond_1
    new-instance v4, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    invoke-direct {v4}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;-><init>()V

    .line 80
    .local v4, "downloader":Lnz/co/jsalibrary/android/download/JSAFileDownloader;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->setUsePartFile(Z)V

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;)Z

    move-result v7

    .line 84
    .local v7, "success":Z
    if-nez v7, :cond_2

    new-instance v10, Ljava/lang/Exception;

    const-string v11, "error downloading agent logo"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 87
    :cond_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
