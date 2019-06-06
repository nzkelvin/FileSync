.class public Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;
.super Ljava/lang/Object;
.source "JSABroadcastHandler.java"

# interfaces
.implements Lnz/co/jsalibrary/android/broadcast/JSABroadcastActionProvider;


# instance fields
.field private final mActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandleExceptions:Z

.field protected mHandling:Z

.field private final mReceiver:Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    .prologue
    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .param p3, "handleExceptions"    # Z

    .prologue
    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .param p3, "handleExceptions"    # Z
    .param p4, "actions"    # [Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mReceiver:Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    .line 105
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-boolean p3, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandleExceptions:Z

    .line 107
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;

    .line 108
    array-length v2, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p4, v1

    .line 109
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .param p3, "actions"    # [Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;Z[Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;)Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    .prologue
    .line 77
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mReceiver:Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addAction(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 149
    monitor-enter p0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 150
    :cond_1
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 151
    .local v0, "added":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->resetHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    .end local v0    # "added":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addActions(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 159
    .local v1, "added":Z
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 161
    iget-object v3, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 162
    :goto_1
    goto :goto_0

    .line 161
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 164
    .end local v0    # "action":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->resetHandler()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_5
    monitor-exit p0

    return v1
.end method

.method protected createBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler$1;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler$1;-><init>(Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;)V

    return-object v0
.end method

.method protected declared-synchronized createIntentFilter()Landroid/content/IntentFilter;
    .locals 5

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->getIntentFilterActions()Ljava/util/Set;

    move-result-object v1

    .line 131
    .local v1, "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 133
    .restart local v1    # "actions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-object v2
.end method

.method public getActions()Ljava/util/Set;
    .locals 1
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
    .line 197
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getIntentFilterActions()Ljava/util/Set;
    .locals 1
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
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getReceiver()Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mReceiver:Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;

    return-object v0
.end method

.method public declared-synchronized removeAction(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 173
    monitor-enter p0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 174
    :cond_1
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 175
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->resetHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    .end local v0    # "removed":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeActions(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 183
    .local v1, "removed":Z
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 185
    iget-object v3, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mActions:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 186
    :goto_1
    goto :goto_0

    .line 185
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 188
    .end local v0    # "action":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->resetHandler()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_5
    monitor-exit p0

    return v1
.end method

.method protected declared-synchronized resetHandler()V
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandling:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->stopHandling()V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->startHandling()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHandling()V
    .locals 3

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopHandling()V
    .locals 5

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 225
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandling:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandleExceptions:Z

    if-nez v1, :cond_1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandling:Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    .restart local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_5
    const-string v1, "error unregistering receiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/broadcast/JSABroadcastHandler;->mHandling:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method
