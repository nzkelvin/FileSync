.class public final Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;
.super Lnz/co/jsalibrary/android/event/events/JSAEvent;
.source "JSAFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/download/JSAFileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadEvent"
.end annotation


# instance fields
.field private mProgress:D

.field private mType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-direct {p0}, Lnz/co/jsalibrary/android/event/events/JSAEvent;-><init>()V

    .line 659
    iput-object p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;->mType:Ljava/lang/String;

    .line 660
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "progress"    # D

    .prologue
    .line 653
    invoke-direct {p0}, Lnz/co/jsalibrary/android/event/events/JSAEvent;-><init>()V

    .line 654
    iput-object p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;->mType:Ljava/lang/String;

    .line 655
    iput-wide p2, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;->mProgress:D

    .line 656
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;DLnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # D
    .param p4, "x2"    # Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;

    .prologue
    .line 649
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;D)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/download/JSAFileDownloader$1;

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getProgress()D
    .locals 2

    .prologue
    .line 667
    iget-wide v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;->mProgress:D

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$DownloadEvent;->mType:Ljava/lang/String;

    return-object v0
.end method
