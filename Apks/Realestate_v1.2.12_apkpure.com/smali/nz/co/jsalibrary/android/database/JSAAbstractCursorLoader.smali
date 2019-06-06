.class public abstract Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "JSAAbstractCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 22
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 58
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 60
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 62
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public abstract loadCursor()Landroid/database/Cursor;
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->loadCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 32
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 34
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 36
    :cond_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 92
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->onStopLoading()V

    .line 94
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 96
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->forceLoad()V

    .line 76
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSAAbstractCursorLoader;->cancelLoad()Z

    .line 82
    return-void
.end method
