.class public abstract Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;
.super Lnz/co/jsalibrary/android/deprecated/JSAModel;
.source "JSALoggedModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/deprecated/JSALoggedModel$TickerRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_LOG_FREQUENCY:I = 0x1388


# instance fields
.field protected mDispatchDuration:J

.field protected final mListenerEventCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLogFrequency:I

.field protected mLogging:Z

.field protected final mPropertyEventCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTimer:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "logFrequency"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lnz/co/jsalibrary/android/deprecated/JSAModel;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    .line 48
    iput p1, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogFrequency:I

    .line 50
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel$TickerRunnable;

    iget v1, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogFrequency:I

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel$TickerRunnable;-><init>(Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;J)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mTimer:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .line 51
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mTimer:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->start()V

    .line 52
    return-void
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 60
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->getLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 62
    .local v2, "currentTime":J
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    .line 63
    .local v5, "success":Z
    iget-wide v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mDispatchDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mDispatchDuration:J

    .line 64
    if-eqz v5, :cond_0

    iget-boolean v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogging:Z

    if-nez v8, :cond_1

    :cond_0
    monitor-exit v7

    .line 79
    .end local v5    # "success":Z
    :goto_0
    return v5

    .line 67
    .restart local v5    # "success":Z
    :cond_1
    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v8}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->getRegisteredListeners()Ljava/util/List;

    move-result-object v4

    .line 68
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/event/JSAOnEventListener;

    .line 69
    .local v1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 70
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_2

    iget-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v1    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    .end local v2    # "currentTime":J
    .end local v4    # "listeners":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;>;"
    .end local v5    # "success":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 71
    .restart local v0    # "count":Ljava/lang/Integer;
    .restart local v1    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    .restart local v2    # "currentTime":J
    .restart local v4    # "listeners":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;>;"
    .restart local v5    # "success":Z
    :cond_2
    :try_start_1
    iget-object v9, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 75
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v1    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    :cond_3
    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    .restart local v0    # "count":Ljava/lang/Integer;
    if-nez v0, :cond_4

    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_2
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 77
    :cond_4
    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getLogging()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogging:Z

    return v0
.end method

.method protected logEvents()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 88
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->getLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 89
    :try_start_0
    iget-boolean v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogging:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    monitor-exit v9

    .line 115
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 91
    .local v4, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;>;"
    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 92
    .local v5, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 96
    .local v7, "totalEventCount":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/event/JSAOnEventListener;

    .line 97
    .local v3, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v10, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    .local v0, "count":Ljava/lang/Integer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v7, v10

    .line 100
    goto :goto_1

    .line 103
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v3    # "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "property":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 114
    .end local v2    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;>;"
    .end local v5    # "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "totalEventCount":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 106
    .restart local v2    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;>;"
    .restart local v5    # "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "totalEventCount":I
    :cond_3
    const/4 v10, 0x0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogFrequency:I

    int-to-long v12, v11

    invoke-static {v12, v13}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->humanReadableDuration(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", onEvent called "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v7, v14, :cond_4

    const-string v8, "time "

    :goto_3
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "with total handling duration of "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mDispatchDuration:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "ms"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "line":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    goto :goto_4

    .line 106
    .end local v1    # "line":Ljava/lang/String;
    :cond_4
    const-string v8, "times "

    goto :goto_3

    .line 111
    :cond_5
    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 112
    iget-object v8, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 113
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mDispatchDuration:J

    .line 114
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setLogging(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogging:Z

    if-ne p1, v0, :cond_0

    monitor-exit v1

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mLogging:Z

    .line 129
    if-eqz p1, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mTimer:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->start()V

    .line 135
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_1
    :try_start_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mListenerEventCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mPropertyEventCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->mTimer:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
