.class public Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "JSASQLiteDatabaseCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader$CloneableCursorLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field protected mCursor:Landroid/database/Cursor;

.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;

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

.field protected mSelection:Ljava/lang/String;

.field protected mSelectionArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 46
    iput-object p2, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelection:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 74
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 82
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 84
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 88
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->closeCursorOnNewThread(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelection:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 58
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 60
    :cond_0
    return-object v0

    .line 54
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->closeCursorOnNewThread(Landroid/database/Cursor;)V

    .line 120
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 127
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->onStopLoading()V

    .line 129
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->closeCursorOnNewThread(Landroid/database/Cursor;)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 131
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 104
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->forceLoad()V

    .line 106
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->cancelLoad()Z

    .line 115
    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelection:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 147
    return-void
.end method
