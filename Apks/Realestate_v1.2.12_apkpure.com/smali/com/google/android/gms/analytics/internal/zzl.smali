.class Lcom/google/android/gms/analytics/internal/zzl;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private mStarted:Z

.field private final zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

.field private final zzcyg:Lcom/google/android/gms/analytics/internal/zzah;

.field private final zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

.field private final zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

.field private zzcyj:J

.field private final zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

.field private final zzcyl:Lcom/google/android/gms/analytics/internal/zzt;

.field private final zzcym:Lcom/google/android/gms/analytics/internal/zzal;

.field private zzcyn:J

.field private zzcyo:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyj:J

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzk(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzm(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzn(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzo(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcym:Lcom/google/android/gms/analytics/internal/zzal;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$1;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$2;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyl:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method private zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzlz;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyu()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzzp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzdh(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzzq()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->enableAdvertisingIdCollection(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zzvr()Lcom/google/android/gms/analytics/zze;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmh;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmh;->zzdx(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmh;->zzap(Z)V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/analytics/zze;->zza(Lcom/google/android/gms/analytics/zzg;)V

    const-class v1, Lcom/google/android/gms/internal/zzmc;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzmc;

    const-class v2, Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzly;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzm()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzly;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzly;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzly;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzly;->setAppInstallerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzmh;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzmc;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzzp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzadn()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/analytics/zze;->zzn(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/zze;->zzwj()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaag()V

    return-void
.end method

.method private zzaae()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyu()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->zzav(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzel(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzav(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzel(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zzaw(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzem(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzaw(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzel(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private zzaag()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzl$4;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Lcom/google/android/gms/analytics/internal/zzw;)V

    return-void
.end method

.method private zzaah()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzzy()I

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyl:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzace()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->zzv(J)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private zzaan()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyo:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabd()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaat()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzaao()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzza()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzacm()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzfc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzz()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabm()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabl()J

    move-result-wide v2

    const-string v1, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->schedule()V

    goto :goto_0
.end method

.method private zzaap()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaao()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaat()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzadp()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    :goto_0
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzt;->zzfc()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzt;->zzacj()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->zzw(J)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabj()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabj()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->zzv(J)V

    goto :goto_1
.end method

.method private zzaaq()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaar()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaas()V

    return-void
.end method

.method private zzaar()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zzfc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyk:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->cancel()V

    return-void
.end method

.method private zzaas()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzza()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzfc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaah()V

    return-void
.end method

.method private zzep(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onServiceConnected()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaj()V

    :cond_0
    return-void
.end method

.method start()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyz()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzl$3;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzh;Z)J
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwu()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzzo()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzwb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zza(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzzo()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzwb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzzp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzh;->zzp(J)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Lcom/google/android/gms/analytics/internal/zzh;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :try_start_2
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzh;->zzp(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    const-wide/16 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzab;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyo:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzej(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaai()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzej(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "Service unavailable on package side"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzc(Lcom/google/android/gms/analytics/internal/zzab;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzw;J)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzadp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaai()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaak()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyz()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/analytics/internal/zzl$5;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzw;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzadq()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->zzd(Ljava/lang/Throwable;)V

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyn:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzadi()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzai;->zzadq()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->zzd(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zzaaf()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaae()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzadn()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzep(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaau()V

    :cond_1
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzep(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaau()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zzaw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyo:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaai()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Device AnalyticsService not registered! Hits will not be delivered reliably."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzem(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected zzaai()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyo:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabz()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcym:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;->zzx(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcym:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->start()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcym:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->onServiceConnected()V

    goto :goto_0
.end method

.method public zzaaj()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabe()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzel(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabn()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zzr(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzacy()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/internal/zzj;->zzs(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto :goto_0
.end method

.method protected zzaak()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzadj()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabn()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabo()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzj;->zzr(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzacy()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_4

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto/16 :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v1

    if-nez v1, :cond_6

    move-wide v0, v4

    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzah;->zzadj()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/analytics/internal/zzah;->zzs(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v0

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzacy()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzacy()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/analytics/internal/zzj;->zzs(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzacy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto/16 :goto_2

    :cond_7
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/analytics/internal/zzj;->zzq(Ljava/util/List;)V

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-wide v0, v4

    :cond_8
    :try_start_d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_f
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto/16 :goto_2

    :cond_9
    :try_start_11
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9

    move-wide v4, v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_12
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto/16 :goto_2

    :cond_a
    move-wide v0, v4

    goto/16 :goto_5
.end method

.method public zzaal()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzej(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyn:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaai()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaak()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzadq()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyn:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzadi()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    goto :goto_0
.end method

.method public zzaam()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyu()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaan()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->A:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzadg()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyh:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->isConnected()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaap()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaaq()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaao()V

    goto :goto_0
.end method

.method public zzaat()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyj:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyj:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabk()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwe()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzap;->zzact()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwe()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzaek()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public zzaau()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwu()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyo:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    return-void
.end method

.method public zzas(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/analytics/internal/zzw;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyn:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzw;J)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/analytics/internal/zzh;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwu()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzzp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzado()Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzach()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzal;->zzx(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzadr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/analytics/internal/zzao;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzlz;)V

    goto :goto_0
.end method

.method public zzeq(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/internal/zzao;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzadr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzel(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzai;->zzev(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzado()Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzach()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzal;->zzx(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zzt(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzh;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzlz;)V

    goto :goto_1
.end method

.method zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzadd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzb()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzads()Lcom/google/android/gms/analytics/internal/zzai$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadv()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzm()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzab;->zza(Lcom/google/android/gms/analytics/internal/zzc;Lcom/google/android/gms/analytics/internal/zzab;Ljava/util/Map;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object p1

    goto :goto_0
.end method

.method public zzu(J)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyj:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V

    return-void
.end method

.method protected zzwv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->initialize()V

    return-void
.end method

.method public zzyo()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Delete all hits from local store"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzzw()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaam()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaai()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyi:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzs()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzyr()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    const-string v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzei(Ljava/lang/String;)V

    return-void
.end method

.method zzyt()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyn:J

    return-void
.end method

.method public zzzz()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzzg()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzcyf:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzzz()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method
