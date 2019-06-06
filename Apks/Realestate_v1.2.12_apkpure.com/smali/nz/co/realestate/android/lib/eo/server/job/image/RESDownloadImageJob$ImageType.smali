.class public final enum Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;
.super Ljava/lang/Enum;
.source "RESDownloadImageJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

.field public static final enum AD_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

.field public static final enum AGENT_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

.field public static final enum AGENT_LOGO:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

.field public static final enum PROPERTY_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

.field public static final enum WESTPAC_CONTACT_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;


# instance fields
.field private final mJobClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    const-string v1, "AD_IMAGE"

    const-class v2, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAdImageJob;

    invoke-direct {v0, v1, v3, v2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->AD_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    .line 18
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    const-string v1, "AGENT_IMAGE"

    const-class v2, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentImageJob;

    invoke-direct {v0, v1, v4, v2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->AGENT_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    .line 19
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    const-string v1, "AGENT_LOGO"

    const-class v2, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadAgentLogoJob;

    invoke-direct {v0, v1, v5, v2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->AGENT_LOGO:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    .line 20
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    const-string v1, "PROPERTY_IMAGE"

    const-class v2, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;

    invoke-direct {v0, v1, v6, v2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->PROPERTY_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    .line 21
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    const-string v1, "WESTPAC_CONTACT_IMAGE"

    const-class v2, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadWestpacContactImageJob;

    invoke-direct {v0, v1, v7, v2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->WESTPAC_CONTACT_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    sget-object v1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->AD_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->AGENT_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->AGENT_LOGO:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->PROPERTY_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->WESTPAC_CONTACT_IMAGE:Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    aput-object v1, v0, v7

    sput-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->$VALUES:[Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<Ljava/io/File;>;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->mJobClass:Ljava/lang/Class;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    return-object v0
.end method

.method public static values()[Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->$VALUES:[Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    invoke-virtual {v0}, [Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;

    return-object v0
.end method


# virtual methods
.method public getJobClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$ImageType;->mJobClass:Ljava/lang/Class;

    return-object v0
.end method
