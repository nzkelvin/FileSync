.class public Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;
.super Ljava/lang/Object;
.source "JSABackgroundJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TT;>;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .param p4, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TT;>;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TT;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .param p4, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .param p5, "logException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TT;>;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TT;>;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "job cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v3

    .line 159
    .local v3, "exception":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error handling background job ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "exceptionMessage":Ljava/lang/String;
    if-eqz p5, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v6, v3, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 161
    invoke-interface/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .param p4, "logException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TT;>;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TT;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$Helper;->execute(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
