.class public abstract Lnz/co/jsalibrary/android/util/JSAThreadUtil;
.super Ljava/lang/Object;
.source "JSAThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;,
        Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;,
        Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertUiThread()V
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 32
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected ui thread but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isUiThread()Z
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;I)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .param p3, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 220
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;-><init>(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)V

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->execute()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;I)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction<TS;TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .param p3, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction<TS;TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 259
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;-><init>(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;ILjava/lang/String;)V

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->execute()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;I)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .param p3, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 197
    :cond_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;I)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction<TS;TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "maxThreadCount"    # I
    .param p3, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction<TS;TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 236
    :cond_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->map(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static postRunnable(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "token"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public static postRunnable(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "token"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "delayMillis"    # J

    .prologue
    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public static postRunnableAtTime(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "token"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "uptimeMillis"    # J

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public static runOnThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 47
    .local v0, "uiThread":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

.method public static waitUntilRunOnThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;-><init>()V

    .line 103
    .local v0, "lock":Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->lock()V

    .line 104
    new-instance v1, Lnz/co/jsalibrary/android/util/JSAThreadUtil$1;

    invoke-direct {v1, p1, v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$1;-><init>(Ljava/lang/Runnable;Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->waitOnLock()V

    goto :goto_0
.end method
