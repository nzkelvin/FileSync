.class Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$3;
.super Ljava/lang/Object;
.source "JSABackgroundJobMultiAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->runPlainThread(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;

.field final synthetic val$info:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;

    .prologue
    .line 211
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$3;->this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;

    iput-object p2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$3;->val$info:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$3;->val$info:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$3;->this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->executeTask(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$TaskInfo;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "error running plain thread"

    invoke-static {v1, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
