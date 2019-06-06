.class abstract Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
.super Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod;
.source "JSAModelBaseSerialize.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;,
        Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;,
        Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;,
        Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;,
        Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;,
        Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SAVE_MODEL_DELAY_DEFAULT:J = 0x1f4L

.field private static final serialVersionUID:J = 0x5a587a9c7d9f15d6L


# instance fields
.field protected final transient mContext:Landroid/content/Context;

.field private transient mEventDispatchListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPersistentProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private transient mSaveModelRunnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseEventMethod;-><init>(Z)V

    .line 118
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    .line 121
    return-void
.end method


# virtual methods
.method protected clearPersistentProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->clearPersistentProperty(Ljava/lang/String;Z)V

    .line 188
    return-void
.end method

.method protected clearPersistentProperty(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "dispatchEvent"    # Z

    .prologue
    .line 192
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void

    .line 194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected containsPersistentProperty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method protected dispatchEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "preventModelSave"    # Z

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

.method protected dispatchEvent(Ljava/lang/String;Ljava/lang/Object;ZZ)Z
    .locals 8
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "preventModelSave"    # Z
    .param p4, "recordEvent"    # Z

    .prologue
    .line 229
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->isUiThread()Z

    move-result v6

    .line 232
    .local v6, "isUiThread":Z
    if-eqz v6, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-direct {v1, p1, p2}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 236
    :goto_0
    if-eqz v6, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->onDispatchEventSaveModel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_0
    if-eqz v6, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->onDispatchEventRecordEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    :cond_1
    return v6

    .line 233
    :cond_2
    iget-object v7, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$DispatchEventRunnable;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getPersistentProperty(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/io/Serializable;

    .prologue
    .line 164
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->containsPersistentProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 166
    .end local p2    # "defaultValue":Ljava/io/Serializable;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/io/Serializable;
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    monitor-exit v1

    move-object p2, v0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getSaveModelDataFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const-string v0, "model.dat"

    return-object v0
.end method

.method protected getSaveModelDelay()J
    .locals 2

    .prologue
    .line 306
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method loadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 17
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .prologue
    .line 499
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getSaveModelDataFilename()Ljava/lang/String;

    move-result-object v10

    .line 500
    .local v10, "saveModelDataFilename":Ljava/lang/String;
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->isUiThread()Z

    move-result v4

    .line 506
    .local v4, "isUIThread":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mContext:Landroid/content/Context;

    invoke-static {v12, v10}, Lnz/co/jsalibrary/android/util/JSASerializationUtil;->loadSerializableFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    .line 510
    .local v5, "model":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    if-nez v5, :cond_2

    .line 511
    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    .line 512
    :cond_0
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "model cannot be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v5    # "model":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    :catch_0
    move-exception v3

    .line 539
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 540
    .local v6, "modelFile":Ljava/io/File;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v7, 0x1

    .line 545
    .local v7, "modelFileExists":Z
    :goto_0
    new-instance v9, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1, v3, v7}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$4;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;Ljava/lang/Exception;Z)V

    .line 553
    .local v9, "onLoadModelIntoExceptionRunnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_a

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    .line 559
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v6    # "modelFile":Ljava/io/File;
    .end local v7    # "modelFileExists":Z
    .end local v9    # "onLoadModelIntoExceptionRunnable":Ljava/lang/Runnable;
    :cond_1
    :goto_2
    return-void

    .line 516
    .restart local v5    # "model":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    .line 518
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;->onLoadModelInto()Z

    move-result v12

    if-nez v12, :cond_4

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 557
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    goto :goto_2

    .line 519
    :cond_4
    if-eqz p1, :cond_6

    :try_start_4
    invoke-interface/range {p1 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;->getDispatchedEvents()Ljava/util/Set;

    move-result-object v12

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->onLoadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, "dispatchEvents":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 523
    :try_start_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 524
    .local v11, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v11}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v12, v14, v15, v1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;ZZ)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 557
    .end local v2    # "dispatchEvents":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "model":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    .end local v11    # "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v12

    if-eqz p1, :cond_5

    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    :cond_5
    throw v12

    .line 519
    .restart local v5    # "model":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 520
    :catchall_1
    move-exception v12

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v12

    .line 528
    .restart local v2    # "dispatchEvents":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_7
    new-instance v8, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$3;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 535
    .local v8, "onLoadModelIntoCompleteRunnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_8

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 557
    :goto_5
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    goto :goto_2

    .line 536
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 540
    .end local v2    # "dispatchEvents":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "model":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    .end local v8    # "onLoadModelIntoCompleteRunnable":Ljava/lang/Runnable;
    .restart local v3    # "exception":Ljava/lang/Exception;
    .restart local v6    # "modelFile":Ljava/io/File;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 554
    .restart local v7    # "modelFileExists":Z
    .restart local v9    # "onLoadModelIntoExceptionRunnable":Ljava/lang/Runnable;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1
