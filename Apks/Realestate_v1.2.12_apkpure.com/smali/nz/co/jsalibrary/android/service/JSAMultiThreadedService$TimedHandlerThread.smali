.class final Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;
.super Landroid/os/HandlerThread;
.source "JSAMultiThreadedService.java"

# interfaces
.implements Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimedHandlerThread"
.end annotation


# instance fields
.field private final mTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;

.field final synthetic this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)V
    .locals 7

    .prologue
    .line 554
    iput-object p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    .line 555
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->getThreadName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 556
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;

    invoke-static {p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$700(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$800(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;-><init>(Landroid/os/Handler;JZILnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->mTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;

    .line 557
    return-void
.end method


# virtual methods
.method public getTimeout()J
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->mTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->getTickInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public onTick()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->this$0:Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;

    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;->access$900(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;)V

    .line 574
    return-void
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->mTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->start()V

    .line 565
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$TimedHandlerThread;->mTicker:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->stop()V

    .line 569
    return-void
.end method
