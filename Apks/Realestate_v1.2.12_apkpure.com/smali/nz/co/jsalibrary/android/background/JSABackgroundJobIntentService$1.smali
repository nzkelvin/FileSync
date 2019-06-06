.class final Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;
.super Ljava/lang/Object;
.source "JSABackgroundJobIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$cls:Ljava/lang/Class;

    iput-object p3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$cls:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$cls:Ljava/lang/Class;

    invoke-static {v2}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->access$100(Ljava/lang/Class;)Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;

    move-result-object v1

    .line 371
    .local v1, "service":Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;
    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v2, "bundle"

    iget-object v3, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 372
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 373
    return-void
.end method
