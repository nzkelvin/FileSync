.class public Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;
.super Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;
.source "JSALoggedBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;
    }
.end annotation


# instance fields
.field private final mBroadcastTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;",
            "Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    .prologue
    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;[Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .param p3, "handleExceptions"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .param p3, "handleExceptions"    # Z
    .param p4, "actions"    # [Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mBroadcastTimeMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mProviderMap:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .param p3, "actions"    # [Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mBroadcastTimeMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected createBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;-><init>(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;)V

    return-object v0
.end method

.method protected declared-synchronized getIntentFilterActions()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 110
    .local v0, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->getIntentFilterActions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v2, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mProviderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;

    .line 112
    .local v1, "provider":Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;
    invoke-interface {v1}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;->getActions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "provider":Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 113
    .restart local v0    # "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public getLoggedActions(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;J)Ljava/util/Set;
    .locals 8
    .param p1, "provider"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;",
            "J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 170
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 171
    .local v2, "loggedActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;->getActions()Ljava/util/Set;

    move-result-object v1

    .line 172
    .local v1, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mBroadcastTimeMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 174
    .local v3, "time":Ljava/lang/Long;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, p2

    if-ltz v5, :cond_1

    .line 175
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/Long;
    :cond_2
    return-object v2
.end method

.method public startLogging(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;)V
    .locals 3
    .param p1, "provider"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;

    .prologue
    .line 130
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mProviderMap:Ljava/util/Map;

    new-instance v1, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;-><init>(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->resetHandler()V

    goto :goto_0
.end method

.method public stopLogging(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;)Ljava/util/Set;
    .locals 4
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
    .line 150
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 151
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->mProviderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;

    .line 152
    .local v0, "logInfo":Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 154
    :goto_0
    return-object v1

    .line 153
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->resetHandler()V

    .line 154
    invoke-static {v0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;->access$200(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;->getLoggedActions(Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;J)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method
