.class Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;
.super Ljava/lang/Thread;
.source "HarvestHeartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/background/HarvestHeartbeat;->finalSendData(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

.field final synthetic val$lastHarvestTime:J

.field final synthetic val$sessionStartTime:J

.field final synthetic val$thisTime:J


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/background/HarvestHeartbeat;JJJ)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    iput-wide p2, p0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->val$sessionStartTime:J

    iput-wide p4, p0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->val$thisTime:J

    iput-wide p6, p0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->val$lastHarvestTime:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 218
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$000(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 220
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$100(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$200(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v10

    .line 225
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$300()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v2

    const-string v3, "Interrupted waiting for harvest to finish"

    invoke-interface {v2, v3, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$000(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$700(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 251
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$802(Lcom/newrelic/agent/android/background/HarvestHeartbeat;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 252
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 254
    invoke-static {}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$300()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v2

    const-string v3, "Background thread has completed"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$900(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)V

    .line 258
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 252
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 231
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$000(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 234
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getAndClearTransactionData()Ljava/util/List;

    move-result-object v5

    .line 235
    .local v5, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getAndClearErrorData()Ljava/util/List;

    move-result-object v6

    .line 237
    .local v6, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 238
    .local v12, "sessionEndTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->val$sessionStartTime:J

    sub-long v2, v12, v2

    long-to-double v2, v2

    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    div-double v8, v2, v14

    .line 239
    .local v8, "sessionTime":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$400(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Lcom/newrelic/agent/android/util/ConnectivitySampler;

    move-result-object v2

    invoke-interface {v2}, Lcom/newrelic/agent/android/util/ConnectivitySampler;->sample()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$600(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Lcom/newrelic/agent/android/api/v1/NewRelicApi;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->val$thisTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->val$lastHarvestTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v3, v14, v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v7}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$500(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Lcom/newrelic/agent/android/util/MachineMeasurementsSampler;

    move-result-object v7

    invoke-interface {v7}, Lcom/newrelic/agent/android/util/MachineMeasurementsSampler;->sample()Lcom/newrelic/agent/android/api/common/MachineMeasurements;

    move-result-object v7

    invoke-interface/range {v2 .. v9}, Lcom/newrelic/agent/android/api/v1/NewRelicApi;->sendData(DLjava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;D)V

    .line 243
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->reset()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 250
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$700(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 251
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$802(Lcom/newrelic/agent/android/background/HarvestHeartbeat;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 252
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 254
    invoke-static {}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$300()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v2

    const-string v3, "Background thread has completed"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$900(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)V

    goto/16 :goto_1

    .line 231
    .end local v5    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    .end local v6    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    .end local v8    # "sessionTime":D
    .end local v12    # "sessionEndTime":J
    :catchall_1
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v3}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$000(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 246
    :catch_1
    move-exception v10

    .line 247
    .local v10, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-static {}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$300()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v2

    const-string v3, "Failed to send final post"

    invoke-interface {v2, v3, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$700(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 251
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$802(Lcom/newrelic/agent/android/background/HarvestHeartbeat;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 252
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 254
    invoke-static {}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$300()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v2

    const-string v3, "Background thread has completed"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v2}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$900(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)V

    goto/16 :goto_1

    .line 252
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    .restart local v6    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    .restart local v8    # "sessionTime":D
    .restart local v12    # "sessionEndTime":J
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2

    .end local v5    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    .end local v6    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    .end local v8    # "sessionTime":D
    .end local v12    # "sessionEndTime":J
    .restart local v10    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v2

    .line 250
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v3}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$700(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 251
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$802(Lcom/newrelic/agent/android/background/HarvestHeartbeat;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 252
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 254
    invoke-static {}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$300()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    const-string v4, "Background thread has completed"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/background/HarvestHeartbeat$2;->this$0:Lcom/newrelic/agent/android/background/HarvestHeartbeat;

    invoke-static {v3}, Lcom/newrelic/agent/android/background/HarvestHeartbeat;->access$900(Lcom/newrelic/agent/android/background/HarvestHeartbeat;)V

    throw v2

    .line 252
    :catchall_5
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v2
.end method
