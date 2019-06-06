.class public final enum Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;
.super Ljava/lang/Enum;
.source "JSALogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSALogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogcatFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum BRIEF:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum LONG:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum PROCESS:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum RAW:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum TAG:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum THREAD:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum THREADTIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

.field public static final enum TIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "BRIEF"

    const-string v2, "brief"

    invoke-direct {v0, v1, v4, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->BRIEF:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "PROCESS"

    const-string v2, "process"

    invoke-direct {v0, v1, v5, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->PROCESS:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "TAG"

    const-string v2, "tag"

    invoke-direct {v0, v1, v6, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->TAG:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "THREAD"

    const-string v2, "thread"

    invoke-direct {v0, v1, v7, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->THREAD:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "RAW"

    const-string v2, "raw"

    invoke-direct {v0, v1, v8, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->RAW:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "TIME"

    const/4 v2, 0x5

    const-string v3, "time"

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->TIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "THREADTIME"

    const/4 v2, 0x6

    const-string v3, "threadtime"

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->THREADTIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const-string v1, "LONG"

    const/4 v2, 0x7

    const-string v3, "long"

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->LONG:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->BRIEF:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v1, v0, v4

    sget-object v1, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->PROCESS:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v1, v0, v5

    sget-object v1, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->TAG:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v1, v0, v6

    sget-object v1, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->THREAD:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v1, v0, v7

    sget-object v1, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->RAW:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->TIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->THREADTIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->LONG:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    aput-object v2, v0, v1

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->$VALUES:[Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->mValue:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    .prologue
    .line 64
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->$VALUES:[Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    return-object v0
.end method
