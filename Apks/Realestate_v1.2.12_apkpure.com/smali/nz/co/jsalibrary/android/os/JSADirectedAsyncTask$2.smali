.class Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;
.super Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;
.source "JSADirectedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;)V
    .locals 1
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    .prologue
    .line 144
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;->this$0:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;-><init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;->this$0:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    invoke-static {v0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->access$300(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 150
    iget-object v0, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;->this$0:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    iget-object v1, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;->this$0:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    iget-object v2, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;->access$400(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
