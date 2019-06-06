.class public final Lnz/co/jsalibrary/android/util/JSALogUtil;
.super Ljava/lang/Object;
.source "JSALogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_ID:Ljava/lang/String; = "time"

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LOGCAT_FILTERSPEC_DEBUG:Ljava/lang/String; = "D"

.field public static final LOGCAT_FILTERSPEC_ERROR:Ljava/lang/String; = "E"

.field public static final LOGCAT_FILTERSPEC_FATAL:Ljava/lang/String; = "F"

.field public static final LOGCAT_FILTERSPEC_INFO:Ljava/lang/String; = "I"

.field public static final LOGCAT_FILTERSPEC_SILENT:Ljava/lang/String; = "S"

.field public static final LOGCAT_FILTERSPEC_VERBOSE:Ljava/lang/String; = "V"

.field public static final LOGCAT_FILTERSPEC_WARN:Ljava/lang/String; = "W"

.field public static final LOG_MESSAGE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final LOG_MESSAGE_DATABASE_INSERT:Ljava/lang/String; = "database insert complete"

.field public static final LOG_MESSAGE_DATABASE_RETRIEVAL:Ljava/lang/String; = "database retrieval complete"

.field public static final LOG_MESSAGE_JSON:Ljava/lang/String; = "json complete"

.field public static final LOG_MESSAGE_NETWORK:Ljava/lang/String; = "network access complete"

.field public static final LOG_MESSAGE_START:Ljava/lang/String; = "start"

.field private static final METHOD_NAME_PATTERN:Ljava/lang/String; = "([^.]*\\.[^.]*)\\("

.field private static final TIME_LOG_TAG:Ljava/lang/String; = "Time"

.field private static volatile sIndex:J

.field private static sMethodNamePattern:Ljava/util/regex/Pattern;

