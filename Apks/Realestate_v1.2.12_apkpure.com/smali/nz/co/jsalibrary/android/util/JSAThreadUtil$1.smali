.class final Lnz/co/jsalibrary/android/util/JSAThreadUtil$1;
.super Ljava/lang/Object;
.source "JSAThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAThreadUtil;->waitUntilRunOnThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lock:Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$1;->val$lock:Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 107
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$1;->val$lock:Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->unlock()V

    .line 108
    return-void
.end method
