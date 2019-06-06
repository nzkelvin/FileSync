.class public Lnz/co/jsalibrary/android/download/JSAFileDownloader;
.super Ljava/lang/Object;
.source "JSAFileDownloader.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;,
        Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;,
        Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;,
        Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_RANGE_RESPONSE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field public static final EVENT_DOWNLOAD_COMPLETE:Ljava/lang/String; = "download_complete"

.field public static final EVENT_DOWNLOAD_ERROR:Ljava/lang/String; = "download_error"

.field public static final EVENT_DOWNLOAD_PROGRESS_UPDATE:Ljava/lang/String; = "download_progress_update"

.field public static final EVENT_DOWNLOAD_START:Ljava/lang/String; = "download_start"

.field public static final EVENT_DOWNLOAD_STOPPED:Ljava/lang/String; = "download_stopped"

.field private static final HTTP_REQUEST_HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_REQUEST_HEADER_RANGE:Ljava/lang/String; = "Range"

.field private static final HTTP_RESPONSE_CODE_OK:I = 0xc8

.field private static final HTTP_RESPONSE_CODE_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_RESPONSE_HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"


# instance fields
.field private mBufferSizeBytes:I

.field private mConnectionTimeout:J

.field private mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

.field private final mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventProgressGranularity:D

.field private mPermittedContentTypes:[Ljava/lang/String;

.field private mReadTimeout:J

.field private mStop:Z

.field private mUsePartFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "bytes (\\d+)-(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->CONTENT_RANGE_RESPONSE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x7530

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mConnectionTimeout:J

    .line 69
    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    .line 74
    sget-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->NOT_STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    iput-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 77
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventProgressGranularity:D

    .line 78
    const/16 v0, 0x400

    iput v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mBufferSizeBytes:I

    .line 133
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 134
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "readTimeout"    # J

    .prologue
    const-wide/16 v0, 0x7530

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mConnectionTimeout:J

    .line 69
    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    .line 74
    sget-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->NOT_STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    iput-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 77
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventProgressGranularity:D

    .line 78
    const/16 v0, 0x400

    iput v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mBufferSizeBytes:I

    .line 128
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 129
    iput-wide p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    .line 130
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "connectionTimeout"    # J
    .param p3, "readTimeout"    # J

    .prologue
    const-wide/16 v0, 0x7530

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mConnectionTimeout:J

    .line 69
    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    .line 74
    sget-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->NOT_STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    iput-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 77
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventProgressGranularity:D

    .line 78
    const/16 v0, 0x400

    iput v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mBufferSizeBytes:I

    .line 122
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 123
    iput-wide p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mConnectionTimeout:J

    .line 124
    iput-wide p3, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    .line 125
    return-void
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->CONTENT_RANGE_RESPONSE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private appendResponseHeadersToOutputStream(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 516
    .local v4, "responseCode":I
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "responseMessage":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 519
    .local v3, "headers":[Lorg/apache/http/Header;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v3, v6

    .line 520
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 521
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_0
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 523
    .local v0, "buffer":[B
    array-length v6, v0

    invoke-virtual {p2, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 524
    return-void
.end method

.method private contentTypePermitted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    iget-object v3, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mPermittedContentTypes:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v1

    .line 560
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mPermittedContentTypes:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 561
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 562
    goto :goto_0
.end method

.method private static writeBytesToDisk(Ljava/io/File;[BII)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 624
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_0
    if-gez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :cond_1
    if-gez p3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    .line 641
    :cond_3
    :goto_0
    return v1

    .line 632
    :cond_4
    int-to-long v2, p2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 635
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 637
    .local v0, "stream":Ljava/io/RandomAccessFile;
    int-to-long v2, p2

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 638
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    const/4 v1, 0x1

    .line 641
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v1
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outputStream"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;Ljava/util/List;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outputStream"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
        }
    .end annotation

    .prologue
    .line 298
    .local p4, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;Ljava/util/List;Z)Z
    .locals 37
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outputStream"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "resumePartiallyDownloaded"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
        }
    .end annotation

    .prologue
    .line 321
    .local p4, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url and to properties must be non-null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_1
    const/16 v20, 0x0

    .line 324
    .local v20, "fos":Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .line 325
    .local v19, "fileOutputStream":Ljava/io/OutputStream;
    const/16 v21, 0x0

    .line 327
    .local v21, "inputStream":Ljava/io/InputStream;
    sget-object v4, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 332
    :try_start_0
    new-instance v27, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v27 .. v27}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 333
    .local v27, "params":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mConnectionTimeout:J

    long-to-int v4, v6

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 334
    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    long-to-int v4, v6

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 335
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 338
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mUsePartFile:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->generateTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v17

    .line 341
    .local v17, "destinationFile":Ljava/io/File;
    :goto_0
    if-nez p5, :cond_a

    const-wide/16 v8, 0x0

    .local v8, "initialByte":J
    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    .line 342
    invoke-virtual/range {v4 .. v9}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->initialiseConnection(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;J)Lorg/apache/http/HttpResponse;

    move-result-object v32

    .line 345
    .local v32, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    .line 348
    .local v33, "responseCode":I
    const/16 v4, 0xc8

    move/from16 v0, v33

    if-ne v0, v4, :cond_c

    const/16 v22, 0x1

    .line 349
    .local v22, "isResponseCodeOK":Z
    :goto_2
    const/16 v4, 0xce

    move/from16 v0, v33

    if-ne v0, v4, :cond_d

    const/16 v23, 0x1

    .line 350
    .local v23, "isResponseCodePartial":Z
    :goto_3
    if-nez v22, :cond_e

    if-nez v23, :cond_e

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    const-string v6, "invalid response"

    move/from16 v0, v33

    invoke-direct {v4, v0, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "initialByte":J
    .end local v17    # "destinationFile":Ljava/io/File;
    .end local v22    # "isResponseCodeOK":Z
    .end local v23    # "isResponseCodePartial":Z
    .end local v27    # "params":Lorg/apache/http/params/HttpParams;
    .end local v32    # "response":Lorg/apache/http/HttpResponse;
    .end local v33    # "responseCode":I
    :catch_0
    move-exception v18

    .line 456
    .local v18, "exception":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STOPPED_ON_EXCEPTION:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v6, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;

    const-string v7, "download_error"

    const/16 v34, 0x0

    move-object/from16 v0, v34

    invoke-direct {v6, v7, v0}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V

    invoke-virtual {v4, v6}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 458
    move-object/from16 v0, v18

    instance-of v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;

    if-eqz v4, :cond_33

    check-cast v18, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;

    .end local v18    # "exception":Ljava/lang/Exception;
    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :catchall_0
    move-exception v4

    .line 464
    if-eqz v21, :cond_2

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16

    .line 469
    :cond_2
    :goto_4
    if-eqz v19, :cond_3

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_17

    .line 474
    :cond_3
    :goto_5
    if-eqz v19, :cond_4

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_18

    .line 479
    :cond_4
    :goto_6
    if-eqz v20, :cond_5

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_19

    .line 484
    :cond_5
    :goto_7
    if-eqz v20, :cond_6

    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1a

    .line 489
    :cond_6
    :goto_8
    if-eqz p3, :cond_7

    :try_start_7
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1b

    .line 494
    :cond_7
    :goto_9
    if-eqz p3, :cond_8

    :try_start_8
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1c

    .line 497
    :cond_8
    :goto_a
    throw v4

    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v27    # "params":Lorg/apache/http/params/HttpParams;
    :cond_9
    move-object/from16 v17, p2

    .line 338
    goto :goto_0

    .line 341
    .restart local v17    # "destinationFile":Ljava/io/File;
    :cond_a
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v8

    goto/16 :goto_1

    :cond_b
    const-wide/16 v8, 0x0

    goto/16 :goto_1

    .line 348
    .restart local v8    # "initialByte":J
    .restart local v32    # "response":Lorg/apache/http/HttpResponse;
    .restart local v33    # "responseCode":I
    :cond_c
    const/16 v22, 0x0

    goto :goto_2

    .line 349
    .restart local v22    # "isResponseCodeOK":Z
    :cond_d
    const/16 v23, 0x0

    goto :goto_3

    .line 354
    .restart local v23    # "isResponseCodePartial":Z
    :cond_e
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v15

    .line 355
    .local v15, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v15, :cond_10

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 356
    .local v14, "contentType":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mPermittedContentTypes:[Ljava/lang/String;

    if-eqz v4, :cond_11

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->contentTypePermitted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_f
    new-instance v4, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;

    const/4 v6, 0x0

    invoke-direct {v4, v14, v6}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;-><init>(Ljava/lang/String;Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V

    throw v4

    .line 355
    .end local v14    # "contentType":Ljava/lang/String;
    :cond_10
    const/4 v14, 0x0

    goto :goto_b

    .line 360
    .restart local v14    # "contentType":Ljava/lang/String;
    :cond_11
    if-eqz p3, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->appendResponseHeadersToOutputStream(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V

    .line 363
    :cond_12
    const-string v4, "Content-Range"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 364
    .local v11, "contentRangeHeader":Lorg/apache/http/Header;
    if-eqz v11, :cond_13

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;->parse(Ljava/lang/String;)Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;

    move-result-object v30

    .line 367
    .local v30, "range":Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;
    :goto_c
    if-eqz v23, :cond_14

    if-nez v30, :cond_14

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "range invalid"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    .end local v30    # "range":Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;
    :cond_13
    const/16 v30, 0x0

    goto :goto_c

    .line 370
    .restart local v30    # "range":Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;
    :cond_14
    if-eqz v30, :cond_15

    move-object/from16 v0, v30

    iget v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;->mLengthBytes:I

    int-to-long v12, v4

    .line 373
    .local v12, "contentLength":J
    :goto_d
    cmp-long v4, v8, v12

    if-lez v4, :cond_16

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "destination file length: "

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    .end local v12    # "contentLength":J
    :cond_15
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    goto :goto_d

    .line 376
    .restart local v12    # "contentLength":J
    :cond_16
    if-eqz v30, :cond_18

    move-object/from16 v0, v30

    iget v0, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;->mFromBytes:I

    move/from16 v26, v0

    .line 379
    .local v26, "offset":I
    :goto_e
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v6, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;

    const-string v7, "download_start"

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, v36

    invoke-direct {v6, v7, v0, v1, v2}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;DLnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V

    invoke-virtual {v4, v6}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 384
    move-object/from16 v0, p0

    iget v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mBufferSizeBytes:I

    new-array v10, v4, [B

    .line 385
    .local v10, "bytes":[B
    move-object/from16 v0, p0

    iget-wide v0, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventProgressGranularity:D

    move-wide/from16 v24, v0

    .line 386
    .local v24, "nextProgressEvent":D
    :cond_17
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mStop:Z

    if-nez v4, :cond_1a

    .line 391
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .line 396
    .local v16, "count":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_19

    move/from16 v0, v26

    int-to-long v6, v0

    cmp-long v4, v6, v12

    if-eqz v4, :cond_19

    .line 397
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v6, "input stream incomplete"

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    .end local v10    # "bytes":[B
    .end local v16    # "count":I
    .end local v24    # "nextProgressEvent":D
    .end local v26    # "offset":I
    :cond_18
    const/16 v26, 0x0

    goto :goto_e

    .line 402
    .restart local v10    # "bytes":[B
    .restart local v16    # "count":I
    .restart local v24    # "nextProgressEvent":D
    .restart local v26    # "offset":I
    :cond_19
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_22

    .line 434
    .end local v16    # "count":I
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mStop:Z

    if-eqz v4, :cond_25

    .line 435
    sget-object v4, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STOPPED_ON_REQUEST:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 436
    move/from16 v0, v26

    int-to-double v6, v0

    long-to-double v0, v12

    move-wide/from16 v34, v0

    div-double v28, v6, v34

    .line 437
    .local v28, "progress":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v6, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;

    const-string v7, "download_stopped"

    const/16 v34, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v34

    invoke-direct {v6, v7, v0, v1, v2}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;DLnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V

    invoke-virtual {v4, v6}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 438
    const/4 v4, 0x0

    .line 464
    if-eqz v21, :cond_1b

    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 469
    :cond_1b
    :goto_10
    if-eqz v19, :cond_1c

    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 474
    :cond_1c
    :goto_11
    if-eqz v19, :cond_1d

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 479
    :cond_1d
    :goto_12
    if-eqz v20, :cond_1e

    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 484
    :cond_1e
    :goto_13
    if-eqz v20, :cond_1f

    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 489
    :cond_1f
    :goto_14
    if-eqz p3, :cond_20

    :try_start_f
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 494
    :cond_20
    :goto_15
    if-eqz p3, :cond_21

    :try_start_10
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 497
    .end local v28    # "progress":D
    :cond_21
    :goto_16
    return v4

    .line 409
    .restart local v16    # "count":I
    :cond_22
    :try_start_11
    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-static {v0, v10, v1, v2}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->writeBytesToDisk(Ljava/io/File;[BII)Z

    move-result v4

    if-nez v4, :cond_23

    .line 410
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failure to write bytes to disk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    :cond_23
    if-eqz p3, :cond_24

    .line 417
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v10, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V

    .line 424
    :cond_24
    add-int v26, v26, v16

    .line 427
    move/from16 v0, v26

    int-to-double v6, v0

    long-to-double v0, v12

    move-wide/from16 v34, v0

    div-double v28, v6, v34

    .line 428
    .restart local v28    # "progress":D
    cmpg-double v4, v28, v24

    if-ltz v4, :cond_17

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v6, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;

    const-string v7, "download_progress_update"

    const/16 v34, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v34

    invoke-direct {v6, v7, v0, v1, v2}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;DLnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V

    invoke-virtual {v4, v6}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 430
    move-object/from16 v0, p0

    iget-wide v6, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventProgressGranularity:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventProgressGranularity:D

    move-wide/from16 v34, v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    div-double v34, v28, v34

    move-wide/from16 v0, v34

    double-to-int v4, v0

    add-int/lit8 v4, v4, 0x1

    int-to-double v0, v4

    move-wide/from16 v34, v0

    mul-double v24, v6, v34

    .line 431
    goto/16 :goto_f

    .line 465
    .end local v16    # "count":I
    :catch_1
    move-exception v18

    .line 466
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_10

    .line 470
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v18

    .line 471
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_11

    .line 475
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_3
    move-exception v18

    .line 476
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_12

    .line 480
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_4
    move-exception v18

    .line 481
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_13

    .line 485
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_5
    move-exception v18

    .line 486
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_14

    .line 490
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_6
    move-exception v18

    .line 491
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_15

    .line 495
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_7
    move-exception v18

    .line 496
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_16

    .line 442
    .end local v18    # "exception":Ljava/lang/Exception;
    .end local v28    # "progress":D
    :cond_25
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mUsePartFile:Z

    if-eqz v4, :cond_2c

    if-eqz v17, :cond_2c

    .line 443
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v31

    .line 444
    .local v31, "renamed":Z
    if-nez v31, :cond_2c

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v6, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;

    const-string v7, "download_error"

    const/16 v34, 0x0

    move-object/from16 v0, v34

    invoke-direct {v6, v7, v0}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V

    invoke-virtual {v4, v6}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 446
    const/4 v4, 0x0

    .line 464
    if-eqz v21, :cond_26

    :try_start_13
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    .line 469
    :cond_26
    :goto_17
    if-eqz v19, :cond_27

    :try_start_14
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 474
    :cond_27
    :goto_18
    if-eqz v19, :cond_28

    :try_start_15
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 479
    :cond_28
    :goto_19
    if-eqz v20, :cond_29

    :try_start_16
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    .line 484
    :cond_29
    :goto_1a
    if-eqz v20, :cond_2a

    :try_start_17
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    .line 489
    :cond_2a
    :goto_1b
    if-eqz p3, :cond_2b

    :try_start_18
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    .line 494
    :cond_2b
    :goto_1c
    if-eqz p3, :cond_21

    :try_start_19
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    goto/16 :goto_16

    .line 495
    :catch_8
    move-exception v18

    .line 496
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_16

    .line 465
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_9
    move-exception v18

    .line 466
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_17

    .line 470
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_a
    move-exception v18

    .line 471
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_18

    .line 475
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_b
    move-exception v18

    .line 476
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_19

    .line 480
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_c
    move-exception v18

    .line 481
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_1a

    .line 485
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_d
    move-exception v18

    .line 486
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_1b

    .line 490
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_e
    move-exception v18

    .line 491
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_1c

    .line 451
    .end local v18    # "exception":Ljava/lang/Exception;
    .end local v31    # "renamed":Z
    :cond_2c
    :try_start_1a
    sget-object v4, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->FINISHED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v6, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;

    const-string v7, "download_complete"

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const/16 v36, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, v36

    invoke-direct {v6, v7, v0, v1, v2}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;DLnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V

    invoke-virtual {v4, v6}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 453
    const/4 v4, 0x1

    .line 464
    if-eqz v21, :cond_2d

    :try_start_1b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    .line 469
    :cond_2d
    :goto_1d
    if-eqz v19, :cond_2e

    :try_start_1c
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11

    .line 474
    :cond_2e
    :goto_1e
    if-eqz v19, :cond_2f

    :try_start_1d
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_12

    .line 479
    :cond_2f
    :goto_1f
    if-eqz v20, :cond_30

    :try_start_1e
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_13

    .line 484
    :cond_30
    :goto_20
    if-eqz v20, :cond_31

    :try_start_1f
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_14

    .line 489
    :cond_31
    :goto_21
    if-eqz p3, :cond_32

    :try_start_20
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15

    .line 494
    :cond_32
    :goto_22
    if-eqz p3, :cond_21

    :try_start_21
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    goto/16 :goto_16

    .line 495
    :catch_f
    move-exception v18

    .line 496
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_16

    .line 465
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_10
    move-exception v18

    .line 466
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_1d

    .line 470
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_11
    move-exception v18

    .line 471
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_1e

    .line 475
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_12
    move-exception v18

    .line 476
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_1f

    .line 480
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_13
    move-exception v18

    .line 481
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_20

    .line 485
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_14
    move-exception v18

    .line 486
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_21

    .line 490
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_15
    move-exception v18

    .line 491
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_22

    .line 459
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "initialByte":J
    .end local v10    # "bytes":[B
    .end local v11    # "contentRangeHeader":Lorg/apache/http/Header;
    .end local v12    # "contentLength":J
    .end local v14    # "contentType":Ljava/lang/String;
    .end local v15    # "contentTypeHeader":Lorg/apache/http/Header;
    .end local v17    # "destinationFile":Ljava/io/File;
    .end local v22    # "isResponseCodeOK":Z
    .end local v23    # "isResponseCodePartial":Z
    .end local v24    # "nextProgressEvent":D
    .end local v26    # "offset":I
    .end local v27    # "params":Lorg/apache/http/params/HttpParams;
    .end local v30    # "range":Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;
    .end local v32    # "response":Lorg/apache/http/HttpResponse;
    .end local v33    # "responseCode":I
    :cond_33
    :try_start_22
    move-object/from16 v0, v18

    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_34

    check-cast v18, Ljava/io/IOException;

    .end local v18    # "exception":Ljava/lang/Exception;
    throw v18

    .line 460
    .restart local v18    # "exception":Ljava/lang/Exception;
    :cond_34
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v4, v6, :cond_35

    new-instance v4, Ljava/io/IOException;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    :goto_23
    throw v4

    :cond_35
    new-instance v4, Ljava/io/IOException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto :goto_23

    .line 465
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_16
    move-exception v18

    .line 466
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 470
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_17
    move-exception v18

    .line 471
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_5

    .line 475
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_18
    move-exception v18

    .line 476
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing file output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_6

    .line 480
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_19
    move-exception v18

    .line 481
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_7

    .line 485
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_1a
    move-exception v18

    .line 486
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing input stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_8

    .line 490
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_1b
    move-exception v18

    .line 491
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error flushing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_9

    .line 495
    .end local v18    # "exception":Ljava/lang/Exception;
    :catch_1c
    move-exception v18

    .line 496
    .restart local v18    # "exception":Ljava/lang/Exception;
    const-string v6, "error closing output stream"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v34, 0x0

    const-class v35, Lnz/co/jsalibrary/android/download/JSAFileDownloader;

    aput-object v35, v7, v34

    move-object/from16 v0, v18

    invoke-static {v6, v0, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto/16 :goto_a
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outputStream"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/List;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outputStream"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    .local p4, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->download(Ljava/lang/String;Ljava/io/File;Ljava/io/OutputStream;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public generateTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 537
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->generateTempFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected generateTempFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mCurrentState:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    return-object v0
.end method

.method protected initialiseConnection(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/util/List;J)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "rangeFromBytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;J)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 595
    .local v1, "header":Lorg/apache/http/Header;
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 598
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_1
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method

.method protected openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .locals 1
    .param p2, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    return v0
.end method

.method public setBufferSizeBytes(I)V
    .locals 0
    .param p1, "bufferSizeBytes"    # I

    .prologue
    .line 166
    iput p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mBufferSizeBytes:I

    .line 167
    return-void
.end method

.method public setConnectionTimeout(J)V
    .locals 1
    .param p1, "connectionTimeout"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mConnectionTimeout:J

    .line 147
    return-void
.end method

.method public setEventProgressGranularity(D)V
    .locals 1
    .param p1, "eventProgressGranularity"    # D

    .prologue
    .line 154
    iput-wide p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventProgressGranularity:D

    .line 155
    return-void
.end method

.method public setPermittedContentTypes([Ljava/lang/String;)V
    .locals 0
    .param p1, "permittedContentTypes"    # [Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mPermittedContentTypes:[Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setReadTimeout(J)V
    .locals 1
    .param p1, "readTimeout"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    .line 151
    return-void
.end method

.method public setTimeoutDelay(J)V
    .locals 1
    .param p1, "timeoutDelay"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    iput-wide p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mReadTimeout:J

    .line 143
    return-void
.end method

.method public setUsePartFile(Z)V
    .locals 0
    .param p1, "usePartFile"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mUsePartFile:Z

    .line 163
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mStop:Z

    .line 183
    return-void
.end method

.method public unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->mEventListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method
