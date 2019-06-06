.class Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$2;
.super Ljava/lang/Object;
.source "JSAThrottledDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    .prologue
    .line 106
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$2;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher$2;->this$0:Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;->access$300(Lnz/co/jsalibrary/android/util/JSAThrottledDispatcher;)V

    .line 109
    return-void
.end method
