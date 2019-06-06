.class public Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;
.super Ljava/lang/Object;
.source "JSAMultiThreadedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/service/JSAMultiThreadedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnQueueIntentAction"
.end annotation


# instance fields
.field private final mDeleteQueuedIntents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueue:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "queue"    # Z

    .prologue
    .line 683
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;-><init>(ZLjava/util/Collection;)V

    .line 684
    return-void
.end method

.method public constructor <init>(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "queue"    # Z
    .param p2, "deleteQueuedIntent"    # Landroid/content/Intent;

    .prologue
    .line 693
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;-><init>(ZLjava/util/Collection;)V

    .line 694
    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;)V
    .locals 0
    .param p1, "queue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p2, "deleteQueuedIntents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/Intent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;->mQueue:Z

    .line 704
    iput-object p2, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;->mDeleteQueuedIntents:Ljava/util/Collection;

    .line 705
    return-void
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;

    .prologue
    .line 673
    iget-object v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;->mDeleteQueuedIntents:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;

    .prologue
    .line 673
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/service/JSAMultiThreadedService$OnQueueIntentAction;->mQueue:Z

    return v0
.end method
