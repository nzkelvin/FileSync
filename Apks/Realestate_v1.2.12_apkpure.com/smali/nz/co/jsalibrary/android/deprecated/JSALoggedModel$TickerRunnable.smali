.class public Lnz/co/jsalibrary/android/deprecated/JSALoggedModel$TickerRunnable;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "JSALoggedModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TickerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;J)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;
    .param p2, "tickIntervalMillis"    # J

    .prologue
    .line 144
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel$TickerRunnable;->this$0:Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;

    .line 145
    invoke-direct {p0, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(J)V

    .line 146
    return-void
.end method


# virtual methods
.method public tick()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel$TickerRunnable;->this$0:Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/deprecated/JSALoggedModel;->logEvents()V

    .line 150
    return-void
.end method
