.class public final enum Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;
.super Ljava/lang/Enum;
.source "JSAStatefulMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataSourceOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

.field public static final enum FILE_DESCRIPTOR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

.field public static final enum STRING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

.field public static final enum URI:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    const-string v1, "URI"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->URI:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    const-string v1, "FILE_DESCRIPTOR"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->FILE_DESCRIPTOR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    new-instance v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->STRING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    .line 230
    const/4 v0, 0x3

    new-array v0, v0, [Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->URI:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->FILE_DESCRIPTOR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->STRING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    aput-object v1, v0, v4

    sput-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->$VALUES:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

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
    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    const-class v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->$VALUES:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$DataSourceOrigin;

    return-object v0
.end method
