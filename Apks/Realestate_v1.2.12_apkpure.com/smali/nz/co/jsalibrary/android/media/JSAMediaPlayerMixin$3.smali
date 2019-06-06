.class Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$3;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "JSAMediaPlayerMixin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->createPlayTickerIfRequired()Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;J)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;
    .param p2, "tickIntervalMillis"    # J

    .prologue
    .line 225
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$3;->this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    invoke-direct {p0, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public tick()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$3;->this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->playTickerTick()V

    .line 228
    return-void
.end method
