.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;

    .prologue
    .line 1449
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1452
    const/4 v1, 0x0

    .line 1453
    .local v1, "change":Z
    const/4 v0, 0x0

    .line 1454
    .local v0, "buffering":Z
    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    monitor-enter v6

    .line 1455
    const/16 v7, 0x2bd

    if-ne p2, v7, :cond_3

    .line 1456
    :try_start_0
    iget-object v7, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v7}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v4

    .line 1457
    :goto_0
    iget-object v7, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1602(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Z)Z

    .line 1458
    const/4 v0, 0x1

    .line 1464
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v6}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1700(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;

    move-result-object v2

    .line 1467
    .local v2, "onBufferingChangeListener":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-interface {v2, v6, v0}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;->onBufferingChange(Landroid/media/MediaPlayer;Z)V

    .line 1470
    :cond_1
    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v6}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1800(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v3

    .line 1471
    .local v3, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v3, :cond_4

    invoke-interface {v3, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    return v4

    .end local v2    # "onBufferingChangeListener":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;
    .end local v3    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :cond_2
    move v1, v5

    .line 1456
    goto :goto_0

    .line 1459
    :cond_3
    const/16 v7, 0x2be

    if-ne p2, v7, :cond_0

    .line 1460
    :try_start_1
    iget-object v7, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v7}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1600(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Z

    move-result v1

    .line 1461
    iget-object v7, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnInfoListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1602(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Z)Z

    .line 1462
    const/4 v0, 0x0

    goto :goto_1

    .line 1464
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v2    # "onBufferingChangeListener":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;
    .restart local v3    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :cond_4
    move v4, v5

    .line 1471
    goto :goto_2
.end method
