.class Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;
.super Ljava/lang/Thread;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderThread"
.end annotation


# instance fields
.field private final mThreadId:I

.field final synthetic this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)V
    .locals 1
    .param p2, "threadId"    # I

    .prologue
    .line 840
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 841
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->setPriority(I)V

    .line 842
    iput p2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->mThreadId:I

    .line 843
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;ILnz/co/jsalibrary/android/app/JSAImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/app/JSAImageLoader;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    .prologue
    .line 837
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;-><init>(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 848
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;, "Lnz/co/jsalibrary/android/app/JSAImageLoader<TJobItem;TImageSource;>.ImageLoaderThread;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSAImageLoader.ImageLoaderThread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->mThreadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 849
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v2, "image loader thread started"

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 854
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v2, "thread interrupted, leaving loop"

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 881
    :goto_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v2, "thread killed"

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$800(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 884
    :try_start_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1500(Lnz/co/jsalibrary/android/app/JSAImageLoader;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1502(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)I

    .line 885
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 887
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1900(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V

    .line 889
    :goto_2
    return-void

    .line 859
    :cond_0
    :try_start_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$800(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 862
    :try_start_3
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1500(Lnz/co/jsalibrary/android/app/JSAImageLoader;)I

    move-result v1

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1600(Lnz/co/jsalibrary/android/app/JSAImageLoader;)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 863
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v3, "excessive threads running, leaving loop"

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 864
    monitor-exit v2

    goto :goto_1

    .line 872
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "error loading image"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/app/JSAImageLoader;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 881
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v2, "thread killed"

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$800(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 884
    :try_start_6
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1500(Lnz/co/jsalibrary/android/app/JSAImageLoader;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1502(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)I

    .line 885
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 887
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1900(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V

    goto :goto_2

    .line 868
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    :try_start_7
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v1}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1700(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 869
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v3, "no next image to load, leaving loop"

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 870
    monitor-exit v2

    goto/16 :goto_1

    .line 872
    :cond_2
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 875
    :try_start_8
    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    iget v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->mThreadId:I

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1800(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 881
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    const-string v3, "thread killed"

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$700(Lnz/co/jsalibrary/android/app/JSAImageLoader;Ljava/lang/String;)V

    .line 883
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$800(Lnz/co/jsalibrary/android/app/JSAImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 884
    :try_start_9
    iget-object v3, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    iget-object v4, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1500(Lnz/co/jsalibrary/android/app/JSAImageLoader;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1502(Lnz/co/jsalibrary/android/app/JSAImageLoader;I)I

    .line 885
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 887
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoaderThread;->this$0:Lnz/co/jsalibrary/android/app/JSAImageLoader;

    invoke-static {v2}, Lnz/co/jsalibrary/android/app/JSAImageLoader;->access$1900(Lnz/co/jsalibrary/android/app/JSAImageLoader;)V

    throw v1

    .line 885
    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    .restart local v0    # "exception":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .end local v0    # "exception":Ljava/lang/Exception;
    :catchall_4
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1
.end method
