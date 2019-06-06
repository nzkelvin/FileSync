.class Lnz/co/jsalibrary/android/service/JSAAwakeIntentService$1;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "JSAAwakeIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->constructTickerRunnable()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;J)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;
    .param p2, "tickIntervalMillis"    # J

    .prologue
    .line 126
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;

    invoke-direct {p0, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public tick()V
    .locals 6

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 129
    .local v0, "currentTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service running for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;

    invoke-static {v4}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->access$000(Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->humanReadableDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;

    invoke-static {v4}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->access$100(Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "message":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 131
    return-void
.end method
