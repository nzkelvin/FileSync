.class Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator$1;
.super Ljava/lang/Object;
.source "JSABackgroundJobMultiAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->terminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;

    .prologue
    .line 354
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator$1;->this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator$1;->this$0:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$JobTerminator;->terminate()V

    .line 357
    return-void
.end method
