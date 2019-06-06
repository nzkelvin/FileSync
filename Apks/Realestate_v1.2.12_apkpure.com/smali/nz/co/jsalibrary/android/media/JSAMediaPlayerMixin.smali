.class public Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;
.super Ljava/lang/Object;
.source "JSAMediaPlayerMixin.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROPERTY_CHANGE_IS_PLAYING:Ljava/lang/String; = "isPlaying"

.field private static final SEEK_BAR_MAX:I = 0x3e8

.field private static final SEEK_BAR_PROGRESS_UPDATE_INTERVAL:I = 0x64


# instance fields
.field protected mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mPauseOnSeek:Z

.field protected mPlayTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

.field protected mPlayingOnSeekBarInteractionStart:Z

.field protected mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 72
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 73
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->initialise()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media player cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->initialise()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media player cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 55
    iput-object p2, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    .line 56
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->initialise()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 66
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    .line 68
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->initialise()V

    .line 69
    return-void
.end method


# virtual methods
.method protected createMediaPlayerIfRequired()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 121
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 121
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method protected createPlayTickerIfRequired()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPlayTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPlayTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$3;

    const-wide/16 v2, 0x64

    invoke-direct {v0, p0, v2, v3}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$3;-><init>(Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;J)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPlayTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .line 230
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPlayTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    goto :goto_0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getPauseOnSeek()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPauseOnSeek:Z

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method protected initialise()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$1;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$1;-><init>(Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method public isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createMediaPlayerIfRequired()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createMediaPlayerIfRequired()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createMediaPlayerIfRequired()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 131
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 133
    return-void
.end method

.method protected onMediaCompletion()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createPlayTickerIfRequired()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    .line 213
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    const-string v2, "isPlaying"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 214
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->updateSeekBarProgress()V

    .line 216
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createMediaPlayerIfRequired()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 162
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createPlayTickerIfRequired()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    .line 163
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    const-string v2, "isPlaying"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createMediaPlayerIfRequired()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 146
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$2;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$2;-><init>(Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 151
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createPlayTickerIfRequired()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->start()V

    .line 152
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    const-string v2, "isPlaying"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 153
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->load(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->play()V

    .line 142
    return-void
.end method

.method protected playTickerTick()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->updateSeekBarProgress()V

    goto :goto_0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .locals 1
    .param p2, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected seekBarStartTrackingTouchHandler()V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPauseOnSeek:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->pause()V

    .line 103
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPlayingOnSeekBarInteractionStart:Z

    .line 104
    return-void
.end method

.method protected seekBarStopTrackingTouchHandler()V
    .locals 6

    .prologue
    .line 107
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 108
    .local v0, "duration":I
    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-double v2, v2

    iget-object v4, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 110
    .local v1, "position":I
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 111
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPlayingOnSeekBarInteractionStart:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->play()V

    goto :goto_0
.end method

.method public setPauseOnSeek(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mPauseOnSeek:Z

    .line 205
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createMediaPlayerIfRequired()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 172
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createPlayTickerIfRequired()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    .line 173
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    const-string v2, "isPlaying"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 174
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 278
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method protected updateSeekBarProgress()V
    .locals 6

    .prologue
    .line 239
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 241
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 242
    .local v0, "progress":I
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
