.class public final enum Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
.super Ljava/lang/Enum;
.source "JSAGetUserLocationJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

.field public static final enum COARSE_ONLY:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

.field public static final enum FINE_AND_COARSE:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

.field public static final enum FINE_ONLY:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    const-string v1, "FINE_ONLY"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->FINE_ONLY:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    .line 113
    new-instance v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    const-string v1, "COARSE_ONLY"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->COARSE_ONLY:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    .line 114
    new-instance v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    const-string v1, "FINE_AND_COARSE"

    invoke-direct {v0, v1, v4}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->FINE_AND_COARSE:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    sget-object v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->FINE_ONLY:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->COARSE_ONLY:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->FINE_AND_COARSE:Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    aput-object v1, v0, v4

    sput-object v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->$VALUES:[Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->$VALUES:[Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$LocationConfig;

    return-object v0
.end method
