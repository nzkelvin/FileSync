.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$5;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBufferPercent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 1505
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$5;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1507
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$5;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1500(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    .line 1508
    .local v0, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$5;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 1509
    :cond_0
    return-void
.end method
