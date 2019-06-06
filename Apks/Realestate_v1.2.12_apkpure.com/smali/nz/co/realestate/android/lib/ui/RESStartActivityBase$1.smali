.class Lnz/co/realestate/android/lib/ui/RESStartActivityBase$1;
.super Landroid/content/BroadcastReceiver;
.source "RESStartActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->initialiseExternalStorageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESStartActivityBase;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESStartActivityBase;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/RESStartActivityBase;

    .prologue
    .line 89
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESStartActivityBase$1;->this$0:Lnz/co/realestate/android/lib/ui/RESStartActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESStartActivityBase$1;->this$0:Lnz/co/realestate/android/lib/ui/RESStartActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;->access$000(Lnz/co/realestate/android/lib/ui/RESStartActivityBase;)V

    .line 92
    return-void
.end method
