.class public Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
.super Ljava/lang/Object;
.source "JSACompositeEventListener.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lnz/co/jsalibrary/android/event/events/JSAEvent;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<TE;>;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private mWeakListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mWeakListeners:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mListeners:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized getRegisteredListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mWeakListeners:Ljava/util/List;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAWeakUtil;->strip(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-object v0

    .line 63
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mWeakListeners:Ljava/util/List;

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAWeakUtil;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    .local p1, "event":Lnz/co/jsalibrary/android/event/events/JSAEvent;, "TE;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->getRegisteredListeners()Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/event/JSAOnEventListener;

    .line 95
    .local v0, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/event/JSAOnEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    goto :goto_0

    .line 96
    .end local v0    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    :cond_0
    return-void
.end method

.method public declared-synchronized registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .locals 2
    .param p2, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_0
    monitor-exit p0

    return v0

    .line 45
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mWeakListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transferListeners(Lnz/co/jsalibrary/android/event/JSACompositeEventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    .local p1, "compositeListener":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
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

    .line 75
    :cond_0
    :try_start_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mWeakListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 76
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/event/JSAOnEventListener;

    .line 77
    .local v0, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    goto :goto_0

    .line 80
    .end local v0    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;>;"
    :cond_2
    iget-object v2, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/event/JSAOnEventListener;

    .line 81
    .restart local v0    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    invoke-virtual {p1, v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    goto :goto_1

    .line 84
    .end local v0    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    :cond_3
    iget-object v2, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mWeakListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 85
    iget-object v2, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<TE;>;"
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mWeakListeners:Ljava/util/List;

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSAWeakUtil;->remove(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
