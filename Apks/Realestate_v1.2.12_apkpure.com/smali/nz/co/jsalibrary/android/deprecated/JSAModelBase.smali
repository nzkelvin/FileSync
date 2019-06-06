.class public abstract Lnz/co/jsalibrary/android/deprecated/JSAModelBase;
.super Ljava/lang/Object;
.source "JSAModelBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SHARED_PREFERENCE_ERROR:Ljava/lang/String; = "error accessing shared preference. override getSharedPreferences() to use"


# instance fields
.field protected final mBackgroundThread:Landroid/os/HandlerThread;

.field protected final mBackgroundThreadHandler:Landroid/os/Handler;

.field protected final mCachedSharedPreferenceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mForegroundThreadHandler:Landroid/os/Handler;

.field protected final mForegroundThreadId:I

.field protected final mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->constructEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mForegroundThreadHandler:Landroid/os/Handler;

    .line 81
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mForegroundThreadId:I

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JSAModelBackgroundThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mCachedSharedPreferenceMap:Landroid/util/SparseArray;

    .line 88
    return-void
.end method

.method private getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "initialise"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 581
    .local v2, "prefsHashCode":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 582
    :try_start_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mCachedSharedPreferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 583
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit v4

    move-object v1, v0

    .line 586
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 584
    .end local v1    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 585
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mCachedSharedPreferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    monitor-exit v4

    move-object v1, v0

    .restart local v1    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 587
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 567
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v0

    .line 568
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 570
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 555
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 556
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v0

    .line 557
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 558
    :try_start_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    monitor-exit v2

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected constructEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    return-object v0
.end method

.method protected dispatchEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mForegroundThreadId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-direct {v1, p1, p2}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 103
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mForegroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;

    invoke-direct {v1, p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase$DispatchEventRunnable;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAModelBase;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 387
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 388
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 389
    .local v0, "result":Z
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    :goto_0
    return v0

    .line 390
    :cond_2
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->removeCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final getBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 379
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 380
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method protected getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "cacheDefaultValue"    # Z

    .prologue
    .line 612
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 613
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v1

    .line 614
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v4

    .line 618
    :goto_0
    return v2

    .line 614
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 615
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 616
    .local v0, "contains":Z
    if-eqz v0, :cond_5

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 617
    .local v2, "result":Z
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-nez p4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 614
    .end local v0    # "contains":Z
    .end local v2    # "result":Z
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .restart local v0    # "contains":Z
    :cond_5
    move v2, p3

    .line 616
    goto :goto_1
.end method

.method protected final getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 399
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 400
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 401
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FZ)F

    move-result v0

    return v0
.end method

.method protected getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FZ)F
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F
    .param p4, "cacheDefaultValue"    # Z

    .prologue
    .line 643
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 644
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v1

    .line 645
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    monitor-exit v4

    .line 649
    :goto_0
    return v2

    .line 645
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 646
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 647
    .local v0, "contains":Z
    if-eqz v0, :cond_5

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 648
    .local v2, "result":F
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-nez p4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 645
    .end local v0    # "contains":Z
    .end local v2    # "result":F
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .restart local v0    # "contains":Z
    :cond_5
    move v2, p3

    .line 647
    goto :goto_1
.end method

.method protected final getCachedFloatSharedPreference(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 431
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 432
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 433
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method protected getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)I
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "cacheDefaultValue"    # Z

    .prologue
    .line 674
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 675
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v1

    .line 676
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v4

    .line 680
    :goto_0
    return v2

    .line 676
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 677
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 678
    .local v0, "contains":Z
    if-eqz v0, :cond_5

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 679
    .local v2, "result":I
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-nez p4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 676
    .end local v0    # "contains":Z
    .end local v2    # "result":I
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .restart local v0    # "contains":Z
    :cond_5
    move v2, p3

    .line 678
    goto :goto_1
.end method

.method protected final getCachedIntSharedPreference(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 463
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 464
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 465
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 695
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JZ)J
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .param p5, "cacheDefaultValue"    # Z

    .prologue
    .line 705
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 706
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v1

    .line 707
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v5

    .line 711
    :goto_0
    return-wide v2

    .line 707
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 708
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 709
    .local v0, "contains":Z
    if-eqz v0, :cond_5

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 710
    .local v2, "result":J
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    if-nez p5, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 707
    .end local v0    # "contains":Z
    .end local v2    # "result":J
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v0    # "contains":Z
    :cond_5
    move-wide v2, p3

    .line 709
    goto :goto_1
.end method

.method protected final getCachedLongSharedPreference(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 495
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 496
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "cacheDefaultValue"    # Z

    .prologue
    .line 736
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 737
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedSharedPreferenceMap(Landroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v1

    .line 738
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v4

    .line 742
    :goto_0
    return-object v3

    .line 738
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 740
    .local v0, "contains":Z
    if-eqz v0, :cond_5

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "result":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-nez p4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    :try_start_1
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    .line 742
    goto :goto_0

    .line 738
    .end local v0    # "contains":Z
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "contains":Z
    :cond_5
    move-object v2, p3

    .line 740
    goto :goto_1

    .line 741
    .restart local v2    # "result":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method protected final getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 527
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 528
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 529
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    return-object v0
.end method

.method protected final getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 419
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 420
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 421
    .local v0, "result":F
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    :goto_0
    return v0

    .line 422
    :cond_2
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->removeCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final getFloatSharedPreference(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 411
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 412
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 413
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected final getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 451
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 452
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 453
    .local v0, "result":I
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    :goto_0
    return v0

    .line 454
    :cond_2
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->removeCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final getIntSharedPreference(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 443
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 444
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected final getLock()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 147
    return-object p0
.end method

.method protected final getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 483
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 484
    :cond_1
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 485
    .local v0, "result":J
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    :goto_0
    return-wide v0

    .line 486
    :cond_2
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->removeCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final getLongSharedPreference(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 475
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 476
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 515
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 516
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    :goto_0
    return-object v0

    .line 518
    :cond_2
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->removeCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 509
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method

.method public final registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .locals 1
    .param p2, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected final removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 545
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 546
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;

    invoke-direct {v1, p1, p2}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->removeCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method protected final removeSharedPreference(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 538
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 539
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_1
    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method protected runOnBackgroundThread(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 755
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 756
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 758
    :goto_0
    return v0

    .line 757
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    .line 252
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 257
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v1, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    if-eqz p4, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 260
    :cond_2
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 294
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v1, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    if-eqz p4, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 297
    :cond_2
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 325
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    .line 326
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "event"    # Ljava/lang/String;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 331
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v1, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    if-eqz p5, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p5, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 334
    :cond_2
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 367
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 368
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v1, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    if-eqz p4, :cond_2

    invoke-virtual {p0, p4, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 371
    :cond_2
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    .line 215
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 220
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v1, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setCachedSharedPreferenceValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    if-eqz p4, :cond_2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 223
    :cond_2
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V

    .line 235
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 243
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 244
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 245
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    .line 247
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 280
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 281
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V

    .line 309
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 317
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 319
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 320
    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    .line 321
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 354
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 355
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 356
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V

    .line 198
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 206
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    .line 210
    return-void
.end method

.method public final unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method
