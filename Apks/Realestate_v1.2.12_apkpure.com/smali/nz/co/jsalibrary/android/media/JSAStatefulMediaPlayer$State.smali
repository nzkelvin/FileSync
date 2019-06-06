.class public final enum Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
.super Ljava/lang/Enum;
.source "JSAStatefulMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field public static final enum STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v5}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v7}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "PLAYBACK_COMPLETED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "END"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    .line 177
    const/16 v0, 0xa

    new-array v0, v0, [Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v1, v0, v6

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    aput-object v2, v0, v1

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->$VALUES:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

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
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    const-class v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->$VALUES:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    return-object v0
.end method


# virtual methods
.method public isEnd()Z
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->IDLE:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->INITIALIZED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PAUSED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaybackCompleted()Z
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreparing()Z
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STARTED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->STOPPED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
