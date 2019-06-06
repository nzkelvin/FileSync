.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnPreparedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;

    .prologue
    .line 1403
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1406
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    monitor-enter v3

    .line 1408
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    move-result-object v2

    sget-object v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARING:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-virtual {v2, v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1409
    .local v0, "isPreparing":Z
    if-nez v0, :cond_1

    monitor-exit v3

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    sget-object v4, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;->PREPARED:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$800(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 1411
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnPreparedListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1200(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    .line 1414
    .local v1, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 1411
    .end local v0    # "isPreparing":Z
    .end local v1    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
