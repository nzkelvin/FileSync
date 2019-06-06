.class public Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "JSAFlexibleArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "W:",
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;",
        ">",
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<TT;TW;>;"
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
.method public constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V
    .locals 6
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
            "<TT;TW;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter<TT;TW;>;"
    .local p1, "row":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow<TT;TW;>;"
    .local p2, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 6
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
            "<TT;TW;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter<TT;TW;>;"
    .local p1, "row":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow<TT;TW;>;"
    .local p2, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p5, "objects":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;-><init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;[I[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V
    .locals 2
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
            "<TT;TW;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter<TT;TW;>;"
    .local p1, "row":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow<TT;TW;>;"
    .local p2, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;[ILjava/util/List;)V

    .line 49
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "flexible row cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;->mRow:Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;

    .line 51
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;Ljava/lang/Class;Landroid/content/Context;[I[Ljava/lang/Object;)V
    .locals 2
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resourceIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
            "<TT;TW;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Landroid/content/Context;",
            "[I[TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter<TT;TW;>;"
    .local p1, "row":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow<TT;TW;>;"
    .local p2, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    .local p5, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2, p3, p4, p5}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;[I[Ljava/lang/Object;)V

    .line 39
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "flexible row cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;->mRow:Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;

    .line 41
    return-void
.end method


# virtual methods
.method protected updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;, "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter<TT;TW;>;"
    .local p1, "wrapper":Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;, "TW;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleArrayAdapter;->mRow:Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;->updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
