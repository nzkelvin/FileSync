.class public Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader$CloneableCursorLoader;
.super Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;
.source "JSASQLiteDatabaseCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloneableCursorLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Landroid/database/Cursor;

    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic loadInBackground()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader$CloneableCursorLoader;->loadInBackground()Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader$CloneableCursorLoader;->loadInBackground()Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    new-instance v1, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;

    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader$CloneableCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader$CloneableCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;-><init>(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Landroid/database/Cursor;

    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/database/JSASQLiteDatabaseCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method
