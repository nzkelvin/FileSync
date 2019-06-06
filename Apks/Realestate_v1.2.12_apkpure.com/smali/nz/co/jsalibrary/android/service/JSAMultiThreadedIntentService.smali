.class public abstract Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;
.super Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
.source "JSAMultiThreadedIntentService.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;-><init>(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxThreadCount"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;-><init>(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxThreadCount"    # I
    .param p3, "handlerThreadTimeout"    # J

    .prologue
    .line 35
    sget-object v3, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;-><init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;J)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxThreadCount"    # I
    .param p3, "threadType"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;-><init>(Ljava/lang/String;ILnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getThreadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSAMultiThreadedIntentService ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onThreadEndStopSelf()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;->getQueuedIntentCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;->getRunningIntentCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedIntentService;->getParkedHandlerThreadCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
