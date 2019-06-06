.class public final enum Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;
.super Ljava/lang/Enum;
.source "JSAFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/download/JSAFileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

.field public static final enum FINISHED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

.field public static final enum NOT_STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

.field public static final enum STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

.field public static final enum STOPPED_ON_EXCEPTION:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

.field public static final enum STOPPED_ON_REQUEST:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->NOT_STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 91
    new-instance v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 92
    new-instance v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->FINISHED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 93
    new-instance v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    const-string v1, "STOPPED_ON_REQUEST"

    invoke-direct {v0, v1, v5}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STOPPED_ON_REQUEST:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 94
    new-instance v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    const-string v1, "STOPPED_ON_EXCEPTION"

    invoke-direct {v0, v1, v6}, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STOPPED_ON_EXCEPTION:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    sget-object v1, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->NOT_STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STARTED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->FINISHED:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    aput-object v1, v0, v4

    sget-object v1, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STOPPED_ON_REQUEST:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    aput-object v1, v0, v5

    sget-object v1, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->STOPPED_ON_EXCEPTION:Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    aput-object v1, v0, v6

    sput-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->$VALUES:[Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->$VALUES:[Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/download/JSAFileDownloader$State;

    return-object v0
.end method
