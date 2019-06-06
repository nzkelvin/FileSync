.class Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;
.super Ljava/lang/Thread;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V
    .locals 1

    .prologue
    .line 797
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.MasterThread;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 798
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->setPriority(I)V

    .line 799
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    .prologue
    .line 795
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.MasterThread;"
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 802
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.MasterThread;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "JSAImageLoader.MasterThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 804
    :goto_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$800(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 805
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v3, "master thread woken"

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$900(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V

    .line 807
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1000(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V

    .line 808
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1100(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V

    .line 809
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 811
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1200(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 813
    :try_start_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1300(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1200(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 817
    :cond_0
    :try_start_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1302(Lnz/co/jsalibrary/android/app/JSAImageLoader;Z)Z

    .line 819
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 809
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "exception":Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v3, "error waiting on master thread"

    invoke-static {v1, v3, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1400(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 817
    :try_start_5
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1302(Lnz/co/jsalibrary/android/app/JSAImageLoader;Z)Z

    goto :goto_1

    .end local v0    # "exception":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v1

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$MasterThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1302(Lnz/co/jsalibrary/android/app/JSAImageLoader;Z)Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
