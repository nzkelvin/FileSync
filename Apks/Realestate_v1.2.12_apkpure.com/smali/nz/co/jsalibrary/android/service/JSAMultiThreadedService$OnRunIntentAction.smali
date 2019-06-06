.class public Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;
.super Ljava/lang/Object;
.source "JSAMultiThreadedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRunIntentAction"
.end annotation


# instance fields
.field private final mRun:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "run"    # Z

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;->mRun:Z

    .line 636
    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;

    .prologue
    .line 625
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnRunIntentAction;->mRun:Z

    return v0
.end method
