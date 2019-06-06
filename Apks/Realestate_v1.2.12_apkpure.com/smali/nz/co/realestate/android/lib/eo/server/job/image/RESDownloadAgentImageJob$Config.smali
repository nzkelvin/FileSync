.class public final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;
.super Ljava/lang/Object;
.source "RESDownloadAgentImageJob.java"

# interfaces
.implements Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4c254977ab5fa761L


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;->mUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v1, p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 44
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;

    .line 45
    .local v0, "config":Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;->mUrl:Ljava/lang/String;

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getImageType()Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->AGENT_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob$Config;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
