.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;

    .prologue
    .line 1379
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1383
    iget-object v4, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    monitor-enter v4

    .line 1384
    :try_start_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    move-result-object v3

    sget-object v5, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne v3, v5, :cond_1

    monitor-exit v4

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->isLooping()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 1386
    .local v0, "isCompleted":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    sget-object v5, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PLAYBACK_COMPLETED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-static {v3, v5}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$800(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 1387
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    if-eqz v0, :cond_4

    .line 1390
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1000(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    .line 1391
    .local v1, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 1385
    .end local v0    # "isCompleted":Z
    .end local v1    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1387
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1393
    .restart local v0    # "isCompleted":Z
    :cond_4
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnCompletionListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1100(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;

    move-result-object v2

    .line 1394
    .local v2, "onLoopingCompletionListener":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnLoopingCompletionListener;->onLoopingCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
