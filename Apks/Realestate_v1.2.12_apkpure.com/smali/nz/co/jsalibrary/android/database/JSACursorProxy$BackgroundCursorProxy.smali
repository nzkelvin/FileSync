.class public Lnz/co/jsalibrary/android/database/JSACursorProxy$BackgroundCursorProxy;
.super Lnz/co/jsalibrary/android/database/JSACursorProxy;
.source "JSACursorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSACursorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundCursorProxy"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/database/JSACursorProxy;-><init>(Landroid/database/Cursor;)V

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSACursorProxy$BackgroundCursorProxy;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 50
    .local v0, "cursor":Landroid/database/Cursor;
    instance-of v1, v0, Lnz/co/jsalibrary/android/database/JSACursorProxy$BackgroundCursorProxy;

    if-eqz v1, :cond_0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSACursorProxy$BackgroundCursorProxy;

    .end local v0    # "cursor":Landroid/database/Cursor;
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/database/JSACursorProxy$BackgroundCursorProxy;->close()V

    .line 52
    :goto_0
    return-void

    .line 51
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->closeCursorOnNewThread(Landroid/database/Cursor;)V

    goto :goto_0
.end method
