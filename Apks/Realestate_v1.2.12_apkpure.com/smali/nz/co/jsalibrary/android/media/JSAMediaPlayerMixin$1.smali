.class Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$1;
.super Ljava/lang/Object;
.source "JSAMediaPlayerMixin.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->initialise()V
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
    .line 83
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$1;->this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 84
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$1;->this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->seekBarStartTrackingTouchHandler()V

    .line 87
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 89
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin$1;->this$0:Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/media/JSAMediaPlayerMixin;->seekBarStopTrackingTouchHandler()V

    .line 90
    return-void
.end method
