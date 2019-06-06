.class public Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;
.super Ljava/lang/Object;
.source "JSAFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/download/JSAFileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentRangeResponse"
.end annotation


# instance fields
.field public final mFromBytes:I

.field public final mLengthBytes:I

.field public final mToBytes:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "fromBytes"    # I
    .param p2, "toBytes"    # I
    .param p3, "lengthBytes"    # I

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput p1, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;->mFromBytes:I

    .line 705
    iput p2, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;->mToBytes:I

    .line 706
    iput p3, p0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;->mLengthBytes:I

    .line 707
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 710
    invoke-static {}, Lnz/co/jsalibrary/android/download/JSAFileDownloader;->access$300()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 711
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 712
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 713
    .local v0, "fromBytes":I
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 714
    .local v3, "toBytes":I
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 715
    .local v1, "lengthBytes":I
    new-instance v4, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;

    invoke-direct {v4, v0, v3, v1}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$ContentRangeResponse;-><init>(III)V

    return-object v4
.end method
