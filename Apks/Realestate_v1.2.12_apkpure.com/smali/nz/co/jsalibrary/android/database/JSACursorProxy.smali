.class public Lnz/co/jsalibrary/android/database/JSACursorProxy;
.super Landroid/database/CursorWrapper;
.source "JSACursorProxy.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/database/JSACursorProxy$SQLiteCursorProxy;,
        Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;,
        Lnz/co/jsalibrary/android/database/JSACursorProxy$BackgroundCursorProxy;
    }
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 25
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy;->mCursor:Landroid/database/Cursor;

    .line 26
    return-void
.end method


# virtual methods
.method public getWrappedCursor()Landroid/database/Cursor;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method
