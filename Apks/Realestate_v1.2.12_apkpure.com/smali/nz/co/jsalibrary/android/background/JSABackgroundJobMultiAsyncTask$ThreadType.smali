.class public final enum Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;
.super Ljava/lang/Enum;
.source "JSABackgroundJobMultiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

.field public static final enum HANDLER_THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

.field public static final enum THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    const-string v1, "HANDLER_THREAD"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    new-instance v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    const-string v1, "THREAD"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    sget-object v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    aput-object v1, v0, v3

    sput-object v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->$VALUES:[Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->$VALUES:[Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    return-object v0
.end method
