.class public abstract enum Lcom/google/android/gms/internal/zzani;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzani;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bev:Lcom/google/android/gms/internal/zzani;

.field public static final enum bew:Lcom/google/android/gms/internal/zzani;

.field private static final synthetic bex:[Lcom/google/android/gms/internal/zzani;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzani$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzani$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzani;->bev:Lcom/google/android/gms/internal/zzani;

    new-instance v0, Lcom/google/android/gms/internal/zzani$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzani$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzani;->bew:Lcom/google/android/gms/internal/zzani;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzani;

    sget-object v1, Lcom/google/android/gms/internal/zzani;->bev:Lcom/google/android/gms/internal/zzani;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzani;->bew:Lcom/google/android/gms/internal/zzani;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzani;->bex:[Lcom/google/android/gms/internal/zzani;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzani$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzani;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzani;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzani;->bex:[Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzani;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzani;

    return-object v0
.end method
