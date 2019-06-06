.class public Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;
.super Ljava/lang/Object;
.source "JSAUnitTestUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearApplicationData(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 381
    .local v0, "cache":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 388
    :cond_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "children":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 385
    .local v3, "s":Ljava/lang/String;
    const-string v6, "lib"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 384
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->deleteFileOrDirectory(Ljava/io/File;)Z

    goto :goto_1
.end method

.method public static copyAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 103
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static copyAssetToFile(Landroid/test/AndroidTestCase;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->copyAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 91
    return-void
.end method

.method public static copyAssetToPrivateFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldWriteableFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 180
    .local v0, "in":Ljava/io/InputStream;
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 181
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 182
    return-void
.end method

.method public static copyAssetToPrivateFile(Landroid/test/AndroidTestCase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->copyAssetToPrivateFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static copyAssetToTempFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, "file":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->copyAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 143
    return-object v0
.end method

.method public static copyAssetToTempFile(Landroid/test/AndroidTestCase;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->copyAssetToTempFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static copyRawAssetToFile(Landroid/content/Context;ILjava/io/File;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawId"    # I
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->getRawResource(Landroid/content/Context;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 208
    .local v1, "in":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 209
    .local v0, "bytes":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 211
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 212
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 214
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 218
    return-void

    .line 216
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
.end method

.method public static copyRawAssetToFile(Landroid/test/AndroidTestCase;ILjava/io/File;)V
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "rawId"    # I
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->copyRawAssetToFile(Landroid/content/Context;ILjava/io/File;)V

    .line 197
    return-void
.end method

.method public static copyRawAssetToTempFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawId"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 252
    .local v0, "file":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->copyRawAssetToFile(Landroid/content/Context;ILjava/io/File;)V

    .line 253
    return-object v0
.end method

.method public static copyRawAssetToTempFile(Landroid/test/AndroidTestCase;ILjava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "rawId"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->copyRawAssetToTempFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempFile(Landroid/test/AndroidTestCase;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 351
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :cond_0
    return-object v0

    .line 353
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder specified exists as file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder cannot be constructed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getTempFolder(Landroid/test/AndroidTestCase;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTempFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFolderFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTempFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempFolderFile(Landroid/test/AndroidTestCase;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTempFolderFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;
    .locals 5
    .param p0, "test"    # Landroid/test/AndroidTestCase;

    .prologue
    .line 40
    :try_start_0
    const-class v2, Landroid/test/ServiceTestCase;

    const-string v3, "getTestContext"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    .local v1, "getTestContext":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "getTestContext":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readAssetAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 70
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 73
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :goto_0
    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static readAssetAsString(Landroid/test/AndroidTestCase;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "test"    # Landroid/test/AndroidTestCase;
    .param p1, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->getTestContext(Landroid/test/AndroidTestCase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAUnitTestUtil;->readAssetAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
