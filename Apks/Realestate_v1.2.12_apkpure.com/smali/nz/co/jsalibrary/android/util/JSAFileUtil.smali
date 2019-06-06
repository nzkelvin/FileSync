.class public Lnz/co/jsalibrary/android/util/JSAFileUtil;
.super Ljava/lang/Object;
.source "JSAFileUtil.java"


# static fields
.field public static final BYTES_PER_GB:J = 0x40000000L

.field public static final BYTES_PER_KB:J = 0x400L

.field public static final BYTES_PER_MB:J = 0x100000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs buildFolderStructure([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "paths"    # [Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 126
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 127
    .local v2, "success":Z
    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs buildFolderStructureNoException([Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "paths"    # [Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static varargs buildLocalUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "paths"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs buildPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "paths"    # [Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 87
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "sourceChannel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 244
    .local v0, "destinationChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 248
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 249
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 250
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 256
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 258
    :cond_2
    return-void

    .line 251
    :catch_0
    move-exception v6

    .line 252
    .local v6, "exception":Ljava/io/IOException;
    :try_start_1
    const-string v2, "error copying file"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lnz/co/jsalibrary/android/util/JSAFileUtil;

    aput-object v5, v3, v4

    invoke-static {v2, v6, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 253
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v6    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 256
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    throw v2
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "sourceStream"    # Ljava/io/InputStream;
    .param p1, "destinationStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 285
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_3

    .line 286
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 289
    .local v1, "exception":Ljava/io/IOException;
    :try_start_1
    const-string v3, "error copying file"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lnz/co/jsalibrary/android/util/JSAFileUtil;

    aput-object v6, v4, v5

    invoke-static {v3, v1, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 290
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    .end local v1    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 293
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 294
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_2
    throw v3

    .line 292
    .restart local v0    # "buffer":[B
    .restart local v2    # "length":I
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 293
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 294
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 296
    :cond_6
    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "sourceStream"    # Ljava/io/InputStream;
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 265
    .local v1, "destinationStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v1    # "destinationStream":Ljava/io/FileOutputStream;
    .local v2, "destinationStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 267
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_3

    .line 268
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 270
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 271
    .end local v2    # "destinationStream":Ljava/io/FileOutputStream;
    .restart local v1    # "destinationStream":Ljava/io/FileOutputStream;
    .local v3, "exception":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v5, "error copying file"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lnz/co/jsalibrary/android/util/JSAFileUtil;

    aput-object v8, v6, v7

    invoke-static {v5, v3, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 272
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    .end local v3    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 275
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 276
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v5

    .line 274
    .end local v1    # "destinationStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "destinationStream":Ljava/io/FileOutputStream;
    .restart local v4    # "length":I
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 275
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 276
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 278
    :cond_6
    return-void

    .line 274
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "destinationStream":Ljava/io/FileOutputStream;
    .restart local v1    # "destinationStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 270
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "sourceFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "destinationFile":Ljava/io/File;
    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 237
    return-void
.end method

.method public static copySplitAssetFile(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFileNames"    # [Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 389
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 390
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 391
    .local v0, "am":Landroid/content/res/AssetManager;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 395
    .local v3, "destinationStream":Ljava/io/FileOutputStream;
    :try_start_0
    array-length v7, p1

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v1, p1, v6

    .line 396
    .local v1, "assetFileName":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v0, v1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 398
    .local v5, "sourceStream":Ljava/io/InputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v2, v8, [B

    .line 399
    .local v2, "buffer":[B
    :goto_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_2

    .line 400
    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 403
    .end local v2    # "buffer":[B
    .end local v4    # "length":I
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    .end local v1    # "assetFileName":Ljava/lang/String;
    .end local v5    # "sourceStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v6

    .line 403
    .restart local v1    # "assetFileName":Ljava/lang/String;
    .restart local v2    # "buffer":[B
    .restart local v4    # "length":I
    .restart local v5    # "sourceStream":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "assetFileName":Ljava/lang/String;
    .end local v2    # "buffer":[B
    .end local v4    # "length":I
    .end local v5    # "sourceStream":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 409
    return-void
.end method

.method public static copySplitAssetFile(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFileNames"    # [Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copySplitAssetFile(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;)V

    .line 374
    return-void
.end method

.method public static varargs deleteFile([Ljava/lang/String;)Z
    .locals 3
    .param p0, "paths"    # [Ljava/lang/String;

    .prologue
    .line 449
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method public static deleteFileOrDirectory(Ljava/io/File;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    const/4 v1, 0x1

    .line 467
    .local v1, "success":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 468
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->deleteFileOrDirectory(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    move v1, v2

    .line 467
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 468
    goto :goto_1

    .line 469
    .end local v0    # "child":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public static emptyDirectory(Ljava/io/File;)Z
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 478
    const/4 v1, 0x1

    .line 480
    .local v1, "success":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 481
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 482
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->deleteFileOrDirectory(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 481
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 482
    goto :goto_1

    .line 483
    .end local v0    # "child":Ljava/io/File;
    :cond_3
    return v1
.end method

.method public static equalsCanonical(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 3
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 898
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 901
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 903
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 902
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static varargs exists([Ljava/lang/String;)Z
    .locals 2
    .param p0, "paths"    # [Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static getByteCount(Ljava/io/File;)J
    .locals 2
    .param p0, "folder"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 652
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getByteCountOnFolderStorageVolume(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getByteCountOnFolderStorageVolume(Ljava/io/File;)J
    .locals 6
    .param p0, "folder"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 657
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 658
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "stat":Landroid/os/StatFs;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 660
    :goto_0
    return-wide v2

    :cond_2
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public static getCommonRoot(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "f1"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "f2"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1040
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFileLevels(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 1041
    .local v0, "levels1":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFileLevels(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 1042
    .local v1, "levels2":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->getLongestCommonPrefix(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1043
    .local v2, "prefix":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 1044
    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    goto :goto_0
.end method

.method public static getDirectorySize(Ljava/io/File;)J
    .locals 8
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 690
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 691
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v2, 0x0

    .line 700
    :cond_1
    return-wide v2

    .line 692
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file is not a directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_3
    const-wide/16 v2, 0x0

    .line 695
    .local v2, "result":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 696
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 695
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1
.end method

.method public static getExternalStorageBytes()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getPrimaryExternalStorageBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLevelCount(Ljava/io/File;)I
    .locals 2
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "count":I
    move-object v1, p0

    .local v1, "current":Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    .line 1122
    add-int/lit8 v0, v0, 0x1

    .line 1121
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 1123
    :cond_0
    return v0
.end method

.method public static getFileLevels(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1079
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v0, p0

    .local v0, "current":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_0

    .line 1081
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1082
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1083
    return-object v1
.end method

.method public static getFreeByteCount(Ljava/io/File;)J
    .locals 2
    .param p0, "folder"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 673
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreeByteCountOnFolderStorageVolume(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeByteCountOnFolderStorageVolume(Ljava/io/File;)J
    .locals 6
    .param p0, "folder"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 678
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 679
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "stat":Landroid/os/StatFs;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 681
    :goto_0
    return-wide v2

    :cond_2
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public static getFreeExternalStorageBytes()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 616
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreePrimaryExternalStorageBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeExternalStorageGigabytes()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreePrimaryExternalStorageGigabytes()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeExternalStorageKilobytes()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreePrimaryExternalStorageKilobytes()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeExternalStorageMegabytes()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreePrimaryExternalStorageMegabytes()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeInternalStorageBytes()J
    .locals 2

    .prologue
    .line 639
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreeByteCountOnFolderStorageVolume(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreePrimaryExternalStorageBytes()J
    .locals 2

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreeByteCountOnFolderStorageVolume(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreePrimaryExternalStorageGigabytes()D
    .locals 4

    .prologue
    .line 607
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreeExternalStorageBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getFreePrimaryExternalStorageKilobytes()D
    .locals 4

    .prologue
    .line 579
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreeExternalStorageBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getFreePrimaryExternalStorageMegabytes()D
    .locals 4

    .prologue
    .line 593
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getFreeExternalStorageBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getInternalStorageBytes()J
    .locals 2

    .prologue
    .line 630
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getByteCountOnFolderStorageVolume(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "indexDigitCount"    # I
    .param p3, "extension"    # Ljava/lang/String;
    .param p4, "startIndex"    # I

    .prologue
    .line 817
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 818
    :cond_1
    const/4 v1, 0x1

    if-ge p2, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "index digit count invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;

    invoke-direct {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 825
    .local v0, "generator":Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction<Ljava/lang/String;>;"
    invoke-static {p0, v0, p4}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getNextNonExistentFileInSequence(Ljava/io/File;Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;I)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 774
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getNextNonExistentFileInSequence(Ljava/io/File;Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;I)Ljava/io/File;
    .locals 4
    .param p0, "folder"    # Ljava/io/File;
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "filenameGenerator":Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 851
    :cond_1
    if-gez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "start index invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    :cond_2
    move v1, p2

    .line 854
    .local v1, "i":I
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;->generate(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 855
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 853
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPrimaryExternalStorageBytes()J
    .locals 2

    .prologue
    .line 561
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getByteCountOnFolderStorageVolume(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVolumeFileDirectories(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v0, "volumeDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 989
    new-instance v1, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filterInPlace(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)V

    .line 990
    return-object v0
.end method

.method public static humanReadableByteLength(J)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 877
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.2f GB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 880
    :goto_0
    return-object v0

    .line 878
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.1f MB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 879
    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.1f KB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 880
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAncestor(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "ancestor"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1164
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return v1

    .line 1165
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 1166
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 1167
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .local v0, "current":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 1167
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method public static isAncestorAcrossMountPoints(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "ancestor"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1208
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return v1

    .line 1209
    :cond_1
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->isAncestor(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1210
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {p0, v3}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->isOnSameMountPoint(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1212
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 1213
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 1214
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .local v0, "current":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_0

    .line 1215
    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->isSameFileAcrossMountPoints(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method public static isOnSameMountPoint(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p0, "folder1"    # Ljava/io/File;
    .param p1, "folder2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 928
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folders invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 931
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file is not folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 932
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file is not folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 935
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder cannot be constructed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 936
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder cannot be constructed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 939
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder cannot be accessed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 940
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder cannot be accessed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 943
    :cond_9
    const-string v3, ".testfile"

    invoke-static {p0, v3, v5, v6, v4}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 944
    .local v2, "source":Ljava/io/File;
    const-string v3, ".testfile"

    invoke-static {p1, v3, v5, v6, v4}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 945
    .local v0, "destination":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder cannot be written to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 946
    :cond_a
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 950
    .local v1, "moved":Z
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 952
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 955
    return v1
.end method

.method public static isSameFileAcrossMountPoints(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "file1"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file2"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1307
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return v0

    .line 1308
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->isSameFolderAcrossMountPoints(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 1309
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->isSameFolderAcrossMountPoints(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSameFolderAcrossMountPoints(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p0, "folder1"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "folder2"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1247
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folders invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1248
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1275
    :cond_2
    :goto_0
    return v4

    .line 1249
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1252
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file is not folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1253
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file is not folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1256
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder cannot be constructed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1257
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder cannot be constructed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1260
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder cannot be accessed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1261
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder cannot be accessed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1264
    :cond_b
    const-string v4, ".testfile"

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {p0, v4, v6, v7, v5}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 1265
    .local v2, "source":Ljava/io/File;
    const/16 v4, 0x100

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->randomHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, "sourceContents":Ljava/lang/String;
    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error writing test file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1270
    :cond_c
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1271
    .local v0, "destination":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_d

    .line 1275
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move v4, v5

    goto/16 :goto_0

    .line 1272
    :cond_d
    :try_start_1
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, "destinationContents":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 1275
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .end local v0    # "destination":Ljava/io/File;
    .end local v1    # "destinationContents":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v4
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 337
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source or destination invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    :cond_2
    :goto_0
    return v0

    .line 344
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 353
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static moveFileNoException(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;

    .prologue
    .line 314
    :try_start_0
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 316
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "exception":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v4, 0x3e8

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 186
    .local v1, "fileData":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 188
    .local v3, "reader":Ljava/io/BufferedReader;
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    .line 189
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 190
    .local v2, "numRead":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    .end local v0    # "buf":[C
    .end local v2    # "numRead":I
    :catchall_0
    move-exception v4

    .line 194
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_1
    throw v4

    .line 194
    .restart local v0    # "buf":[C
    .restart local v2    # "numRead":I
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 195
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v0    # "buf":[C
    .end local v2    # "numRead":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 175
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileNoException(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 151
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 154
    :cond_0
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "exception":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 158
    .end local v0    # "exception":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, "exception":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readFileNoException(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->readFileNoException(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .param p0, "sourceStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 214
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    .line 217
    .local v2, "exception":Ljava/io/IOException;
    :try_start_1
    const-string v3, "error reading file stream"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lnz/co/jsalibrary/android/util/JSAFileUtil;

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 218
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v2    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1    # "count":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public static resolveWorkingDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 435
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    const-string v3, "\\\\"

    .line 436
    .local v3, "separator":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 437
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 438
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "dir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p0, v0

    goto :goto_0

    .line 435
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "separator":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_1

    .line 440
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "separator":Ljava/lang/String;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 537
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 538
    :cond_1
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 540
    .local v0, "out":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 544
    return-void

    .line 542
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    throw v1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 527
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 528
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public static writeFileNoException(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 506
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 509
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    const/4 v1, 0x1

    .line 513
    :goto_0
    return v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "exception":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error writing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 513
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeFileNoException(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 496
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 497
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->writeFileNoException(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)V
    .locals 12
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    const/4 v11, 0x0

    .line 711
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 713
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 714
    .local v3, "dest":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 715
    .local v7, "origin":Ljava/io/BufferedInputStream;
    const/16 v0, 0x800

    .line 717
    .local v0, "BUFFER":I
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 719
    .local v8, "out":Ljava/util/zip/ZipOutputStream;
    new-array v2, v0, [B

    .line 721
    .local v2, "data":[B
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 722
    .local v6, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 723
    .local v5, "fi":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    .end local v7    # "origin":Ljava/io/BufferedInputStream;
    invoke-direct {v7, v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 724
    .restart local v7    # "origin":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 725
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 727
    :goto_1
    invoke-virtual {v7, v2, v11, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    .line 728
    invoke-virtual {v8, v2, v11, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 730
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 733
    .end local v1    # "count":I
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 734
    return-void
.end method
