.class public Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;
.super Ljava/lang/Object;
.source "DefaultNewRelicApi.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v1/NewRelicApi;


# static fields
.field private static final AGENT_NAME:Ljava/lang/String; = "AndroidAgent"

.field private static final CPU_SYSTEM_UTILIZATION_METRIC:Ljava/lang/String; = "CPU/System/Utilization"

.field private static final CPU_TOTAL_UTILIZATION_METRIC:Ljava/lang/String; = "CPU/Total/Utilization"

.field private static final CPU_USER_UTILIZATION_METRIC:Ljava/lang/String; = "CPU/User/Utilization"

.field private static final MEMORY_USED_METRIC:Ljava/lang/String; = "Memory/Used"

.field private static final OS_NAME:Ljava/lang/String; = "Android"

.field private static final SESSION_DURATION_METRIC:Ljava/lang/String; = "Session/Duration"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final appName:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private connectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/newrelic/agent/android/api/v1/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

.field private deviceInfo:Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

.field private location:Lcom/newrelic/agent/android/instrumentation/Location;

.field private final packageId:Ljava/lang/String;

.field private final transportFactory:Lcom/newrelic/agent/android/transport/TransportFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/api/v1/Configuration;)V
    .locals 10
    .param p1, "config"    # Lcom/newrelic/agent/android/api/v1/Configuration;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getPackageId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/newrelic/agent/android/transport/http/HttpJsonTransportFactory;

    invoke-static {p1}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->getCollectorUrl(Lcom/newrelic/agent/android/api/v1/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getLicenseKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/newrelic/agent/android/transport/http/HttpJsonTransportFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getDeviceForm()Lcom/newrelic/agent/android/api/v1/DeviceForm;

    move-result-object v6

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getDeviceModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/v1/Configuration;->getAndroidRelease()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/transport/TransportFactory;Ljava/lang/String;Lcom/newrelic/agent/android/api/v1/DeviceForm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/transport/TransportFactory;Ljava/lang/String;Lcom/newrelic/agent/android/api/v1/DeviceForm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "packageId"    # Ljava/lang/String;
    .param p4, "transportFactory"    # Lcom/newrelic/agent/android/transport/TransportFactory;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "deviceForm"    # Lcom/newrelic/agent/android/api/v1/DeviceForm;
    .param p7, "deviceManufacturer"    # Ljava/lang/String;
    .param p8, "deviceModel"    # Ljava/lang/String;
    .param p9, "androidRelease"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/newrelic/agent/android/api/common/ConnectionState;->NULL:Lcom/newrelic/agent/android/api/common/ConnectionState;

    iput-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionListeners:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->appName:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->appVersion:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->packageId:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->transportFactory:Lcom/newrelic/agent/android/transport/TransportFactory;

    .line 93
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v8, "misc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p6, :cond_0

    .line 95
    const-string v0, "size"

    invoke-virtual {p6}, Lcom/newrelic/agent/android/api/v1/DeviceForm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    new-instance v0, Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    const-string v1, "Android"

    const-string v5, "AndroidAgent"

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p9

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->deviceInfo:Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    .line 98
    return-void
.end method

.method private buildAppInfoJson()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 415
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->appName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->appVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->packageId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private connect(Lcom/newrelic/agent/android/transport/Transport;)V
    .locals 28
    .param p1, "transport"    # Lcom/newrelic/agent/android/transport/Transport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;,
            Lcom/newrelic/agent/android/transport/TransportException;
        }
    .end annotation

    .prologue
    .line 234
    sget-object v5, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v12, "Connect in progress"

    invoke-interface {v5, v12}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 238
    new-instance v25, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct/range {v25 .. v25}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 240
    .local v25, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/json/JSONArray;

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->buildAppInfoJson()Lorg/json/JSONArray;

    move-result-object v15

    aput-object v15, v5, v12

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->deviceInfoWithLocation()Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v15

    aput-object v15, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v4, "connectRequest":Lorg/json/JSONArray;
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 243
    sget-object v5, Lcom/newrelic/agent/android/transport/Transport$MessageType;->CONNECT:Lcom/newrelic/agent/android/transport/Transport$MessageType;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-interface {v0, v5, v12, v1, v2}, Lcom/newrelic/agent/android/transport/Transport;->send(Lcom/newrelic/agent/android/transport/Transport$MessageType;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v24

    .line 244
    .local v24, "rawConnectResponse":Ljava/lang/String;
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v5

    const-string v12, "Supportability/MobileAgent/Collector/Connect"

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v5, v12, v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->recordTimeMs(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    monitor-enter p0

    .line 267
    :try_start_1
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    .local v22, "connectResponse":Lorg/json/JSONObject;
    const-string v5, "data_token"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 270
    .local v6, "dataToken":Ljava/lang/Object;
    const-string v5, "cross_process_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "crossProcessId":Ljava/lang/String;
    const-string v5, "server_timestamp"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 272
    .local v8, "serverTimestamp":J
    const-string v5, "data_report_period"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 273
    .local v10, "harvestIntervalInSeconds":J
    const-string v5, "report_max_transaction_count"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 274
    .local v16, "maxTransactionCount":J
    const-string v5, "report_max_transaction_age"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 275
    .local v13, "maxTransactionAgeInSeconds":J
    const-string v5, "collect_network_errors"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 276
    .local v20, "collectNetworkErrors":Z
    const-string v5, "error_limit"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 277
    .local v21, "errorLimit":I
    const-string v5, "response_body_limit"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 278
    .local v19, "responseBodyLimit":I
    const-string v5, "stack_trace_limit"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    .line 286
    .local v18, "stackTraceLimit":I
    if-nez v6, :cond_0

    .line 287
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->reset()V

    .line 288
    new-instance v5, Lcom/newrelic/agent/android/transport/TransportException;

    const-string v12, "Missing or invalid data token"

    invoke-direct {v5, v12}, Lcom/newrelic/agent/android/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 329
    .end local v6    # "dataToken":Ljava/lang/Object;
    .end local v7    # "crossProcessId":Ljava/lang/String;
    .end local v8    # "serverTimestamp":J
    .end local v10    # "harvestIntervalInSeconds":J
    .end local v13    # "maxTransactionAgeInSeconds":J
    .end local v16    # "maxTransactionCount":J
    .end local v18    # "stackTraceLimit":I
    .end local v19    # "responseBodyLimit":I
    .end local v20    # "collectNetworkErrors":Z
    .end local v21    # "errorLimit":I
    .end local v22    # "connectResponse":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 246
    .end local v4    # "connectRequest":Lorg/json/JSONArray;
    .end local v24    # "rawConnectResponse":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 247
    .local v23, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/newrelic/agent/android/transport/TransportException;

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Lcom/newrelic/agent/android/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 280
    .end local v23    # "e":Lorg/json/JSONException;
    .restart local v4    # "connectRequest":Lorg/json/JSONArray;
    .restart local v24    # "rawConnectResponse":Ljava/lang/String;
    :catch_1
    move-exception v23

    .line 281
    .restart local v23    # "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->reset()V

    .line 282
    sget-object v5, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v12, "Error while unpacking JSON response during connect"

    invoke-interface {v5, v12}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 283
    new-instance v5, Lcom/newrelic/agent/android/transport/TransportException;

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Lcom/newrelic/agent/android/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 291
    .end local v23    # "e":Lorg/json/JSONException;
    .restart local v6    # "dataToken":Ljava/lang/Object;
    .restart local v7    # "crossProcessId":Ljava/lang/String;
    .restart local v8    # "serverTimestamp":J
    .restart local v10    # "harvestIntervalInSeconds":J
    .restart local v13    # "maxTransactionAgeInSeconds":J
    .restart local v16    # "maxTransactionCount":J
    .restart local v18    # "stackTraceLimit":I
    .restart local v19    # "responseBodyLimit":I
    .restart local v20    # "collectNetworkErrors":Z
    .restart local v21    # "errorLimit":I
    .restart local v22    # "connectResponse":Lorg/json/JSONObject;
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 292
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->reset()V

    .line 293
    new-instance v5, Lcom/newrelic/agent/android/transport/TransportException;

    const-string v12, "Missing cross process ID"

    invoke-direct {v5, v12}, Lcom/newrelic/agent/android/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 296
    :cond_2
    const-wide/16 v26, 0x0

    cmp-long v5, v16, v26

    if-lez v5, :cond_3

    const-wide/16 v26, 0x1e

    cmp-long v5, v16, v26

    if-lez v5, :cond_4

    .line 297
    :cond_3
    const-wide/16 v16, 0x1e

    .line 300
    :cond_4
    const-wide/16 v26, 0x0

    cmp-long v5, v13, v26

    if-lez v5, :cond_5

    const-wide/16 v26, 0x258

    cmp-long v5, v13, v26

    if-lez v5, :cond_6

    .line 301
    :cond_5
    const-wide/16 v13, 0x258

    .line 304
    :cond_6
    const-wide/16 v26, 0x0

    cmp-long v5, v8, v26

    if-gtz v5, :cond_7

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->reset()V

    .line 306
    new-instance v5, Lcom/newrelic/agent/android/transport/TransportException;

    const-string v12, "Invalid server timestamp"

    invoke-direct {v5, v12}, Lcom/newrelic/agent/android/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :cond_7
    const-wide/16 v26, 0x0

    cmp-long v5, v10, v26

    if-lez v5, :cond_8

    const-wide/16 v26, 0x3c

    cmp-long v5, v10, v26

    if-lez v5, :cond_9

    .line 310
    :cond_8
    const-wide/16 v10, 0x3c

    .line 313
    :cond_9
    new-instance v5, Lcom/newrelic/agent/android/api/common/ConnectionState;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v5 .. v21}, Lcom/newrelic/agent/android/api/common/ConnectionState;-><init>(Ljava/lang/Object;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;JIIZI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->setConnectionState(Lcom/newrelic/agent/android/api/common/ConnectionState;)V

    .line 327
    sget-object v5, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Connected, notifying listeners. Got data token: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->getConnectionState()Lcom/newrelic/agent/android/api/common/ConnectionState;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->notifyConnected(Lcom/newrelic/agent/android/api/common/ConnectionState;)V

    .line 329
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    return-void
.end method

.method private data(Lcom/newrelic/agent/android/transport/Transport;Ljava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;DZ)V
    .locals 23
    .param p1, "transport"    # Lcom/newrelic/agent/android/transport/Transport;
    .param p4, "machineMeasurements"    # Lcom/newrelic/agent/android/api/common/MachineMeasurements;
    .param p5, "sessionTime"    # D
    .param p7, "lastRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/transport/Transport;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/ErrorData;",
            ">;",
            "Lcom/newrelic/agent/android/api/common/MachineMeasurements;",
            "DZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;,
            Lcom/newrelic/agent/android/transport/TransportException;
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "transactionData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    .local p3, "errorData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->getConnectionState()Lcom/newrelic/agent/android/api/common/ConnectionState;

    move-result-object v6

    .line 334
    .local v6, "connectionState":Lcom/newrelic/agent/android/api/common/ConnectionState;
    if-nez v6, :cond_0

    .line 335
    sget-object v18, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v19, "Connection state is unexpectedly null! Aborting."

    invoke-interface/range {v18 .. v19}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 346
    .local v16, "rootMetrics":Lorg/json/JSONObject;
    :try_start_0
    const-string v18, "Memory/Used"

    invoke-virtual/range {p4 .. p4}, Lcom/newrelic/agent/android/api/common/MachineMeasurements;->getMemoryUsage()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 347
    const-string v18, "CPU/User/Utilization"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v18, "CPU/System/Utilization"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v18, "CPU/Total/Utilization"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    if-eqz p7, :cond_1

    .line 352
    const-string v18, "Session/Duration"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 354
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->deviceInfoWithLocation()Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;->toJSONArray()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 360
    .local v8, "deviceInfo":Lorg/json/JSONArray;
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 361
    .local v17, "transactionDataArray":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .line 362
    .local v14, "numErrors":I
    const/4 v15, 0x0

    .line 363
    .local v15, "numFailedCalls":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/newrelic/agent/android/api/common/TransactionData;

    .line 364
    .local v13, "item":Lcom/newrelic/agent/android/api/common/TransactionData;
    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v18

    if-eqz v18, :cond_3

    .line 365
    add-int/lit8 v14, v14, 0x1

    .line 370
    :cond_2
    :goto_2
    new-instance v18, Lorg/json/JSONArray;

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->asList()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 356
    .end local v8    # "deviceInfo":Lorg/json/JSONArray;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "item":Lcom/newrelic/agent/android/api/common/TransactionData;
    .end local v14    # "numErrors":I
    .end local v15    # "numFailedCalls":I
    .end local v17    # "transactionDataArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 357
    .local v9, "e":Lorg/json/JSONException;
    new-instance v18, Lcom/newrelic/agent/android/transport/TransportException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Lcom/newrelic/agent/android/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 367
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v8    # "deviceInfo":Lorg/json/JSONArray;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "item":Lcom/newrelic/agent/android/api/common/TransactionData;
    .restart local v14    # "numErrors":I
    .restart local v15    # "numFailedCalls":I
    .restart local v17    # "transactionDataArray":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v18

    const/16 v19, 0x190

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 368
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 373
    .end local v13    # "item":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_4
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 374
    .local v11, "errorDataArray":Lorg/json/JSONArray;
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/newrelic/agent/android/api/common/ErrorData;

    .line 375
    .local v10, "error":Lcom/newrelic/agent/android/api/common/ErrorData;
    new-instance v18, Lorg/json/JSONArray;

    invoke-virtual {v10}, Lcom/newrelic/agent/android/api/common/ErrorData;->asList()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 383
    .end local v10    # "error":Lcom/newrelic/agent/android/api/common/ErrorData;
    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/newrelic/agent/android/stats/StatsEngine;->populateMetrics(Lorg/json/JSONObject;)V

    .line 385
    sget-object v18, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v19, "Sending {0} transactions ({1} errors, {2} failed calls)"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 386
    sget-object v18, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v19, "Sending {0} error traces"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 388
    new-instance v7, Lorg/json/JSONArray;

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v6}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getDataToken()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    invoke-virtual {v6}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getHarvestIntervalInSeconds()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object v17, v18, v19

    const/16 v19, 0x4

    aput-object v16, v18, v19

    const/16 v19, 0x5

    aput-object v11, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 389
    .local v7, "data":Lorg/json/JSONArray;
    sget-object v18, Lcom/newrelic/agent/android/transport/Transport$MessageType;->DATA:Lcom/newrelic/agent/android/transport/Transport$MessageType;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v6}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getServerTimestamp()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/newrelic/agent/android/transport/Transport;->send(Lcom/newrelic/agent/android/transport/Transport$MessageType;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private deviceInfoWithLocation()Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->location:Lcom/newrelic/agent/android/instrumentation/Location;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->deviceInfo:Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    iget-object v1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->location:Lcom/newrelic/agent/android/instrumentation/Location;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/Location;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->location:Lcom/newrelic/agent/android/instrumentation/Location;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/Location;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;->withLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    move-result-object v0

    monitor-exit p0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->deviceInfo:Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    monitor-exit p0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private disconnect(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :try_start_1
    invoke-direct {p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->notifyDisconnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->reset()V

    .line 204
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->disable()V

    .line 207
    :cond_0
    monitor-exit p0

    .line 208
    return-void

    .line 203
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->reset()V

    .line 204
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->disable()V

    :cond_1
    throw v0

    .line 207
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static getCollectorUrl(Lcom/newrelic/agent/android/api/v1/Configuration;)Ljava/lang/String;
    .locals 4
    .param p0, "config"    # Lcom/newrelic/agent/android/api/v1/Configuration;

    .prologue
    .line 223
    const-string v1, "{0}://{1}/mobile/v1"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/v1/Configuration;->isSslEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/v1/Configuration;->getCollectorHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method private getConnectionListeners()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/v1/ConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v2, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 409
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 410
    .local v0, "connectionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/api/v1/ConnectionListener;>;"
    monitor-exit v2

    .line 411
    return-object v0

    .line 410
    .end local v0    # "connectionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/api/v1/ConnectionListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getConnectionState()Lcom/newrelic/agent/android/api/common/ConnectionState;
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyConnected(Lcom/newrelic/agent/android/api/common/ConnectionState;)V
    .locals 4
    .param p1, "connectionState"    # Lcom/newrelic/agent/android/api/common/ConnectionState;

    .prologue
    .line 393
    new-instance v1, Lcom/newrelic/agent/android/api/v1/ConnectionEvent;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/api/v1/ConnectionEvent;-><init>(Ljava/lang/Object;Lcom/newrelic/agent/android/api/common/ConnectionState;)V

    .line 394
    .local v1, "e":Lcom/newrelic/agent/android/api/v1/ConnectionEvent;
    invoke-direct {p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->getConnectionListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/api/v1/ConnectionListener;

    .line 395
    .local v0, "connectionListener":Lcom/newrelic/agent/android/api/v1/ConnectionListener;
    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/api/v1/ConnectionListener;->connected(Lcom/newrelic/agent/android/api/v1/ConnectionEvent;)V

    goto :goto_0

    .line 397
    .end local v0    # "connectionListener":Lcom/newrelic/agent/android/api/v1/ConnectionListener;
    :cond_0
    return-void
.end method

.method private notifyDisconnected()V
    .locals 4

    .prologue
    .line 400
    new-instance v1, Lcom/newrelic/agent/android/api/v1/ConnectionEvent;

    invoke-direct {v1, p0}, Lcom/newrelic/agent/android/api/v1/ConnectionEvent;-><init>(Ljava/lang/Object;)V

    .line 401
    .local v1, "e":Lcom/newrelic/agent/android/api/v1/ConnectionEvent;
    invoke-direct {p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->getConnectionListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/api/v1/ConnectionListener;

    .line 402
    .local v0, "connectionListener":Lcom/newrelic/agent/android/api/v1/ConnectionListener;
    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/api/v1/ConnectionListener;->disconnected(Lcom/newrelic/agent/android/api/v1/ConnectionEvent;)V

    goto :goto_0

    .line 404
    .end local v0    # "connectionListener":Lcom/newrelic/agent/android/api/v1/ConnectionListener;
    :cond_0
    return-void
.end method

.method private sendDataInternal(DLjava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;DZ)V
    .locals 10
    .param p1, "duration"    # D
    .param p5, "machineMeasurements"    # Lcom/newrelic/agent/android/api/common/MachineMeasurements;
    .param p6, "sessionTime"    # D
    .param p8, "lastRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/ErrorData;",
            ">;",
            "Lcom/newrelic/agent/android/api/common/MachineMeasurements;",
            "DZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;,
            Lcom/newrelic/agent/android/transport/TransportException;
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "transactionData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    .local p4, "errorData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    iget-object v1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->transportFactory:Lcom/newrelic/agent/android/transport/TransportFactory;

    invoke-interface {v1}, Lcom/newrelic/agent/android/transport/TransportFactory;->newTransport()Lcom/newrelic/agent/android/transport/Transport;

    move-result-object v2

    .line 158
    .local v2, "transport":Lcom/newrelic/agent/android/transport/Transport;
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connect(Lcom/newrelic/agent/android/transport/Transport;)V
    :try_end_0
    .catch Lcom/newrelic/agent/android/transport/DisableAgentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/newrelic/agent/android/transport/DisconnectAgentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/newrelic/agent/android/transport/FlushTransactionDataException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 166
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->data(Lcom/newrelic/agent/android/transport/Transport;Ljava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;DZ)V
    :try_end_1
    .catch Lcom/newrelic/agent/android/transport/DisconnectAgentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/newrelic/agent/android/transport/DisableAgentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/newrelic/agent/android/transport/FlushTransactionDataException; {:try_start_1 .. :try_end_1} :catch_3

    .line 188
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lcom/newrelic/agent/android/transport/DisconnectAgentException;
    :try_start_2
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "The collector has asked the agent to disconnect while sending metric data"

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->disconnect(Z)V

    .line 173
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connect(Lcom/newrelic/agent/android/transport/Transport;)V

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 174
    invoke-direct/range {v1 .. v8}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->data(Lcom/newrelic/agent/android/transport/Transport;Ljava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;DZ)V
    :try_end_2
    .catch Lcom/newrelic/agent/android/transport/DisableAgentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/newrelic/agent/android/transport/DisconnectAgentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/newrelic/agent/android/transport/FlushTransactionDataException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 177
    .end local v0    # "e":Lcom/newrelic/agent/android/transport/DisconnectAgentException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Lcom/newrelic/agent/android/transport/DisableAgentException;
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "The collector has asked the agent to disable itself"

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->disconnect(Z)V

    goto :goto_0

    .line 181
    .end local v0    # "e":Lcom/newrelic/agent/android/transport/DisableAgentException;
    :catch_2
    move-exception v0

    .line 182
    .local v0, "e":Lcom/newrelic/agent/android/transport/DisconnectAgentException;
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "The collector has asked the agent to disconnect"

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->disconnect(Z)V

    goto :goto_0

    .line 185
    .end local v0    # "e":Lcom/newrelic/agent/android/transport/DisconnectAgentException;
    :catch_3
    move-exception v0

    .line 186
    .local v0, "e":Lcom/newrelic/agent/android/transport/FlushTransactionDataException;
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flushing transaction data (transaction too big?): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/transport/FlushTransactionDataException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addConnectionListener(Lcom/newrelic/agent/android/api/v1/ConnectionListener;)V
    .locals 2
    .param p1, "connectionListener"    # Lcom/newrelic/agent/android/api/v1/ConnectionListener;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDataToken()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getDataToken()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/newrelic/agent/android/api/v1/DeviceInfo;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->deviceInfo:Lcom/newrelic/agent/android/api/v1/SimpleDeviceInfo;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    sget-object v1, Lcom/newrelic/agent/android/api/common/ConnectionState;->NULL:Lcom/newrelic/agent/android/api/common/ConnectionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeConnectionListener(Lcom/newrelic/agent/android/api/v1/ConnectionListener;)V
    .locals 2
    .param p1, "connectionListener"    # Lcom/newrelic/agent/android/api/v1/ConnectionListener;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/api/common/ConnectionState;->NULL:Lcom/newrelic/agent/android/api/common/ConnectionState;

    iput-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;,
            Lcom/newrelic/agent/android/transport/TransportException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->transportFactory:Lcom/newrelic/agent/android/transport/TransportFactory;

    invoke-interface {v0}, Lcom/newrelic/agent/android/transport/TransportFactory;->newTransport()Lcom/newrelic/agent/android/transport/Transport;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connect(Lcom/newrelic/agent/android/transport/Transport;)V

    .line 129
    return-void
.end method

.method public sendData(DLjava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;)V
    .locals 9
    .param p1, "duration"    # D
    .param p5, "machineMeasurements"    # Lcom/newrelic/agent/android/api/common/MachineMeasurements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/ErrorData;",
            ">;",
            "Lcom/newrelic/agent/android/api/common/MachineMeasurements;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;,
            Lcom/newrelic/agent/android/transport/TransportException;
        }
    .end annotation

    .prologue
    .line 133
    .local p3, "transactionData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    .local p4, "errorData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->sendDataInternal(DLjava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;DZ)V

    .line 134
    return-void
.end method

.method public sendData(DLjava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;D)V
    .locals 9
    .param p1, "duration"    # D
    .param p5, "machineMeasurements"    # Lcom/newrelic/agent/android/api/common/MachineMeasurements;
    .param p6, "sessionTime"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/api/common/ErrorData;",
            ">;",
            "Lcom/newrelic/agent/android/api/common/MachineMeasurements;",
            "D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;,
            Lcom/newrelic/agent/android/transport/TransportException;
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "transactionData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    .local p4, "errorData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/api/common/ErrorData;>;"
    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->sendDataInternal(DLjava/util/Collection;Ljava/util/Collection;Lcom/newrelic/agent/android/api/common/MachineMeasurements;DZ)V

    .line 139
    return-void
.end method

.method public setConnectionState(Lcom/newrelic/agent/android/api/common/ConnectionState;)V
    .locals 1
    .param p1, "connectionState"    # Lcom/newrelic/agent/android/api/common/ConnectionState;

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLocation(Lcom/newrelic/agent/android/instrumentation/Location;)V
    .locals 1
    .param p1, "location"    # Lcom/newrelic/agent/android/instrumentation/Location;

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iput-object p1, p0, Lcom/newrelic/agent/android/api/v1/DefaultNewRelicApi;->location:Lcom/newrelic/agent/android/instrumentation/Location;

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