.end method

.method loadModelIntoBackground(JLnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .prologue
    .line 478
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method must be called on the ui thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->registerEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    .line 481
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;

    invoke-direct {v1, p0, p3}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    return-void
.end method

.method loadModelIntoBackground(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 2
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .prologue
    .line 463
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->loadModelIntoBackground(JLnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 464
    return-void
.end method

.method protected onDispatchEventRecordEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 271
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 272
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    if-nez v1, :cond_0

    monitor-exit v2

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;

    .line 274
    .local v0, "listener":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;
    invoke-interface {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;->addDispatchedEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v0    # "listener":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected onDispatchEventSaveModel(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->onDispatchEventShouldSaveModel(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getSaveModelDelay()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->saveModelBackground(JLnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;

    goto :goto_0
.end method

.method protected onDispatchEventShouldSaveModel(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .param p1, "loadedModel"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 580
    .local p2, "recordedDispatchedEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 581
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v1, "returnEvents":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v2, p1, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;"
    if-eqz p2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    :cond_2
    iget-object v3, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;"
    :cond_3
    return-object v1
.end method

.method registerEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V
    .locals 2
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;

    .prologue
    .line 283
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    .line 285
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected resetPersistentData()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->resetPersistentData(Ljava/util/Set;)V

    .line 331
    return-void
.end method

.method protected resetPersistentData(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "exclusions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 345
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 346
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 347
    monitor-exit v3

    .line 357
    :goto_0
    return-void

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 349
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 350
    :try_start_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 355
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;>;"
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;>;"
    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0
.end method

.method saveModel(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V
    .locals 8
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    .prologue
    .line 410
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->isUiThread()Z

    move-result v1

    .line 416
    .local v1, "isUIThread":Z
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :try_start_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getSaveModelDataFilename()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v4, v6, v7}, Lnz/co/jsalibrary/android/util/JSASerializationUtil;->saveSerializableToFile(Ljava/io/Serializable;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 418
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :try_start_2
    new-instance v2, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$1;

    invoke-direct {v2, p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$1;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V

    .line 428
    .local v2, "onSaveModelCompleteRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 445
    .end local v2    # "onSaveModelCompleteRunnable":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 418
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 431
    :catch_0
    move-exception v0

    .line 434
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v3, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;

    invoke-direct {v3, p0, p1, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;Ljava/lang/Exception;)V

    .line 442
    .local v3, "onSaveModelExceptionRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 429
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v3    # "onSaveModelExceptionRunnable":Ljava/lang/Runnable;
    .restart local v2    # "onSaveModelCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    :try_start_5
    iget-object v4, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 443
    .end local v2    # "onSaveModelCompleteRunnable":Ljava/lang/Runnable;
    .restart local v0    # "exception":Ljava/lang/Exception;
    .restart local v3    # "onSaveModelExceptionRunnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method saveModelBackground(JLnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;
    .locals 3
    .param p1, "delay"    # J
    .param p3, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    .prologue
    .line 388
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "method must be called on the ui thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;

    invoke-direct {v0, p0, p3}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V

    .line 390
    .local v0, "runnable":Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;
    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mSaveModelRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mBackgroundThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mSaveModelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mBackgroundThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mSaveModelRunnable:Ljava/lang/Runnable;

    .line 393
    return-object v0
.end method

.method saveModelBackground(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V
    .locals 2
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    .prologue
    .line 374
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->saveModelBackground(JLnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;

    .line 375
    return-void
.end method

.method protected setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;Z)V

    .line 138
    return-void
.end method

.method protected setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "dispatchEvent"    # Z

    .prologue
    .line 142
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mPersistentProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V
    .locals 2
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;

    .prologue
    .line 291
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->mEventDispatchListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 294
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
