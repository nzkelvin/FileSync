.class Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;
.super Ljava/lang/Object;
.source "JSAMultiThreadedService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->startPlainThread(Landroid/content/Intent;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .prologue
    .line 293
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    iput-object p2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 298
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSAMultiThreadedService_IgnoreIntentAction"

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 299
    .local v0, "handle":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->onHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-static {v2}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$300(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 307
    :try_start_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$400(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Landroid/content/Intent;)Z

    move-result v1

    .line 310
    .local v1, "stop":Z
    if-nez v1, :cond_1

    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-static {v2}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$500(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Ljava/lang/Thread;

    .line 311
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    if-eqz v1, :cond_2

    iget-object v2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-static {v2}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$600(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)V

    .line 316
    :cond_2
    return-void

    .line 298
    .end local v0    # "handle":Z
    .end local v1    # "stop":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    .restart local v0    # "handle":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 303
    .end local v0    # "handle":Z
    :catchall_1
    move-exception v2

    .line 304
    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-static {v3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$300(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 307
    :try_start_3
    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    iget-object v5, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$400(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Landroid/content/Intent;)Z

    move-result v1

    .line 310
    .restart local v1    # "stop":Z
    if-nez v1, :cond_4

    iget-object v4, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-static {v4}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$500(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Ljava/lang/Thread;

    .line 311
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 314
    if-eqz v1, :cond_5

    iget-object v3, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$1;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-static {v3}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$600(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)V

    .line 315
    :cond_5
    throw v2

    .line 311
    .end local v1    # "stop":Z
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method
