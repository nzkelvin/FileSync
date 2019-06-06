.class Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$2;
.super Ljava/lang/Object;
.source "JSABackgroundJobMultiAsyncTask.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;


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
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generate(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$2;->generate(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
