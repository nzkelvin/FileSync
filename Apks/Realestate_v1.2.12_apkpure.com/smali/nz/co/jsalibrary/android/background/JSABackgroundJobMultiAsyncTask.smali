.class public Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.super Lnz/co/jsalibrary/android/service/JSANamedAsyncTask;
.source "JSABackgroundJobMultiAsyncTask.java"

# interfaces
.implements Lnz/co/jsalibrary/android/service/JSAStoppableProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;,
        Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;,
        Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;,
        Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;,
        Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;,
        Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/service/JSANamedAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;"
    }
.end annotation


# instance fields
.field private final mBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mThreadType:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

.field private final mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
            "<*>;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod<*>;>;"
    new-instance v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$1;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$1;-><init>()V

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$2;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$2;-><init>()V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->generate(ILnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    invoke-direct {p0, v0, p2, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;>;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;>;"
    .local p3, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    sget-object v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "threadType"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;>;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;>;"
    .local p3, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSANamedAsyncTask;-><init>()V

    .line 131
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": jobs cannot be null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": bundles cannot be null or different size to jobs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thread type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mUIThreadHandler:Landroid/os/Handler;

    .line 139
    iput-object p4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mThreadType:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    .line 140
    iput-object p3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mBundles:Ljava/util/List;

    .line 141
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mJobs:Ljava/util/List;

    .line 142
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;"
    sget-object v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "threadType"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    new-array v0, v1, [Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    aput-object p1, v0, v2

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v1, [Landroid/os/Bundle;

    aput-object p3, v1, v2

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p4}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
            "<*>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "method":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>([Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>([Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;[Landroid/os/Bundle;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bundles"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;",
            "Landroid/content/Context;",
            "[",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "jobs":[Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "[Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)V

    .line 120
    return-void
.end method

.method public constructor <init>([Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;[Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bundles"    # [Landroid/os/Bundle;
    .param p4, "threadType"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;",
            "Landroid/content/Context;",
            "[",
            "Landroid/os/Bundle;",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "jobs":[Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "[Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p4}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V

    .line 124
    return-void
.end method

.method public constructor <init>([Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
            "<*>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "methods":[Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;, "[Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod<*>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method protected static executeTask(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)V
    .locals 8
    .param p0, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;
    .param p1, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mResultList:Ljava/util/List;

    iget v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJobIndex:I

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJobBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mUIThreadHandler:Landroid/os/Handler;

    invoke-interface {v2, v4, v5, v6, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-void

    .line 232
    :catch_0
    move-exception v3

    .line 233
    .local v3, "exception":Ljava/lang/Exception;
    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mResultList:Ljava/util/List;

    iget v7, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJobIndex:I

    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJobBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mUIThreadHandler:Landroid/os/Handler;

    move-object v5, p1

    .line 234
    invoke-interface/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    invoke-interface {v6, v7, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    throw v3
.end method

.method protected static killHandlerThread(Landroid/os/Looper;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V
    .locals 3
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .prologue
    .line 296
    iget-object v1, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mUIThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 298
    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 299
    return-void
.end method

.method protected static onHandleHandlerThreadTask(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)V
    .locals 2
    .param p0, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;
    .param p1, "stoppable"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    instance-of v1, v1, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    check-cast v1, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    move-object v0, v1

    .line 270
    .local v0, "asyncJob":Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob<*>;"
    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;->setJobTerminator(Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;)V

    .line 271
    :cond_0
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->executeTask(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)V

    .line 272
    return-void

    .line 269
    .end local v0    # "asyncJob":Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob<*>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static onHandlerThreadTaskHandled(Landroid/os/Looper;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V
    .locals 1
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .prologue
    .line 286
    iget-object v0, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    instance-of v0, v0, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->killHandlerThread(Landroid/os/Looper;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mJobs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->add(Ljava/util/List;Ljava/lang/Object;II)Ljava/util/List;

    move-result-object v3

    .line 151
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mJobs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v5, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Thread;>;"
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/service/JSANamedAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mJobs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 157
    new-instance v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;-><init>()V

    .line 158
    .local v2, "info":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;
    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mContext:Landroid/content/Context;

    iput-object v6, v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mContext:Landroid/content/Context;

    .line 159
    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mUIThreadHandler:Landroid/os/Handler;

    iput-object v6, v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mUIThreadHandler:Landroid/os/Handler;

    .line 160
    iput-object v3, v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mResultList:Ljava/util/List;

    .line 161
    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mJobs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    iput-object v6, v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 162
    iget-object v6, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mBundles:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJobBundle:Landroid/os/Bundle;

    .line 163
    iput v1, v2, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJobIndex:I

    .line 165
    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->runThread(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)Ljava/lang/Thread;

    move-result-object v4

    .line 166
    .local v4, "thread":Ljava/lang/Thread;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v2    # "info":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .restart local v4    # "thread":Ljava/lang/Thread;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 172
    :catch_0
    move-exception v7

    goto :goto_1

    .line 178
    .end local v4    # "thread":Ljava/lang/Thread;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->onDoInBackgroundException(Ljava/lang/Exception;)V

    .line 180
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getThreadName(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSABackgroundJobMultiAsyncTask ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

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

.method public isStopped()Z
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onDoInBackgroundException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 186
    const-string v0, "error handling background job"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 187
    return-void
.end method

.method protected runHandlerThread(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)Landroid/os/HandlerThread;
    .locals 4
    .param p1, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .prologue
    .line 201
    new-instance v2, Landroid/os/HandlerThread;

    iget-object v3, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->getThreadName(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 203
    new-instance v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;-><init>(Landroid/os/Looper;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)V

    .line 204
    .local v1, "serviceHandler":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-object v2
.end method

.method protected runPlainThread(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)Ljava/lang/Thread;
    .locals 2
    .param p1, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$3;

    invoke-direct {v1, p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$3;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 221
    return-object v0
.end method

.method protected runThread(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)Ljava/lang/Thread;
    .locals 2
    .param p1, "info"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    .prologue
    .line 195
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->mThreadType:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    sget-object v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->runHandlerThread(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->runPlainThread(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method
