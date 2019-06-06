.class public Lnz/co/jsalibrary/android/media/JSASoundBox;
.super Ljava/lang/Object;
.source "JSASoundBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;,
        Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;,
        Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    }
.end annotation


# static fields
.field private static sTokenIndex:I


# instance fields
.field private mOnCompletionListener:Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;

.field private mTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCurrentPosition(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)I
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .prologue
    .line 490
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 491
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 492
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 493
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    goto :goto_0
.end method

.method public getDuration(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)I
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .prologue
    .line 502
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 503
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 504
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 505
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    goto :goto_0
.end method

.method protected getToken(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->newToken()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    .line 394
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 395
    .local v0, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    if-eqz v0, :cond_1

    new-instance v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-direct {v1, p1, v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->newToken()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v1

    goto :goto_0
.end method

.method protected newMediaPlayer(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    .locals 1
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .prologue
    .line 428
    new-instance v0, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;-><init>()V

    return-object v0
.end method

.method protected newToken()Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    sget v2, Lnz/co/jsalibrary/android/media/JSASoundBox;->sTokenIndex:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lnz/co/jsalibrary/android/media/JSASoundBox;->sTokenIndex:I

    invoke-direct {v1, p0, v2}, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;-><init>(Lnz/co/jsalibrary/android/media/JSASoundBox;I)V

    .line 408
    .local v1, "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->newMediaPlayer(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    move-result-object v0

    .line 409
    .local v0, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    new-instance v2, Lnz/co/jsalibrary/android/media/JSASoundBox$1;

    invoke-direct {v2, p0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox$1;-><init>(Lnz/co/jsalibrary/android/media/JSASoundBox;Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 416
    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v2, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-direct {v2, v1, v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method protected onPlayerCompletion(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V
    .locals 5
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .prologue
    .line 437
    :try_start_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mOnCompletionListener:Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mOnCompletionListener:Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;

    iget v4, p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mIndex:I

    invoke-interface {v3, p1, v4}, Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;->onCompletion(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;I)V

    .line 438
    :cond_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 439
    .local v2, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    if-nez v2, :cond_2

    .line 445
    .end local v2    # "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    :cond_1
    :goto_0
    return-void

    .line 440
    .restart local v2    # "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    :cond_2
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->startNext()Z

    move-result v1

    .line 441
    .local v1, "next":Z
    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->stop(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    .end local v1    # "next":Z
    .end local v2    # "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->stop(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V

    goto :goto_0
.end method

.method public pause(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .prologue
    .line 465
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 466
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 467
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public seekTo(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;I)V
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "msec"    # I

    .prologue
    .line 514
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 515
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 516
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setCompletionListener(Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;

    .prologue
    .line 549
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mOnCompletionListener:Lnz/co/jsalibrary/android/media/JSASoundBox$OnCompletionListener;

    .line 550
    return-void
.end method

.method public setLooping(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Z)V
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "looping"    # Z

    .prologue
    .line 538
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 539
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 540
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    .line 542
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 526
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 527
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 528
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    .line 530
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0
.end method

.method public start(Landroid/content/Context;I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Landroid/content/Context;[I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;Landroid/net/Uri;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Landroid/net/Uri;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;Ljava/util/List;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "resourceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toPrimitiveInt(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Landroid/content/Context;[I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;[I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;[Landroid/net/Uri;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Landroid/net/Uri;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetPaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/io/File;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/File;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/io/FileDescriptor;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 3
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/FileDescriptor;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/util/List;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;Landroid/net/Uri;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Landroid/net/Uri;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;Ljava/util/List;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p3, "resourceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toPrimitiveInt(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[I)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 4
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->stop()V

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getToken(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    .line 107
    .local v2, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;>;"
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 108
    .local v1, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    check-cast p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .line 111
    .restart local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    :try_start_0
    invoke-virtual {v1, p2, p3}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->start(Landroid/content/Context;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-object p1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "exception":Ljava/io/IOException;
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    throw v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Landroid/net/Uri;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 4
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->stop()V

    .line 373
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getToken(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    .line 374
    .local v2, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;>;"
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 375
    .local v1, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    check-cast p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .line 378
    .restart local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    :try_start_0
    invoke-virtual {v1, p2, p3}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->start(Landroid/content/Context;[Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    return-object p1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "exception":Ljava/io/IOException;
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    throw v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/content/Context;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 4
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "assetPaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->stop()V

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getToken(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    .line 324
    .local v2, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;>;"
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 325
    .local v1, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    check-cast p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .line 328
    .restart local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    :try_start_0
    invoke-virtual {v1, p2, p3}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->start(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    return-object p1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "exception":Ljava/io/IOException;
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    throw v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Ljava/io/File;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/File;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Ljava/io/FileDescriptor;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/FileDescriptor;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Ljava/util/List;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/File;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 4
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->stop()V

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getToken(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    .line 224
    .local v2, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;>;"
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 225
    .local v1, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    check-cast p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .line 228
    .restart local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    :try_start_0
    invoke-virtual {v1, p2}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->start([Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-object p1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "exception":Ljava/io/IOException;
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    throw v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/FileDescriptor;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 4
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "fileDescriptors"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->stop()V

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getToken(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    .line 274
    .local v2, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;>;"
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 275
    .local v1, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    check-cast p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .line 278
    .restart local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    :try_start_0
    invoke-virtual {v1, p2}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->start([Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    return-object p1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "exception":Ljava/io/IOException;
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    throw v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 4
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .param p2, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->stop()V

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getToken(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    .line 174
    .local v2, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;>;"
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;

    .line 175
    .local v1, "player":Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    check-cast p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .line 178
    .restart local p1    # "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    :try_start_0
    invoke-virtual {v1, p2}, Lnz/co/jsalibrary/android/media/JSASoundBox$QueuedMediaPlayer;->start([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object p1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "exception":Ljava/io/IOException;
    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    throw v0
.end method

.method public start([Ljava/io/File;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/File;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start([Ljava/io/FileDescriptor;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "fileDescriptors"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/io/FileDescriptor;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start([Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    .locals 1
    .param p1, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    invoke-virtual {p0, v0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;[Ljava/lang/String;)Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    move-result-object v0

    return-object v0
.end method

.method public start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .prologue
    .line 453
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 454
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 455
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public stop(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V
    .locals 2
    .param p1, "token"    # Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .prologue
    .line 477
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 478
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 479
    .local v0, "player":Landroid/media/MediaPlayer;
    if-nez v0, :cond_1

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 481
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method
