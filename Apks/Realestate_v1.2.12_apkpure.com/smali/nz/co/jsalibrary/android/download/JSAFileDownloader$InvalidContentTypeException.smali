.class public final Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;
.super Ljava/lang/Exception;
.source "JSAFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/download/JSAFileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidContentTypeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x9ab94efc561a3ddL


# instance fields
.field private mContentType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 686
    iput-object p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;->mContentType:Ljava/lang/String;

    .line 687
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 681
    iput-object p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;->mContentType:Ljava/lang/String;

    .line 682
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$InvalidContentTypeException;->mContentType:Ljava/lang/String;

    return-object v0
.end method
