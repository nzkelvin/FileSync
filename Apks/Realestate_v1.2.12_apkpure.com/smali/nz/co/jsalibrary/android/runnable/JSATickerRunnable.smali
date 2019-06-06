.class public abstract Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.super Ljava/lang/Object;
.source "JSATickerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;,
        Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected mMaxTickCount:I

.field protected mRunning:Z

.field protected mTickCount:I

.field protected mTickIntervalMillis:J

.field protected mTickOnStart:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "tickIntervalMillis"    # J

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(JZ)V

    .line 32
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "tickIntervalMillis"    # J
    .param p3, "tickOnStart"    # Z

    .prologue
    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;JZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(JZI)V
    .locals 7
    .param p1, "tickIntervalMillis"    # J
    .param p3, "tickOnStart"    # Z
    .param p4, "maxTickCount"    # I

    .prologue
    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;JZI)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tickIntervalMillis"    # J

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;JZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;JZ)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tickIntervalMillis"    # J
    .param p4, "tickOnStart"    # Z

    .prologue
    .line 47
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;JZI)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;JZI)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tickIntervalMillis"    # J
    .param p4, "tickOnStart"    # Z
    .param p5, "maxTickCount"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_1
    const/4 v0, -0x1

    if-ge p5, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_2
    iput-object p1, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mHandler:Landroid/os/Handler;

    .line 54
    iput-wide p2, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickIntervalMillis:J

    .line 55
    iput-boolean p4, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickOnStart:Z

    .line 56
    iput p5, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mMaxTickCount:I

    .line 57
    return-void
.end method

.method private shouldTickOnTickCount()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 123
    iget v1, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mMaxTickCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickCount:I

    iget v2, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mMaxTickCount:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTickCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickCount:I

    return v0
.end method

.method public getTickInterval()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickIntervalMillis:J

    return-wide v0
.end method

.method public getTickOnStart()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickOnStart:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mRunning:Z

    return v0
.end method

.method protected postToRunAfterInterval()V
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 73
    .local v2, "now":J
    iget-wide v4, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickIntervalMillis:J

    add-long v0, v2, v4

    .line 74
    .local v0, "next":J
    iget-object v4, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mRunning:Z

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickCount:I

    .line 66
    invoke-virtual {p0, p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->tick(Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;)V

    .line 67
    invoke-direct {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->shouldTickOnTickCount()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->postToRunAfterInterval()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    goto :goto_0
.end method

.method public setTickInterval(I)V
    .locals 2
    .param p1, "tickIntervalMillis"    # I

    .prologue
    .line 132
    int-to-long v0, p1

    iput-wide v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickIntervalMillis:J

    .line 133
    return-void
.end method

.method public setTickOnStart(Z)V
    .locals 0
    .param p1, "tickOnStart"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickOnStart:Z

    .line 137
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mRunning:Z

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mRunning:Z

    .line 94
    invoke-direct {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->shouldTickOnTickCount()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->stop()V

    goto :goto_0

    .line 95
    :cond_1
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickOnStart:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->run()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->postToRunAfterInterval()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mRunning:Z

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mRunning:Z

    .line 106
    iget-object v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iput v1, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->mTickCount:I

    goto :goto_0
.end method

.method public abstract tick()V
.end method

.method public tick(Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;)V
    .locals 0
    .param p1, "ticker"    # Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .prologue
    .line 82
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;->tick()V

    .line 83
    return-void
.end method
