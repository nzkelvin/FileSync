.class public abstract Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
.super Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;
.source "JSABackgroundJobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
        "<*>;>",
        "Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;"
    }
.end annotation


# static fields
.field protected static final BUNDLE_NAME:Ljava/lang/String; = "bundle"


# instance fields
.field private final mAsynchronous:Z

.field private final mJobClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TJ;>;"
        }
    .end annotation
.end field

.field private final mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TJ;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 141
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 142
    const-class v0, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJ)V
    .locals 7
    .param p2, "maxThreadCount"    # I
    .param p3, "logFrequencyMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TJ;>;IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 150
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 151
    const-class v0, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJJ)V
    .locals 9
    .param p2, "maxThreadCount"    # I
    .param p3, "logFrequencyMillis"    # J
    .param p5, "handlerThreadTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TJ;>;IJJ)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 159
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 160
    const-class v0, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJLnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V
    .locals 7
    .param p2, "maxThreadCount"    # I
    .param p3, "logFrequencyMillis"    # J
    .param p5, "threadType"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TJ;>;IJ",
            "Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;IJLnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 168
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 169
    const-class v0, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "TJ;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 72
    instance-of v0, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;IJ)V
    .locals 7
    .param p2, "maxThreadCount"    # I
    .param p3, "logFrequencyMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "TJ;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 89
    instance-of v0, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;IJJ)V
    .locals 9
    .param p2, "maxThreadCount"    # I
    .param p3, "logFrequencyMillis"    # J
    .param p5, "handlerThreadTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;IJJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "TJ;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 109
    instance-of v0, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;IJLnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V
    .locals 7
    .param p2, "maxThreadCount"    # I
    .param p3, "logFrequencyMillis"    # J
    .param p5, "threadType"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;IJ",
            "Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p1, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "TJ;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;-><init>(Ljava/lang/String;Ljava/lang/String;IJLnz/co/jsalibrary/android/service/JSAMultiThreadedService$ThreadType;)V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    .line 127
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    .line 129
    instance-of v0, p1, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    .line 130
    return-void
.end method

.method static synthetic access$001(Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/os/Looper;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
    .param p1, "x1"    # Landroid/os/Looper;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->onHandlerThreadIntentHandled(Landroid/os/Looper;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Class;)Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    .line 40
    invoke-static {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->getServiceInstance(Ljava/lang/Class;)Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceInstance(Ljava/lang/Class;)Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;)",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service cannot be instantiated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    .end local v0    # "exception":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 434
    .local v0, "exception":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service cannot be instantiated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newJob(Landroid/content/Context;Ljava/lang/Class;)Lnz/co/jsalibrary/android/background/JSABackgroundJob;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TJ;>;)TJ;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    .local p2, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 193
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TJ;>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 194
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/background/JSABackgroundJob;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TJ;>;"
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error creating new background job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 199
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 200
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error creating new background job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 202
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 203
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error creating new background job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 205
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 195
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 209
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/background/JSABackgroundJob;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 210
    :catch_4
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error creating new background job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 212
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 213
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error creating new background job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 215
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 325
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    new-instance v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;

    invoke-direct {v0, p0, p1, p2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;-><init>(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Landroid/os/Handler;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 357
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->startService(Landroid/content/Context;Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/os/Bundle;)V

    .line 337
    return-void
.end method

.method public static startService(Landroid/content/Context;Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 387
    new-instance v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;

    invoke-direct {v0, p0, p1, p2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;-><init>(Landroid/content/Context;Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/os/Bundle;)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method public static stopService(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static stopService(Landroid/content/Context;Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mLegacyJob:Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    .line 226
    .local v0, "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "TJ;"
    :goto_0
    const-string v4, "bundle"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 227
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 228
    .local v1, "context":Landroid/content/Context;
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;

    move-object v6, v4

    .line 231
    .local v6, "asyncJob":Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob<*>;"
    :goto_1
    if-eqz v6, :cond_0

    :try_start_0
    new-instance v4, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;

    invoke-direct {v4, p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/content/Intent;)V

    invoke-interface {v6, v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;->setJobTerminator(Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;)V

    .line 232
    :cond_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v4, p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_1
    :goto_2
    return-void

    .line 224
    .end local v0    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "TJ;"
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v6    # "asyncJob":Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob<*>;"
    :cond_2
    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    invoke-direct {p0, p0, v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->newJob(Landroid/content/Context;Ljava/lang/Class;)Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    move-result-object v0

    goto :goto_0

    .line 228
    .restart local v0    # "job":Lnz/co/jsalibrary/android/background/JSABackgroundJob;, "TJ;"
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 234
    .restart local v6    # "asyncJob":Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;, "Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob<*>;"
    :catch_0
    move-exception v3

    .line 235
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->onHandleIntentException(Ljava/lang/Exception;)V

    .line 239
    :try_start_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mUiThreadHandler:Landroid/os/Handler;

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lnz/co/jsalibrary/android/background/JSABackgroundJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob;->getJobTerminator()Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;

    move-result-object v4

    invoke-interface {v4}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$AsynchronousBackgroundJob$JobTerminator;->terminate()V

    goto :goto_2

    .line 240
    :catch_1
    move-exception v7

    .line 241
    .local v7, "e":Ljava/lang/Exception;
    const-string v4, "error handling background job exception"

    invoke-static {v4, v7}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected onHandleIntentException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 249
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error handling background job ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mJobClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 250
    return-void
.end method

.method protected onHandlerThreadIntentHandled(Landroid/os/Looper;Landroid/content/Intent;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService<TJ;>;"
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->mAsynchronous:Z

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/service/JSAAwakeIntentService;->onHandlerThreadIntentHandled(Landroid/os/Looper;Landroid/content/Intent;)V

    goto :goto_0
.end method
