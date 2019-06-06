.class public Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;
.source "JSAFlexibleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "W:",
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;",
        ">",
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter",
        "<TW;>;"
    }
.end annotation


# instance fields
.field private mRow:Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
            "<TT;TW;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 6
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "resouceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
            "<TT;TW;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter<TT;TW;>;"
    .local p1, "row":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow<TT;TW;>;"
    .local p2, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput p5, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[I)V
    .locals 2
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "resouceIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
            "<TT;TW;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter<TT;TW;>;"
    .local p1, "row":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow<TT;TW;>;"
    .local p2, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomCursorAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;Landroid/database/Cursor;[I)V

    .line 38
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "flexible row cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;->mRow:Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;

    .line 40
    return-void
.end method


# virtual methods
.method protected updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter<TT;TW;>;"
    .local p1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleCursorAdapter;->mRow:Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;->updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 48
    return-void
.end method
