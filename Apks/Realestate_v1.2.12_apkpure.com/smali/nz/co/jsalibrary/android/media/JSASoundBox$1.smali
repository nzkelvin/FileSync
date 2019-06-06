.class Lnz/co/jsalibrary/android/media/JSASoundBox$1;
.super Ljava/lang/Object;
.source "JSASoundBox.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSASoundBox;->newToken()Lnz/co/jsalibrary/android/tuple/JSATuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/media/JSASoundBox;

.field final synthetic val$token:Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/media/JSASoundBox;Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/media/JSASoundBox;

    .prologue
    .line 409
    iput-object p1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$1;->this$0:Lnz/co/jsalibrary/android/media/JSASoundBox;

    iput-object p2, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$1;->val$token:Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 411
    iget-object v0, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$1;->this$0:Lnz/co/jsalibrary/android/media/JSASoundBox;

    iget-object v1, p0, Lnz/co/jsalibrary/android/media/JSASoundBox$1;->val$token:Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/media/JSASoundBox;->onPlayerCompletion(Lnz/co/jsalibrary/android/media/JSASoundBox$SoundToken;)V

    .line 412
    return-void
.end method
