.class Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$1;
.super Ljava/lang/Object;
.source "JSABackgroundJobMultiAsyncTask.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
        "<*>;",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$1;->map(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;)Lnz/co/jsalibrary/android/background/JSABackgroundJob;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;)Lnz/co/jsalibrary/android/background/JSABackgroundJob;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod",
            "<*>;)",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJob",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "item":Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;, "Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod<*>;"
    new-instance v0, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;

    invoke-direct {v0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$MethodBackgroundJob;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$BackgroundJobMethod;)V

    return-object v0
.end method
