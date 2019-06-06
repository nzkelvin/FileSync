.class public abstract Lnz/co/jsalibrary/android/task/JSAGetUserLocationAsyncTask;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;
.source "JSAGetUserLocationAsyncTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/task/JSAGetUserLocationAsyncTask;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    new-instance v0, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousJob;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/background/job/JSAGetUserLocationJob$SynchronousJob;-><init>()V

    sget-object v1, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;->HANDLER_THREAD:Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;

    invoke-direct {p0, v0, p1, p2, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;-><init>(Lnz/co/jsalibrary/android/background/JSABackgroundJob;Landroid/content/Context;Landroid/os/Bundle;Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask$ThreadType;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract onPostExecute(Landroid/location/Location;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/task/JSAGetUserLocationAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobMultiAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 40
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 41
    .local v0, "location":Landroid/location/Location;
    :goto_0
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/task/JSAGetUserLocationAsyncTask;->onPostExecute(Landroid/location/Location;)V

    .line 42
    return-void

    .line 40
    .end local v0    # "location":Landroid/location/Location;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    move-object v0, v1

    goto :goto_0
.end method
