.class public abstract Lnz/co/jsalibrary/android/app/JSAApplication;
.super Landroid/app/Application;
.source "JSAApplication.java"

# interfaces
.implements Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;,
        Lnz/co/jsalibrary/android/app/JSAApplication$Trojan;,
        Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;
    }
.end annotation


# static fields
.field private static final CURRENT_APPLICATION_VERSION_PREFERENCE_KEY:Ljava/lang/String; = "jsaapplication_current_application_version"

.field private static final DEBUG:Z


# instance fields
.field private mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

.field private final mBroadcastReceiverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsDebug:Ljava/lang/Boolean;

.field private final mLaunchActivityEventDispatchListener:Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;

.field private mModel:Lnz/co/jsalibrary/android/model/JSAModel;

.field private mNextPermittedBackgroundModelLoadId:I

.field private volatile mPermittedBackgroundModelLoadId:I

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastReceiverMap:Ljava/util/Map;

    .line 86
    new-instance v0, Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mLaunchActivityEventDispatchListener:Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mPermittedBackgroundModelLoadId:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mNextPermittedBackgroundModelLoadId:I

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mUiThreadHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/app/JSAApplication;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/app/JSAApplication;

    .prologue
    .line 80
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mPermittedBackgroundModelLoadId:I

    return v0
.end method

