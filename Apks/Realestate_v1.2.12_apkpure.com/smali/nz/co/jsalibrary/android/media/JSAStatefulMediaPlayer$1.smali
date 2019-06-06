.class final Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->create(Landroid/os/Handler;Z)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lock:Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

.field final synthetic val$logStateChange:Z

.field final synthetic val$result:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;


# direct methods
.method constructor <init>([Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;ZLnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;->val$result:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    iput-boolean p2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;->val$logStateChange:Z

    iput-object p3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;->val$lock:Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;->val$result:[Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    const/4 v1, 0x0

    new-instance v2, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    iget-boolean v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;->val$logStateChange:Z

    invoke-direct {v2, v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;-><init>(Z)V

    aput-object v2, v0, v1

    .line 289
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$1;->val$lock:Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$BinaryLock;->unlock()V

    .line 290
    return-void
.end method
