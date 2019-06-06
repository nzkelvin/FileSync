.class public Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$RunnableDispatcher;
.super Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;
.source "JSAThrottledDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableDispatcher"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "maxDispatchFrequency"    # J

    .prologue
    .line 249
    invoke-direct {p0, p1, p3, p4}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;-><init>(Landroid/os/Handler;J)V

    .line 250
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$RunnableDispatcher;->mRunnable:Ljava/lang/Runnable;

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "maxDispatchFrequency"    # J

    .prologue
    .line 259
    invoke-direct {p0, p2, p3}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;-><init>(J)V

    .line 260
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$RunnableDispatcher;->mRunnable:Ljava/lang/Runnable;

    .line 261
    return-void
.end method


# virtual methods
.method protected final onDispatch()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$RunnableDispatcher;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 272
    return-void
.end method
