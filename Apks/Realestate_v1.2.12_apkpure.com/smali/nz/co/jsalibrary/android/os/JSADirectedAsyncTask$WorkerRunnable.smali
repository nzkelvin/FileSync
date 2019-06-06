.class abstract Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "JSADirectedAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 516
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$1;

    .prologue
    .line 516
    .local p0, "this":Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;, "Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
