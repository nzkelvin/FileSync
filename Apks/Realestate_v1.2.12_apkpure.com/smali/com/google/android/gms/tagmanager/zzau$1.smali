.class Lcom/google/android/gms/tagmanager/zzau$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzau;->zzl(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aww:Lcom/google/android/gms/tagmanager/zzat;

.field final synthetic awx:J

.field final synthetic awy:Lcom/google/android/gms/tagmanager/zzau;

.field final synthetic zzbjl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzat;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzau$1;->aww:Lcom/google/android/gms/tagmanager/zzat;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awx:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzau$1;->zzbjl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzau;->zza(Lcom/google/android/gms/tagmanager/zzau;)Lcom/google/android/gms/tagmanager/zzav;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdb;->zzccy()Lcom/google/android/gms/tagmanager/zzdb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzau;->zzb(Lcom/google/android/gms/tagmanager/zzau;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzau$1;->aww:Lcom/google/android/gms/tagmanager/zzat;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdb;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzat;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzcdb()Lcom/google/android/gms/tagmanager/zzav;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzau;->zza(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzav;)Lcom/google/android/gms/tagmanager/zzav;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzau;->zza(Lcom/google/android/gms/tagmanager/zzau;)Lcom/google/android/gms/tagmanager/zzav;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awx:J

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->zzbjl:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/zzav;->zzg(JLjava/lang/String;)V

    return-void
.end method
