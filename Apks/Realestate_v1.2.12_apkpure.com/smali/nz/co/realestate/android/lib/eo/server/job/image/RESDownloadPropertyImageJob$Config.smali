.class public final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;
.super Ljava/lang/Object;
.source "RESDownloadPropertyImageJob.java"

# interfaces
.implements Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4ee3f0f31a8e9bfcL


# instance fields
.field private final mCropRatioHeight:Ljava/lang/Integer;

.field private final mCropRatioWidth:Ljava/lang/Integer;

.field private final mHeight:Ljava/lang/Integer;

.field private final mListingId:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mWidth:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # Ljava/lang/Integer;
    .param p3, "height"    # Ljava/lang/Integer;
    .param p4, "cropRatioWidth"    # I
    .param p5, "cropRatioHeight"    # I
    .param p6, "listingId"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mUrl:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mListingId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mWidth:Ljava/lang/Integer;

    .line 73
    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mHeight:Ljava/lang/Integer;

    .line 74
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioWidth:Ljava/lang/Integer;

    .line 75
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioHeight:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # Ljava/lang/Integer;
    .param p3, "height"    # Ljava/lang/Integer;
    .param p4, "listingId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mUrl:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mListingId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mWidth:Ljava/lang/Integer;

    .line 63
    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mHeight:Ljava/lang/Integer;

    .line 64
    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioWidth:Ljava/lang/Integer;

    .line 65
    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioHeight:Ljava/lang/Integer;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mListingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mHeight:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    instance-of v3, p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    if-nez v3, :cond_1

    move v1, v2

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    if-eq p0, p1, :cond_0

    move-object v0, p1

    .line 90
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;

    .line 91
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mListingId:Ljava/lang/String;

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mListingId:Ljava/lang/String;

    .line 92
    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mWidth:Ljava/lang/Integer;

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mWidth:Ljava/lang/Integer;

    .line 93
    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mHeight:Ljava/lang/Integer;

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mHeight:Ljava/lang/Integer;

    .line 94
    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioWidth:Ljava/lang/Integer;

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioWidth:Ljava/lang/Integer;

    .line 95
    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioHeight:Ljava/lang/Integer;

    iget-object v4, v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioHeight:Ljava/lang/Integer;

    .line 96
    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getImageType()Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->PROPERTY_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mListingId:Ljava/lang/String;

    .line 80
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mWidth:Ljava/lang/Integer;

    .line 81
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mHeight:Ljava/lang/Integer;

    .line 82
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioWidth:Ljava/lang/Integer;

    .line 83
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$Config;->mCropRatioHeight:Ljava/lang/Integer;

    .line 84
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
