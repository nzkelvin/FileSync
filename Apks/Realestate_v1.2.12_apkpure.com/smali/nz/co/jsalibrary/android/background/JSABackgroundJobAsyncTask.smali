.class public Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;
.super Lnz/co/jsalibrary/android/service/JSANamedAsyncTask;
.source "JSABackgroundJobAsyncTask.java"

# interfaces
.implements Lnz/co/jsalibrary/android/service/JSAStoppableProcess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/service/JSANamedAsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "TT;>;",
        "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;"
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private final mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TT;>;"
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSANamedAsyncTask;-><init>()V

    .line 43
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": job cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mUIThreadHandler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mBundle:Landroid/os/Bundle;

    .line 47
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 48
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<TT;>;",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TT;>;"
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/service/JSANamedAsyncTask;-><init>()V

    .line 35
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": job cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mUIThreadHandler:Landroid/os/Handler;

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mBundle:Landroid/os/Bundle;

    .line 39
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 6
    .param p1, "params"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TT;>;"
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 56
    .local v2, "bundle":Landroid/os/Bundle;
    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mBundle:Landroid/os/Bundle;

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/service/JSANamedAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mUIThreadHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v4, p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    .line 55
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 62
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->onDoInBackgroundException(Ljava/lang/Exception;)V

    .line 63
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mUIThreadHandler:Landroid/os/Handler;

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TT;>;"
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->doInBackground([Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TT;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onDoInBackgroundException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 68
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error handling background job ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobAsyncTask;->mJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 68
    invoke-static {v0, p1, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 70
    return-void
.end method
