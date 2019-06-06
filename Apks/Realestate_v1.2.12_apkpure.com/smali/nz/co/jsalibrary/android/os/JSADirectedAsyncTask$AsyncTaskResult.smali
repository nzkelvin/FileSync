.class Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "JSADirectedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;


# direct methods
.method varargs constructor <init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;->mTask:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;

    .line 526
    iput-object p2, p0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 527
    return-void
.end method
