.class public final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDownloadPropertyImageJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method private static getAcceptableImage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 165
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getPropertyImagesFolder()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v4, v5

    .line 209
    :goto_0
    return-object v4

    .line 168
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbImage()Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    move-result-object v4

    const-string v6, "image_url"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, p0, v0, v7}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object v3

    .line 172
    .local v3, "images":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_0

    .line 175
    :cond_2
    new-instance v4, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$1;

    invoke-direct {v4}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$1;-><init>()V

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 182
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_0

    .line 185
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    .line 186
    .local v2, "image":Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    new-instance v4, Ljava/io/File;

    iget v7, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->id:I

    invoke-static {v7}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->getFileLocationFromDatabaseId(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v1

    .line 187
    .local v1, "dimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    .line 188
    :cond_5
    iget-object v4, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->height:Ljava/lang/Integer;

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->height:Ljava/lang/Integer;

    goto :goto_1

    .line 192
    .end local v1    # "dimensions":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "image":Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    :cond_6
    new-instance v4, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$2;

    invoke-direct {v4}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$2;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    goto/16 :goto_0

    .line 202
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    .line 203
    .restart local v2    # "image":Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    if-eqz p1, :cond_9

    iget-object v6, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v6, v7, :cond_8

    .line 204
    :cond_9
    if-eqz p2, :cond_a

    iget-object v6, v2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->height:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v6, v7, :cond_8

    :cond_a
    move-object v4, v2

    .line 205
    goto/16 :goto_0

    .end local v2    # "image":Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    :cond_b
    move-object v4, v5

    .line 209
    goto/16 :goto_0
.end method

.method public static getFileLocationFromDatabaseId(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getPropertyImagesFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;
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
    .line 109
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v14

    invoke-virtual {v14}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 110
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v14, "item"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    .line 111
    .local v4, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;
    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->access$000(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "url":Ljava/lang/String;
    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->access$100(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "listingId":Ljava/lang/String;
    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->access$200(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/Integer;

    move-result-object v13

    .line 114
    .local v13, "width":Ljava/lang/Integer;
    invoke-static {v4}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->access$300(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/Integer;

    move-result-object v8

    .line 116
    .local v8, "height":Ljava/lang/Integer;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://images16.realestate.co.nz/listings/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".scale."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v13, :cond_0

    const-string v14, ""

    :goto_0
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v8, :cond_1

    const-string v14, ""

    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "URL":Ljava/lang/String;
    if-nez v13, :cond_2

    if-nez v8, :cond_2

    new-instance v14, Ljava/lang/Exception;

    const-string v15, "both width and height cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v2    # "URL":Ljava/lang/String;
    :cond_0
    move-object v14, v13

    .line 116
    goto :goto_0

    :cond_1
    move-object v14, v8

    goto :goto_1

    .line 126
    .restart local v2    # "URL":Ljava/lang/String;
    :cond_2
    invoke-static {v12, v13, v8}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->getAcceptableImage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    move-result-object v3

    .line 127
    .local v3, "acceptableImage":Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    if-eqz v3, :cond_3

    new-instance v14, Ljava/io/File;

    iget v15, v3, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->id:I

    invoke-static {v15}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->getFileLocationFromDatabaseId(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    :goto_2
    return-object v14

    .line 130
    :cond_3
    new-instance v7, Ljava/io/File;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getPropertyImagesFolder()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "jpg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v7, "file":Ljava/io/File;
    new-instance v6, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    invoke-direct {v6}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;-><init>()V

    .line 134
    .local v6, "downloader":Lnz/co/jsalibrary/android/download/JSAFileDownloader;
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->setUsePartFile(Z)V

    .line 135
    invoke-virtual {v6, v2, v7}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    .line 138
    .local v11, "success":Z
    if-nez v11, :cond_4

    new-instance v14, Ljava/lang/Exception;

    const-string v15, "error downloading property image file"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 141
    :cond_4
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getDbHelperBase()Lnz/co/realestate/android/lib/core/RESDbHelperBase;

    move-result-object v14

    invoke-virtual {v14}, Lnz/co/realestate/android/lib/core/RESDbHelperBase;->getDbImage()Lnz/co/realestate/android/lib/eo/database/RESDbImage;

    move-result-object v14

    new-instance v15, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-direct {v15, v12, v13, v8}, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v14, v15, v5}, Lnz/co/realestate/android/lib/eo/database/RESDbImage;->insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v14

    long-to-int v9, v14

    .line 144
    .local v9, "id":I
    const/4 v14, -0x1

    if-ne v9, v14, :cond_5

    new-instance v14, Ljava/lang/Exception;

    const-string v15, "error inserting property image into database"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 147
    :cond_5
    new-instance v14, Ljava/io/File;

    invoke-static {v9}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->getFileLocationFromDatabaseId(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    .line 150
    if-nez v11, :cond_6

    new-instance v14, Ljava/lang/Exception;

    const-string v15, "error renaming property image file"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 153
    :cond_6
    new-instance v14, Ljava/io/File;

    invoke-static {v9}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->getFileLocationFromDatabaseId(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
