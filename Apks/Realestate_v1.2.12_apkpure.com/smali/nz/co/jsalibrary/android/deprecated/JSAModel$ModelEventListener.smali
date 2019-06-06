.class Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;
.super Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
.source "JSAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContainerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;",
            "Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    .line 169
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;->mContainerMap:Ljava/util/Map;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAModel$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/deprecated/JSAModel$1;

    .prologue
    .line 155
    invoke-direct {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 4
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;->mContainerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    .local v1, "containers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;

    .line 210
    .local v0, "container":Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;
    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->access$200(Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    goto :goto_0

    .line 208
    .end local v0    # "container":Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 211
    .restart local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;>;"
    :cond_0
    return-void
.end method

.method public declared-synchronized registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
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
    .line 177
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
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
    .locals 4
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
    .line 183
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 184
    .local v0, "registered":Z
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 186
    :goto_0
    monitor-exit p0

    return v1

    .line 185
    :cond_0
    :try_start_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;->mContainerMap:Ljava/util/Map;

    new-instance v2, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;-><init>(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Lnz/co/jsalibrary/android/deprecated/JSAModel$1;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    const/4 v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "registered":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 2
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
    .line 194
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 195
    .local v0, "unregistered":Z
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 197
    :goto_0
    monitor-exit p0

    return v1

    .line 196
    :cond_0
    :try_start_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventListener;->mContainerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    const/4 v1, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "unregistered":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
