.class public Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
.super Ljava/lang/Object;
.source "JSASoundBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/media/JSASoundBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundToken"
.end annotation


# instance fields
.field protected mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

.field protected mIndex:I


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/media/JSASoundBox;I)V
    .locals 0
    .param p1, "box"    # Lnz/co/jsalibrary/android/media/JSASoundBox;
    .param p2, "index"    # I

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput p2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mIndex:I

    .line 562
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    .line 563
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 598
    instance-of v2, p1, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    if-nez v2, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 599
    check-cast v0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    .line 600
    .local v0, "token":Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;
    iget v2, v0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mIndex:I

    iget v3, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getCurrentPosition(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->getDuration(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mIndex:I

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->pause(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V

    .line 571
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->seekTo(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;I)V

    .line 587
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 590
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->setLooping(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Z)V

    .line 591
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 594
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0, p1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->setOnBufferingUpdateListener(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 595
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->start(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V

    .line 567
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;->mBox:Lnz/co/jsalibrary/android/media/JSASoundBox;

    invoke-virtual {v0, p0}, Lnz/co/jsalibrary/android/media/JSASoundBox;->stop(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V

    .line 575
    return-void
.end method