.field private static sTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil;->sTimeMap:Ljava/util/Map;

    .line 46
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized currentMethod()V
    .locals 5

    .prologue
    .line 478
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit v1

    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized currentMethod(Ljava/lang/Object;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 482
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit v1

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethod(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit v1

    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethod(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 498
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit v1

    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethod([Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit v1

    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethod([Ljava/lang/String;)V
    .locals 2
    .param p0, "tags"    # [Ljava/lang/String;

    .prologue
    .line 494
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit v1

    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized currentMethodId(Ljava/lang/Object;)V
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 506
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit v1

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized currentMethodId(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 510
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit v1

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethodId(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit v1

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethodId(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 526
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit v1

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethodId(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit v1

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized currentMethodId(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 522
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit v1

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d(Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 254
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->d(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit v1

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 270
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->d(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit v1

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized d(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p2, v3

    .line 276
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 276
    goto :goto_1

    .line 277
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 274
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized d(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 280
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p2, v3

    .line 282
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 282
    goto :goto_1

    .line 283
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 280
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized d(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 266
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 266
    goto :goto_1

    .line 267
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 264
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized d(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 258
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p1, v3

    .line 260
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 260
    goto :goto_1

    .line 261
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 258
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static declared-synchronized e(Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 182
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v1

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 198
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v1

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p2, v3

    .line 204
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 204
    goto :goto_1

    .line 205
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 202
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 208
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p2, v3

    .line 210
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 210
    goto :goto_1

    .line 211
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 208
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized e(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 194
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 194
    goto :goto_1

    .line 195
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 192
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized e(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 186
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p1, v3

    .line 188
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 188
    goto :goto_1

    .line 189
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 186
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static emailLog(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 564
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "temp"

    aput-object v3, v1, v2

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructureNoException([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 565
    .local v0, "tempFolder":Ljava/io/File;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->emailLog(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static emailLog(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tempFolder"    # Ljava/io/File;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 586
    sget-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->TIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->emailLog(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static emailLog(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;[Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tempFolder"    # Ljava/io/File;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "format"    # Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;
    .param p4, "filterSpecs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 631
    :try_start_0
    new-instance v1, Ljava/io/File;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "logcat.txt"

    aput-object v10, v8, v9

    invoke-static {v8}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "destinationFile":Ljava/io/File;
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->writeLogToFile(Ljava/io/File;)V

    .line 633
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 636
    .local v0, "attachment":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v4, "sendIntent":Landroid/content/Intent;
    const-string v8, "*/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " logcat dump"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 639
    .local v5, "subject":Ljava/lang/String;
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    if-eqz p2, :cond_0

    const-string v8, "android.intent.extra.EMAIL"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    :cond_0
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 642
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    const-string v8, "send email"

    invoke-static {v4, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 644
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0    # "attachment":Landroid/net/Uri;
    .end local v1    # "destinationFile":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "sendIntent":Landroid/content/Intent;
    .end local v5    # "subject":Ljava/lang/String;
    :goto_0
    return v6

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "exception":Ljava/lang/Exception;
    const-string v8, "error emailing logcat dump"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v9, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v9, v6, v7

    invoke-static {v8, v2, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move v6, v7

    .line 650
    goto :goto_0
.end method

.method public static emailLog(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "temp"

    aput-object v3, v1, v2

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildFolderStructureNoException([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 576
    .local v0, "tempFolder":Ljava/io/File;
    invoke-static {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->emailLog(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getCurrentMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getCurrentMethodName(I)Ljava/lang/String;
    .locals 5
    .param p0, "depth"    # I

    .prologue
    .line 538
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 539
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    aget-object v3, v2, p0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "line":Ljava/lang/String;
    sget-object v3, Lnz/co/jsalibrary/android/util/JSALogUtil;->sMethodNamePattern:Ljava/util/regex/Pattern;

    if-nez v3, :cond_0

    const-string v3, "([^.]*\\.[^.]*)\\("

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lnz/co/jsalibrary/android/util/JSALogUtil;->sMethodNamePattern:Ljava/util/regex/Pattern;

    .line 541
    :cond_0
    sget-object v3, Lnz/co/jsalibrary/android/util/JSALogUtil;->sMethodNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 542
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 543
    .end local v0    # "line":Ljava/lang/String;
    :goto_0
    monitor-exit v4

    return-object v0

    .restart local v0    # "line":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 538
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # I

    .prologue
    .line 426
    const-class v0, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v0

    const v1, 0x7fffffff

    :try_start_0
    invoke-static {p0, p1, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 430
    const-class v2, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 431
    .local v0, "traces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->subList(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->trim(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    .line 434
    invoke-static {v0, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 433
    :cond_0
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    .end local v0    # "traces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized i(Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 146
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v1

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit v1

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized i(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p2, v3

    .line 168
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 168
    goto :goto_1

    .line 169
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 166
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized i(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 172
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p2, v3

    .line 174
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 174
    goto :goto_1

    .line 175
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 172
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized i(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 158
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 158
    goto :goto_1

    .line 159
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 156
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized i(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 150
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p1, v3

    .line 152
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 152
    goto :goto_1

    .line 153
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 150
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static declared-synchronized id(Ljava/lang/Object;)V
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 442
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit v1

    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized id(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 446
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit v1

    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized id(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit v1

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized id(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 462
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit v1

    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized id(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit v1

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized id(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 458
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getIdentityMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit v1

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized logTime()V
    .locals 6

    .prologue
    .line 103
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    const-string v0, "time"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-class v5, Lnz/co/jsalibrary/android/util/JSALogUtil;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v1

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized logTime(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v1

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized logTime(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v1

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized logTime(Ljava/lang/Object;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 107
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    const-string v0, "time"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v1

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized logTime(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 111
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    const-string v0, "time"

    invoke-static {v0, p0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit v1

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized logTime(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 115
    const-class v6, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lnz/co/jsalibrary/android/util/JSALogUtil;->sTimeMap:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 116
    .local v2, "previousTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    .local v0, "currentTime":J
    sget-object v7, Lnz/co/jsalibrary/android/util/JSALogUtil;->sTimeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, p0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v0, v8

    const/4 v7, 0x1

    invoke-static {v8, v9, v7}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->humanReadableDuration(JZ)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "timeString":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    move-object p1, v4

    .line 120
    .end local p1    # "message":Ljava/lang/Object;
    :cond_0
    :goto_1
    array-length v7, p2

    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v3, p2, v5

    .line 121
    .local v3, "tag":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Time"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 118
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "timeString":Ljava/lang/String;
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 119
    .restart local v4    # "timeString":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 122
    .end local p1    # "message":Ljava/lang/Object;
    :cond_3
    invoke-static {p1, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->i(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v6

    return-void

    .line 115
    .end local v0    # "currentTime":J
    .end local v2    # "previousTime":Ljava/lang/Long;
    .end local v4    # "timeString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized logTimeCurrentMethod()V
    .locals 3

    .prologue
    .line 130
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v1

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized logTimeCurrentMethod(Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 134
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v1

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized logTimeCurrentMethod(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 138
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit v1

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized nextIndex()Ljava/lang/String;
    .locals 10

    .prologue
    .line 551
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "[% 4d] "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v6, Lnz/co/jsalibrary/android/util/JSALogUtil;->sIndex:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    sput-wide v8, Lnz/co/jsalibrary/android/util/JSALogUtil;->sIndex:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetTime()V
    .locals 2

    .prologue
    .line 79
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    const-string v0, "time"

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v1

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetTime(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v1

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetTime(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil;->sTimeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v1

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stackTrace()V
    .locals 5

    .prologue
    .line 362
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x4

    :try_start_0
    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit v1

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stackTrace(Ljava/lang/Object;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 366
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit v1

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stackTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 378
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x4

    :try_start_0
    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, p1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit v1

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTrace(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit v1

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTrace(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 386
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit v1

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTrace(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit v1

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTrace(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 370
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit v1

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stackTraceLimit(I)V
    .locals 5
    .param p0, "limit"    # I

    .prologue
    .line 394
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x4

    :try_start_0
    invoke-static {v0, v2, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit v1

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stackTraceLimit(ILjava/lang/Object;)V
    .locals 5
    .param p0, "limit"    # I
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 398
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p1, v0, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit v1

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stackTraceLimit(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "limit"    # I
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 410
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x4

    :try_start_0
    invoke-static {v0, v2, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v4, v2, v3

    invoke-static {v0, p2, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit v1

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTraceLimit(ILjava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2
    .param p0, "limit"    # I
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "thr"    # Ljava/lang/Throwable;
    .param p3, "tags"    # [Ljava/lang/String;

    .prologue
    .line 418
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p1, v0, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit v1

    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTraceLimit(ILjava/lang/Object;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "limit"    # I
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p1, v0, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit v1

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTraceLimit(ILjava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .param p0, "limit"    # I
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 402
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p1, v0, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit v1

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized stackTraceLimt(ILjava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "limit"    # I
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p3, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p1, v0, p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->getStackTrace(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit v1

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 218
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit v1

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit v1

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p2, v3

    .line 240
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 240
    goto :goto_1

    .line 241
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 238
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized v(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 244
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p2, v3

    .line 246
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 246
    goto :goto_1

    .line 247
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 244
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized v(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 230
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 230
    goto :goto_1

    .line 231
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 228
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized v(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 222
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p1, v3

    .line 224
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 224
    goto :goto_1

    .line 225
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 222
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static declared-synchronized w(Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 290
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit v1

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 306
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit v1

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized w(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p2, v3

    .line 312
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 312
    goto :goto_1

    .line 313
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 310
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized w(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 316
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p2, v3

    .line 318
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 318
    goto :goto_1

    .line 319
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 316
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized w(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 302
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 302
    goto :goto_1

    .line 303
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 300
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized w(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 294
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p1, v3

    .line 296
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 296
    goto :goto_1

    .line 297
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 294
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static writeLogToFile(Ljava/io/File;)V
    .locals 2
    .param p0, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    sget-object v0, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->TIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->writeLogToFile(Ljava/io/File;Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;[Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public static writeLogToFile(Ljava/io/File;Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;[Ljava/lang/String;)V
    .locals 8
    .param p0, "destination"    # Ljava/io/File;
    .param p1, "format"    # Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;
    .param p2, "filterSpecs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 704
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "logcat"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "-d"

    aput-object v7, v5, v6

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 705
    .local v1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->access$000(Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    if-eqz p2, :cond_2

    array-length v5, p2

    if-lez v5, :cond_2

    const-string v5, " "

    invoke-static {p2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-class v5, Ljava/lang/String;

    invoke-static {v1, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 710
    .local v4, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 713
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .local v3, "log":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 715
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnz/co/jsalibrary/android/util/JSALogUtil;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 705
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "log":Ljava/lang/StringBuilder;
    .end local v4    # "process":Ljava/lang/Process;
    :cond_3
    sget-object v5, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->TIME:Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;->access$000(Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 718
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "log":Ljava/lang/StringBuilder;
    .restart local v4    # "process":Ljava/lang/Process;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public static writeLogToFileNoException(Ljava/io/File;)Z
    .locals 2
    .param p0, "destination"    # Ljava/io/File;

    .prologue
    .line 664
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->writeLogToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    const/4 v1, 0x1

    .line 667
    :goto_0
    return v1

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeLogToFileNoException(Ljava/io/File;Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "destination"    # Ljava/io/File;
    .param p1, "format"    # Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;
    .param p2, "filterSpecs"    # [Ljava/lang/String;

    .prologue
    .line 677
    :try_start_0
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->writeLogToFile(Ljava/io/File;Lnz/co/jsalibrary/android/util/JSALogUtil$LogcatFormat;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    const/4 v1, 0x1

    .line 680
    :goto_0
    return v1

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized wtf(Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 326
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->wtf(Ljava/lang/Object;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit v1

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized wtf(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 342
    const-class v1, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/util/JSALogUtil;

    aput-object v3, v0, v2

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->wtf(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit v1

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized wtf(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    .locals 8
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p2, v3

    .line 348
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "WTF!! "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 348
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "WTF!! "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 349
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 346
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized wtf(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "thr"    # Ljava/lang/Throwable;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 352
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "index":Ljava/lang/String;
    array-length v5, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p2, v3

    .line 354
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "WTF!! "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 354
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "WTF!! "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 355
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 352
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized wtf(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 8
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p1, v3

    .line 338
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "WTF!! "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 338
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "WTF!! "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 339
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v4

    return-void

    .line 336
    .end local v1    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static varargs declared-synchronized wtf(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 330
    const-class v4, Lnz/co/jsalibrary/android/util/JSALogUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSALogUtil;->nextIndex()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "index":Ljava/lang/String;
    array-length v5, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p1, v3

    .line 332
    .local v1, "tag":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "WTF!! "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 332
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "WTF!! "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 333
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 330
    .end local v0    # "index":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method
