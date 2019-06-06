.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnBufferingUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V
    .locals 0

    .prologue
    .line 1422
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;

    .prologue
    .line 1422
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;-><init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 1426
    iget-object v5, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    monitor-enter v5

    .line 1433
    :try_start_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1300(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)I

    move-result v4

    iget-object v6, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v6}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1400(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)I

    move-result v6

    div-int v2, v4, v6

    .line 1434
    .local v2, "oldUpdatePercent":I
    iget-object v4, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1400(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)I

    move-result v4

    div-int v1, p2, v4

    .line 1435
    .local v1, "newUpdatePercent":I
    if-eq v2, v1, :cond_1

    const/4 v0, 0x1

    .line 1437
    .local v0, "isUpdate":Z
    :goto_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v4, p2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1302(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;I)I

    .line 1438
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    iget-object v4, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$InternalOnBufferingUpdateListener;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v4}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1500(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v3

    .line 1441
    .local v3, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 1442
    :cond_0
    return-void

    .line 1435
    .end local v0    # "isUpdate":Z
    .end local v3    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1438
    .end local v1    # "newUpdatePercent":I
    .end local v2    # "oldUpdatePercent":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
