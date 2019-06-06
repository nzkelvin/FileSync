.class public final Lcom/newrelic/agent/android/util/ConnectionStateUtil;
.super Ljava/lang/Object;
.source "ConnectionStateUtil.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/ConnectionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 73
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dataToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "agentVersion"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crossProcessId"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "serverTimestamp"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "harvestIntervalInSeconds"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "maxTransactionAgeInSeconds"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "maxTransactionCount"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stackTraceLimit"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "responseBodyLimit"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "collectNetworkErrors"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "errorLimit"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appToken"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public static fromSharedPreferences(Landroid/content/SharedPreferences;)Lcom/newrelic/agent/android/api/common/ConnectionState;
    .locals 26
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 21
    const-string v5, "dataToken"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "dataTokenStr":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 30
    :goto_0
    const-string v5, "crossProcessId"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 31
    .local v7, "crossProcessId":Ljava/lang/String;
    const-string v5, "serverTimestamp"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 32
    .local v8, "serverTimestamp":J
    const-string v5, "harvestIntervalInSeconds"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 33
    .local v10, "harvestIntervalInSeconds":J
    const-string v5, "maxTransactionAgeInSeconds"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 34
    .local v13, "maxTransactionAgeInSeconds":J
    const-string v5, "maxTransactionCount"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 35
    .local v16, "maxTransactionCount":J
    const-string v5, "stackTraceLimit"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 36
    .local v18, "stackTraceLimit":I
    const-string v5, "responseBodyLimit"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 37
    .local v19, "responseBodyLimit":I
    const-string v5, "collectNetworkErrors"

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 38
    .local v20, "collectNetworkErrors":Z
    const-string v5, "errorLimit"

    const/16 v12, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 39
    .local v21, "errorLimit":I
    new-instance v5, Lcom/newrelic/agent/android/api/common/ConnectionState;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v5 .. v21}, Lcom/newrelic/agent/android/api/common/ConnectionState;-><init>(Ljava/lang/Object;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;JIIZI)V

    return-object v5

    .line 26
    .end local v7    # "crossProcessId":Ljava/lang/String;
    .end local v8    # "serverTimestamp":J
    .end local v10    # "harvestIntervalInSeconds":J
    .end local v13    # "maxTransactionAgeInSeconds":J
    .end local v16    # "maxTransactionCount":J
    .end local v18    # "stackTraceLimit":I
    .end local v19    # "responseBodyLimit":I
    .end local v20    # "collectNetworkErrors":Z
    .end local v21    # "errorLimit":I
    :catch_0
    move-exception v22

    .line 27
    .local v22, "e":Lorg/json/JSONException;
    const/4 v6, 0x0

    .line 28
    .local v6, "dataToken":Ljava/lang/Object;
    sget-object v5, Lcom/newrelic/agent/android/util/ConnectionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v12, "Failed to parse data token"

    move-object/from16 v0, v22

    invoke-interface {v5, v12, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(Lcom/newrelic/agent/android/api/common/ConnectionState;)Z
    .locals 1
    .param p0, "connectionState"    # Lcom/newrelic/agent/android/api/common/ConnectionState;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getDataToken()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getCrossProcessId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/util/ConnectionStateUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveSharedPreferences(Landroid/content/SharedPreferences;Lcom/newrelic/agent/android/api/common/ConnectionState;Lcom/newrelic/agent/android/api/v1/DeviceInfo;Ljava/lang/String;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "connectionState"    # Lcom/newrelic/agent/android/api/common/ConnectionState;
    .param p2, "deviceInfo"    # Lcom/newrelic/agent/android/api/v1/DeviceInfo;
    .param p3, "appToken"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dataToken"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getDataToken()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "agentVersion"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crossProcessId"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getCrossProcessId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "serverTimestamp"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getServerTimestamp()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "harvestIntervalInSeconds"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getHarvestIntervalInSeconds()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "maxTransactionAgeInSeconds"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getMaxTransactionAgeInSeconds()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "maxTransactionCount"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getMaxTransactionCount()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stackTraceLimit"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getStackTraceLimit()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "responseBodyLimit"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getResponseBodyLimit()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "collectNetworkErrors"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->isCollectingNetworkErrors()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "errorLimit"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/ConnectionState;->getErrorLimit()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appToken"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method
