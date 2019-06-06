.class Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;
.super Ljava/lang/Object;
.source "JSAStatefulMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->setState(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

.field final synthetic val$oldState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

.field final synthetic val$state:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    .prologue
    .line 338
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    iput-object p2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;->val$oldState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    iput-object p3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;->val$state:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 340
    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    invoke-static {v1}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;->access$500(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;)Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;

    move-result-object v0

    .line 341
    .local v0, "onStateChangeListener":Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;->this$0:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;

    iget-object v2, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;->val$oldState:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    iget-object v3, p0, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$2;->val$state:Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;

    invoke-interface {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$OnStateChangeListener;->onStateChange(Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;Lnz/co/jsalibrary/android/media/JSAStatefulMediaPlayer$State;)V

    .line 342
    :cond_0
    return-void
.end method
