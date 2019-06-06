.class public final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDownloadWestpacContactImageJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;
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
    .line 21
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 55
    const-string v6, "item"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;

    .line 56
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;
    invoke-static {v0}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;->access$000(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob$Config;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    .line 62
    .local v2, "hash":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getContactImagesFolder()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "image":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    :cond_0
    return-object v3

    .line 66
    :cond_1
    new-instance v1, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    invoke-direct {v1}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;-><init>()V

    .line 67
    .local v1, "downloader":Lnz/co/jsalibrary/android/download/JSAFileDownloader;
    invoke-virtual {v1, v9}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->setUsePartFile(Z)V

    .line 68
    invoke-virtual {v1, v5, v3}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    .line 71
    .local v4, "success":Z
    if-nez v4, :cond_0

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "error downloading westpac contact image file"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
