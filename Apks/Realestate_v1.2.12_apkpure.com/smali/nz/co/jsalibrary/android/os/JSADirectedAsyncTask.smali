.class public abstract Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
.super Ljava/lang/Object;
.source "JSADirectedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;,
        Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;,
        Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;,
        Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;,
        Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "JSADirectedAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final mHandler:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;

.field private volatile mStatus:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 42
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$1;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$1;-><init>()V

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 56
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 64
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$SerialExecutor;-><init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$1;)V

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 71
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;-><init>(Landroid/os/Looper;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 141
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->PENDING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mStatus:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;-><init>(Landroid/os/Looper;Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$1;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mHandler:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;

    .line 144
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;

    invoke-direct {v0, p0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;-><init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mWorker:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;

    .line 154
    new-instance v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$3;

    iget-object v1, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mWorker:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$3;-><init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 169
    return-void
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 459
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 489
    :goto_0
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->FINISHED:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mStatus:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    .line 490
    return-void

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 180
    iget-object v1, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mHandler:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;

    new-instance v2, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;-><init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 173
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 326
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mStatus:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    sget-object v1, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->PENDING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 429
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$4;->$SwitchMap$nz$co$jsalibrary$android$os$JSADirectedAsyncTask$Status:[I

    iget-object v1, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mStatus:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 440
    :cond_0
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->RUNNING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    iput-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mStatus:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    .line 442
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->onPreExecute()V

    .line 444
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mWorker:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    return-object p0

    .line 431
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mStatus:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 280
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->onCancelled()V

    .line 265
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 220
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->mHandler:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;-><init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 481
    :cond_0
    return-void
.end method
