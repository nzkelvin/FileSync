.class Lcom/google/android/gms/tagmanager/zzaq;
.super Lcom/google/android/gms/tagmanager/zzal;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final awj:Ljava/lang/String;

.field private static final awl:Ljava/lang/String;

.field private static final awp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaf;->zzhm:Lcom/google/android/gms/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaq;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzag;->zzlk:Lcom/google/android/gms/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaq;->awj:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzag;->zzla:Lcom/google/android/gms/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaq;->awp:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzag;->zzph:Lcom/google/android/gms/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaq;->awl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaq;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzaq;->awj:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzal;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private zzf(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzav(Ljava/util/Map;)Lcom/google/android/gms/internal/zzai$zza;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzai$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzai$zza;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaq;->awj:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzcdq()Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzcdq()Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaq;->awp:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzai$zza;

    if-nez v0, :cond_2

    const-string v0, "MD5"

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzaq;->awl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzai$zza;

    if-nez v0, :cond_3

    const-string v0, "text"

    :goto_2
    const-string v3, "text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_3
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tagmanager/zzaq;->zzf(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzk;->zzp([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzar(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzai$zza;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v3, "base16"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzk;->zznn(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v1, "Hash: unknown input format: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzcdq()Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "Hash: unknown algorithm: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzcdq()Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public zzcac()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
