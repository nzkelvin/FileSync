.class final Lcom/google/android/gms/internal/zzpt$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzb"
.end annotation


# instance fields
.field final synthetic sU:Lcom/google/android/gms/internal/zzpt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zzb;->sU:Lcom/google/android/gms/internal/zzpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpt;Lcom/google/android/gms/internal/zzpt$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpt$zzb;-><init>(Lcom/google/android/gms/internal/zzpt;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzb;->sU:Lcom/google/android/gms/internal/zzpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpt;->zza(Lcom/google/android/gms/internal/zzpt;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpt;->zze(Lcom/google/android/gms/common/api/Result;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
