.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V
    .locals 0

    .prologue
    .line 1357
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1360
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    monitor-enter v3

    .line 1361
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    move-result-object v2

    sget-object v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->END:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    monitor-exit v3

    .line 1371
    :goto_0
    return v0

    .line 1362
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    iget-object v4, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    move-result-object v4

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$700(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 1363
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    sget-object v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->ERROR:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$800(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 1364
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$900(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    .line 1367
    .local v1, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1364
    .end local v1    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1368
    .restart local v1    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :cond_1
    invoke-interface {v1, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 1369
    .local v0, "handled":Z
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$700(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 1370
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnErrorListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-virtual {v2, p2, p3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->logError(II)V

    goto :goto_0
.end method
