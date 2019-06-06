.class public Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;
.super Ljava/lang/Thread;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageLoaderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    .prologue
    .line 277
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 281
    .local p0, "this":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->sNextLoaderThreadId:I

    add-int/lit8 v17, v3, 0x1

    sput v17, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->sNextLoaderThreadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 282
    .local v16, "threadName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    const-string v3, "thread started"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v3, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 399
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    const-string v17, "thread killed"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 403
    .end local v16    # "threadName":Ljava/lang/String;
    :goto_2
    return-void

    .line 292
    .restart local v16    # "threadName":Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 295
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v0, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreadLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mMaxThreadCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v2, v0, :cond_2

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v3

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 395
    .end local v16    # "threadName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 396
    .local v10, "exception":Ljava/lang/Exception;
    :try_start_7
    const-string v2, "error loading image"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    aput-object v18, v3, v17

    invoke-static {v2, v10, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v3, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 399
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    const-string v17, "thread killed"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 297
    .end local v10    # "exception":Ljava/lang/Exception;
    .restart local v16    # "threadName":Ljava/lang/String;
    :cond_2
    :try_start_9
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 300
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->processBackgroundActions()V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->moveItemsFromHoldingBay()V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mItemQueue:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 297
    :catchall_2
    move-exception v2

    :try_start_b
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2

    .line 309
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->getItemFromQueueToLoad(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;)Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    move-result-object v2

    iget-object v13, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mJobItem:Ljava/lang/Object;

    check-cast v13, Ljava/io/Serializable;

    .line 312
    .local v13, "jobItem":Ljava/io/Serializable;, "TJobItem;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-virtual {v2, v13}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->pullItemsFromQueue(Ljava/io/Serializable;)Ljava/util/List;

    move-result-object v11

    .line 315
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " item(s) pulled from item queue for job item: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-virtual {v2, v11}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->getItemsWithValidTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 321
    .local v14, "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " item(s) pulled and filtered for job item: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v3

    goto/16 :goto_0

    .line 325
    :cond_4
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 328
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 329
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 330
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 331
    .local v12, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "item"

    invoke-virtual {v8, v2, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "job executed for job item: "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v3, v3, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mUiThreadHandler:Landroid/os/Handler;

    invoke-interface {v12, v2, v8, v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v15

    .line 341
    .local v15, "source":Ljava/lang/Object;, "TImageSource;"
    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "job ignored due to null source: "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_5
    if-eqz v15, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 347
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-virtual {v2, v14, v15}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->getBitmapFromQueueItemHandlers(Ljava/util/List;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 350
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "job ignored do to null bitmap: "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_6
    if-nez v7, :cond_7

    monitor-exit v17

    goto/16 :goto_0

    .line 392
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v2

    monitor-exit v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 398
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .end local v12    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .end local v13    # "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .end local v14    # "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .end local v15    # "source":Ljava/lang/Object;, "TImageSource;"
    .end local v16    # "threadName":Ljava/lang/String;
    :catchall_4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v3, v3, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 399
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    move-object/from16 v17, v0

    const-string v18, "thread killed"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mThreads:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v2

    .line 354
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .restart local v12    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .restart local v13    # "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .restart local v14    # "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .restart local v15    # "source":Ljava/lang/Object;, "TImageSource;"
    .restart local v16    # "threadName":Ljava/lang/String;
    :cond_7
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemTokensCache:Ljava/util/Map;

    invoke-interface {v2, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    invoke-virtual {v2, v14}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->getItemsWithValidTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 360
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "job ignored due to no items with valid tokens: "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    monitor-exit v17

    goto/16 :goto_0

    .line 365
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_9
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;

    .line 366
    .local v5, "item":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    iget-object v2, v5, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->mToken:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 367
    .local v6, "token":Ljava/lang/Object;
    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "item ignored due to null token: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_a
    if-eqz v6, :cond_9

    .line 369
    invoke-virtual {v5}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;->getImageLoadHandler()Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;

    move-result-object v4

    .line 370
    .local v4, "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "item ignored due to null image load handler: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_b
    if-eqz v4, :cond_9

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v3, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 375
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v2}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    monitor-exit v3

    goto :goto_3

    .line 377
    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 376
    :cond_c
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mTokenCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v6}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 380
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v2, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mJobItemBitmapCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bitmap for item: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, " set against token: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;

    iget-object v0, v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader;->mUiThreadHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v2, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread$1;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoaderThread;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 392
    .end local v4    # "handler":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$ImageLoadHandler<TJobItem;TImageSource;>;"
    .end local v5    # "item":Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem;, "Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;"
    .end local v6    # "token":Ljava/lang/Object;
    :cond_d
    monitor-exit v17
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/16 :goto_0

    .line 401
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;>;"
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .end local v12    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TImageSource;>;"
    .end local v13    # "jobItem":Ljava/io/Serializable;, "TJobItem;"
    .end local v14    # "queueItems":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/deprecated/JSAImageLoader$QueueItem<TJobItem;TImageSource;>;>;"
    .end local v15    # "source":Ljava/lang/Object;, "TImageSource;"
    :catchall_6
    move-exception v2

    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    throw v2

    .end local v16    # "threadName":Ljava/lang/String;
    :catchall_7
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    throw v2
.end method
