.class Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;
.super Ljava/lang/Object;
.source "JSAThrottledDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;-><init>(Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    .prologue
    .line 79
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "current":J
    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->access$100(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->access$002(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;J)J

    .line 85
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->access$202(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;Z)Z

    .line 86
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$1;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->onDispatch()V

    .line 89
    return-void

    .line 86
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
