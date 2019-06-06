.class final Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;
.super Ljava/lang/Object;
.source "JSABackgroundJobIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->startService(Landroid/content/Context;Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$service:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$service:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    iput-object p3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$service:Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v1, "bundle"

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 391
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 392
    return-void
.end method
