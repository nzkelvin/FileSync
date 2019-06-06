.class Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;
.super Ljava/lang/Object;
.source "JSABackgroundJobIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->terminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;

    .prologue
    .line 282
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;->this$1:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator$1;->this$1:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$JobTerminator;->terminate()V

    .line 285
    return-void
.end method
