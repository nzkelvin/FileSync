.class public Lcom/newrelic/agent/android/NewRelic;
.super Ljava/lang/Object;
.source "NewRelic.java"


# static fields
.field private static final DEFAULT_COLLECTOR_ADDR:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private appName:Ljava/lang/String;

.field private collectorAddress:Ljava/lang/String;

.field private location:Z

.field private loggingEnabled:Z

.field private ssl:Z

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "mobile-collector.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/NewRelic;->collectorAddress:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/newrelic/agent/android/NewRelic;->ssl:Z

    .line 19
    iput-boolean v1, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/NewRelic;->location:Z

    .line 23
    iput-object p1, p0, Lcom/newrelic/agent/android/NewRelic;->token:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/newrelic/agent/android/NewRelic;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/NewRelic;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/AndroidAgentLog;-><init>()V

    :goto_0
    invoke-static {v0}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V

    .line 49
    iget-object v1, p0, Lcom/newrelic/agent/android/NewRelic;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/newrelic/agent/android/NewRelic;->collectorAddress:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/newrelic/agent/android/NewRelic;->ssl:Z

    iget-boolean v4, p0, Lcom/newrelic/agent/android/NewRelic;->location:Z

    iget-object v5, p0, Lcom/newrelic/agent/android/NewRelic;->appName:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/newrelic/agent/android/AndroidAgentImpl;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 53
    :goto_1
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/newrelic/agent/android/logging/NullAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/NullAgentLog;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v6

    .line 51
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Error occurred while starting the New Relic agent!"

    invoke-interface {v0, v1, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public usingCollectorAddress(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/newrelic/agent/android/NewRelic;->collectorAddress:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public usingSsl(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 0
    .param p1, "useSsl"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/newrelic/agent/android/NewRelic;->ssl:Z

    .line 32
    return-object p0
.end method

.method public withLoggingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 0
    .param p1, "log"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    .line 42
    return-object p0
.end method