.method private initialiseApplicationOnUpgrade()V
    .locals 6

    .prologue
    .line 229
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 230
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 232
    .local v0, "newVersion":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isCheckOnUpgrade()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    const-string v4, "jsaapplication_current_application_version"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 234
    .local v1, "oldVersion":I
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lnz/co/jsalibrary/android/app/JSAApplication;->onUpgrade(II)V

    .line 238
    .end local v1    # "oldVersion":I
    :cond_0
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    const-string v4, "jsaapplication_current_application_version"

    invoke-direct {v3, v2, v4, v0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 239
    .local v3, "runnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-static {v4, v3}, Lnz/co/jsalibrary/android/model/JSAModel$Trojan;->runOnBackgroundThread(Lnz/co/jsalibrary/android/model/JSAModel;Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method private initialiseDebugProxy()V
    .locals 3

    .prologue
    .line 452
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isDebugProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->getDebugProxyHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxySet"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyHost"

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->getDebugProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyPort"

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->getDebugProxyHostPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initialiseModel()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mNextPermittedBackgroundModelLoadId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mNextPermittedBackgroundModelLoadId:I

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mPermittedBackgroundModelLoadId:I

    .line 210
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isModelReloadPermitted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    new-instance v1, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;

    iget v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mPermittedBackgroundModelLoadId:I

    invoke-direct {v1, p0, v2}, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;-><init>(Lnz/co/jsalibrary/android/app/JSAApplication;I)V

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModel$Trojan;->loadModelIntoBackground(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 212
    :cond_1
    return-void
.end method


# virtual methods
.method protected final addBroadcastHandlerAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "broadcast handler not yet initialised in attachBaseContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->addAction(Ljava/lang/String;)Z

    .line 552
    return-void
.end method

.method protected final addBroadcastReceiver(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    new-instance v0, Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;

    invoke-direct {v0, p0, p2}, Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;-><init>(Lnz/co/jsalibrary/android/app/JSAApplication;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/app/JSAApplication;->addBroadcastReceiver(Ljava/lang/String;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;)V

    .line 528
    return-void
.end method

.method protected final declared-synchronized addBroadcastReceiver(Ljava/lang/String;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "broadcast handler not yet initialised in attachBaseContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 537
    :cond_0
    :try_start_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastReceiverMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 538
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;>;"
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "receivers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .restart local v0    # "receivers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastReceiverMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v1, p1}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->addAction(Ljava/lang/String;)Z

    .line 542
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->startHandling()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    monitor-exit p0

    return-void
.end method

.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/app/JSAApplication;->onBaseContextAttached(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method protected abstract constructModel()Lnz/co/jsalibrary/android/model/JSAModel;
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 183
    return-object p0
.end method

.method protected getDebugProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDebugProxyHostPort()I
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method protected getModel()Lnz/co/jsalibrary/android/model/JSAModel;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    return-object v0
.end method

.method public final getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected initialiseApplication()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method protected isCheckOnUpgrade()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isDebug()Z
    .locals 2

    .prologue
    .line 423
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mIsDebug:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "exception":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->isDebugBuild(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mIsDebug:Ljava/lang/Boolean;

    .line 427
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mIsDebug:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method protected isDebugProxy()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method protected isForceActionBarOverflow()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method protected isInitialiseApplicationPermitted()Z
    .locals 1
    .annotation build Lnz/co/jsalibrary/android/test/VisibleForTesting;
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method protected isModelReloadPermitted()Z
    .locals 1
    .annotation build Lnz/co/jsalibrary/android/test/VisibleForTesting;
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method protected onBaseContextAttached(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 143
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 152
    new-instance v0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-direct {v0, p0, p0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    .line 153
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->constructModel()Lnz/co/jsalibrary/android/model/JSAModel;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    .line 154
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "model must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mLaunchActivityEventDispatchListener:Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModel$Trojan;->registerEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    .line 156
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isForceActionBarOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAActionBarUtil;->forceActionBarOverflow(Landroid/content/Context;)V

    .line 157
    :cond_1
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->initialiseDebugProxy()V

    .line 158
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->initialiseModel()V

    .line 159
    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->initialiseApplicationOnUpgrade()V

    .line 160
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isInitialiseApplicationPermitted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->initialiseApplication()V

    .line 161
    :cond_2
    return-void
.end method

.method protected onDebugRegisterActivityCreationReloadModel(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 564
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastReceiverMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 565
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 568
    :cond_0
    return-void

    .line 566
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    .line 567
    .local v0, "receiver":Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    invoke-interface {v0, p1, p2}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;->onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->stopHandling()V

    .line 169
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 170
    return-void
.end method

.method protected onUpgrade(II)V
    .locals 0
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 276
    return-void
.end method

.method registerActivityCreation(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 319
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 320
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 321
    .local v0, "isLaunchActivity":Z
    :goto_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->isModelReloadPermitted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/app/JSAApplication;->onDebugRegisterActivityCreationReloadModel(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 323
    .local v1, "reloadModel":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 324
    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    monitor-enter v3

    .line 325
    const/4 v2, -0x1

    :try_start_0
    iput v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mPermittedBackgroundModelLoadId:I

    .line 326
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mLaunchActivityEventDispatchListener:Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;->getDispatchedEvents()Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/model/JSAModel$Trojan;->resetPersistentData(Lnz/co/jsalibrary/android/model/JSAModel;Ljava/util/Set;)V

    .line 327
    monitor-exit v3

    .line 336
    :cond_1
    :goto_2
    return-void

    .end local v0    # "isLaunchActivity":Z
    .end local v1    # "reloadModel":Z
    :cond_2
    move v0, v3

    .line 320
    goto :goto_0

    .restart local v0    # "isLaunchActivity":Z
    :cond_3
    move v1, v3

    .line 321
    goto :goto_1

    .line 327
    .restart local v1    # "reloadModel":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 328
    :cond_4
    if-eqz v1, :cond_1

    .line 329
    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    monitor-enter v3

    .line 330
    :try_start_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-static {v2}, Lnz/co/jsalibrary/android/model/JSAModel$Trojan;->resetPersistentData(Lnz/co/jsalibrary/android/model/JSAModel;)V

    .line 331
    iget v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mNextPermittedBackgroundModelLoadId:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mNextPermittedBackgroundModelLoadId:I

    iput v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mPermittedBackgroundModelLoadId:I

    .line 332
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    new-instance v4, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;

    iget v5, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mPermittedBackgroundModelLoadId:I

    invoke-direct {v4, p0, v5}, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;-><init>(Lnz/co/jsalibrary/android/app/JSAApplication;I)V

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/model/JSAModel$Trojan;->loadModelIntoBackground(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 333
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSAApplication;->initialiseApplication()V

    .line 334
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method protected final removeBroadcastHandlerAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 555
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "broadcast handler not yet initialised in attachBaseContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->removeAction(Ljava/lang/String;)Z

    .line 557
    return-void
.end method

.method public final startBridgeLogging(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;)V
    .locals 2
    .param p1, "provider"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;

    .prologue
    .line 584
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "broadcast handler not yet initialised in attachBaseContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->startLogging(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;)V

    .line 586
    return-void
.end method

.method public final stopBridgeLogging(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;)Ljava/util/Set;
    .locals 2
    .param p1, "provider"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "broadcast handler not yet initialised in attachBaseContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication;->mBroadcastHandler:Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->stopLogging(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
