.class public final enum Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;
.super Ljava/lang/Enum;
.source "JSADirectedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

.field public static final enum FINISHED:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

.field public static final enum PENDING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

.field public static final enum RUNNING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->PENDING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    .line 118
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->RUNNING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    .line 122
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->FINISHED:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    sget-object v1, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->PENDING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->RUNNING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->FINISHED:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->$VALUES:[Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->$VALUES:[Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    return-object v0
.end method
