.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$4;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->internalResetBuffering()V
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
    .line 1486
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$4;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1488
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$4;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$1700(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;

    move-result-object v0

    .line 1489
    .local v0, "onBufferingChangeListener":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$4;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnBufferingChangeListener;->onBufferingChange(Landroid/media/MediaPlayer;Z)V

    .line 1490
    :cond_0
    return-void
.end method
