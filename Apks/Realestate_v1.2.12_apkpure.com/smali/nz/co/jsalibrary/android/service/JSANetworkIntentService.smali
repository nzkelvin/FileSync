.class public abstract Lnz/co/jsalibrary/android/service/JSANetworkIntentService;
.super Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;
.source "JSANetworkIntentService.java"


# instance fields
.field protected mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field protected mWifiLockName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "lockName"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLockName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "lockName"    # Ljava/lang/String;
    .param p3, "maxThreadCount"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLockName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "lockName"    # Ljava/lang/String;
    .param p3, "maxThreadCount"    # I
    .param p4, "logFrequencyMillis"    # J

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLockName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected declared-synchronized getWifiLock(Landroid/content/Context;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit p0

    return-object v1

    .line 62
    :cond_0
    :try_start_1
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 63
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLockName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 64
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 65
    iget-object v1, p0, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "mgr":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->onDestroy()V

    .line 52
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getWifiLock(Landroid/content/Context;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getWifiLock(Landroid/content/Context;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releasing wifi lock ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->onStart(Landroid/content/Intent;I)V

    .line 46
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getWifiLock(Landroid/content/Context;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getWifiLock(Landroid/content/Context;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquiring wifi lock ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/service/JSANetworkIntentService;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 48
    return-void
.end method
