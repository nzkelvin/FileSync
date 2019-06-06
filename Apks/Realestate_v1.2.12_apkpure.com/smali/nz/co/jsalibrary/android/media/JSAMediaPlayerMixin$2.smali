.class Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$2;
.super Ljava/lang/Object;
.source "JSAMediaPlayerMixin.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    .prologue
    .line 146
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$2;->this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 148
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$2;->this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->onMediaCompletion()V

    .line 149
    return-void
.end method
