.class public Lnz/co/jsalibrary/android/database/JSACursorProxy$SQLiteCursorProxy;
.super Lnz/co/jsalibrary/android/database/JSACursorProxy;
.source "JSACursorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSACursorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SQLiteCursorProxy"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteCursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/sqlite/SQLiteCursor;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/database/JSACursorProxy;-><init>(Landroid/database/Cursor;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSACursorProxy$SQLiteCursorProxy;->getWrappedCursor()Landroid/database/sqlite/SQLiteCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSACursorProxy$SQLiteCursorProxy;->getWrappedCursor()Landroid/database/sqlite/SQLiteCursor;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedCursor()Landroid/database/sqlite/SQLiteCursor;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lnz/co/jsalibrary/android/database/JSACursorProxy;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    return-object v0
.end method
