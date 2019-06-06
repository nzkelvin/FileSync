.class public Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;
.super Ljava/lang/Object;
.source "JSASimpleMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field protected mClient:Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;

.field protected mCompletedPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCompletedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnection:Landroid/media/MediaScannerConnection;

.field protected mContext:Landroid/content/Context;

.field protected mMimeTypes:[Ljava/lang/String;

.field protected mPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v1, [Ljava/io/File;

    aput-object p3, v0, v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/io/File;[Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v1, [Ljava/lang/String;

    aput-object p3, v0, v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "files"    # [Ljava/io/File;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/io/File;[Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/io/File;[Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "files"    # [Ljava/io/File;
    .param p4, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$1;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$1;-><init>()V

    const-class v1, Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->mapToArray([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p4}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "paths"    # [Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "paths"    # [Ljava/lang/String;
    .param p4, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mContext:Landroid/content/Context;

    .line 72
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mClient:Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;

    .line 73
    iput-object p3, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mPaths:[Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mMimeTypes:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static addToMediaStore(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->scan()V

    .line 131
    return-void
.end method

.method public static addToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->scan()V

    .line 147
    return-void
.end method

.method public static addToMediaStore(Landroid/content/Context;[Ljava/io/File;[Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/io/File;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->scan()V

    .line 139
    return-void
.end method

.method public static addToMediaStore(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->scan()V

    .line 155
    return-void
.end method

.method public static removeFromMediaStore(Landroid/content/Context;Ljava/util/Collection;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "files":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/io/File;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 176
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$2;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$2;-><init>()V

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->mapToArray(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->removePathsFromMediaStore(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs removeFromMediaStore(Landroid/content/Context;[Ljava/io/File;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 199
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 200
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$3;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$3;-><init>()V

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->mapToArray([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->removePathsFromMediaStore(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static removePathsFromMediaStore(Landroid/content/Context;Ljava/util/Collection;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 224
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_2
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->removePathsFromMediaStore(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs removePathsFromMediaStore(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 244
    :cond_1
    array-length v3, p1

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 250
    :goto_0
    return v3

    .line 246
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "?"

    const-string v4, ", "

    array-length v5, p1

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "placeholders":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "where":Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mPaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 93
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mMimeTypes:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 94
    .local v1, "mimeType":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mPaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mMimeTypes:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mMimeTypes:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mMimeTypes:[Ljava/lang/String;

    aget-object v1, v2, v0

    goto :goto_1

    .line 96
    :cond_2
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 99
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mClient:Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mClient:Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;

    invoke-interface {v2, p1, p2}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedPaths:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedPaths:Ljava/util/List;

    .line 102
    :cond_2
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedUris:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedUris:Ljava/util/List;

    .line 103
    :cond_3
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedPaths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedUris:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mPaths:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 106
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedPaths:Ljava/util/List;

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 107
    .local v0, "paths":[Ljava/lang/String;
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mCompletedUris:Ljava/util/List;

    const-class v3, Landroid/net/Uri;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    .line 108
    .local v1, "uris":[Landroid/net/Uri;
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mClient:Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;

    invoke-interface {v2, v0, v1}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;->onScansCompleted([Ljava/lang/String;[Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public scan()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the simple media scanner can only be scanned once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    .line 84
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 85
    return-void
.end method
