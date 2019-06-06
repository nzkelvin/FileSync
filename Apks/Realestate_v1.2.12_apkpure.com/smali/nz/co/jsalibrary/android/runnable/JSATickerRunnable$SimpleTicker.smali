.class public Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "JSATickerRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTicker"
.end annotation


# instance fields
.field private final mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;


# direct methods
.method public constructor <init>(JLnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;)V
    .locals 1
    .param p1, "tickIntervalMillis"    # J
    .param p3, "listener"    # Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(J)V

    .line 164
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 165
    :cond_0
    iput-object p3, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .line 166
    return-void
.end method

.method public constructor <init>(JZILnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;)V
    .locals 1
    .param p1, "tickIntervalMillis"    # J
    .param p3, "tickOnStart"    # Z
    .param p4, "maxTickCount"    # I
    .param p5, "listener"    # Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(JZI)V

    .line 176
    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 177
    :cond_0
    iput-object p5, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .line 178
    return-void
.end method

.method public constructor <init>(JZLnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;)V
    .locals 1
    .param p1, "tickIntervalMillis"    # J
    .param p3, "tickOnStart"    # Z
    .param p4, "listener"    # Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(JZ)V

    .line 170
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 171
    :cond_0
    iput-object p4, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;JLnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tickIntervalMillis"    # J
    .param p4, "listener"    # Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;J)V

    .line 182
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 183
    :cond_0
    iput-object p4, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;JZILnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tickIntervalMillis"    # J
    .param p4, "tickOnStart"    # Z
    .param p5, "maxTickCount"    # I
    .param p6, "listener"    # Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .prologue
    .line 193
    invoke-direct/range {p0 .. p5}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;JZI)V

    .line 194
    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iput-object p6, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;JZLnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "tickIntervalMillis"    # J
    .param p4, "tickOnStart"    # Z
    .param p5, "listener"    # Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(Landroid/os/Handler;JZ)V

    .line 188
    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 189
    :cond_0
    iput-object p5, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    .line 190
    return-void
.end method


# virtual methods
.method public tick()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$SimpleTicker;->mListener:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;

    invoke-interface {v0}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable$OnTickListener;->onTick()V

    .line 200
    return-void
.end method
