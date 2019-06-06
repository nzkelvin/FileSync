.class Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;
.super Ljava/lang/Object;
.source "RESPropertyAffordabilityFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleOnSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$1;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateView()V

    .line 319
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 321
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->access$400(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->start()V

    .line 322
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 324
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->access$400(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    .line 325
    return-void
.end method
