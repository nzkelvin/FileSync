.class public Lnz/co/jsalibrary/android/model/JSALoggedModel$TickerRunnable;
.super Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
.source "JSALoggedModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/model/JSALoggedModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TickerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/model/JSALoggedModel;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/model/JSALoggedModel;J)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/model/JSALoggedModel;
    .param p2, "tickIntervalMillis"    # J

    .prologue
    .line 149
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSALoggedModel$TickerRunnable;->this$0:Lnz/co/jsalibrary/android/model/JSALoggedModel;

    .line 150
    invoke-direct {p0, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;-><init>(J)V

    .line 151
    return-void
.end method


# virtual methods
.method public tick()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSALoggedModel$TickerRunnable;->this$0:Lnz/co/jsalibrary/android/model/JSALoggedModel;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/model/JSALoggedModel;->logEvents()V

    .line 155
    return-void
.end method
