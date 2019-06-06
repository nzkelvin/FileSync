.class public interface abstract Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentListener;
.super Ljava/lang/Object;
.source "JSAMultiThreadedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQueueIntentListener"
.end annotation


# virtual methods
.method public abstract onQueueIntent(Landroid/content/Intent;Ljava/util/Collection;Ljava/util/Collection;)Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/Intent;",
            ">;)",
            "Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;"
        }
    .end annotation
.end method
