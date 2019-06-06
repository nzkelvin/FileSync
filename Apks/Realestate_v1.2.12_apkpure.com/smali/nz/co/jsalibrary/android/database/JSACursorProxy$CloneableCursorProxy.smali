.class public Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;
.super Lnz/co/jsalibrary/android/database/JSACursorProxy;
.source "JSACursorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSACursorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloneableCursorProxy"
.end annotation


# instance fields
.field protected final mSelection:Ljava/lang/String;

.field protected final mSelectionArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/database/JSACursorProxy;-><init>(Landroid/database/Cursor;)V

    .line 71
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelection:Ljava/lang/String;

    .line 72
    if-eqz p3, :cond_1

    const-class v0, Ljava/lang/String;

    invoke-static {p3, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->clone([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelectionArgs:[Ljava/lang/String;

    .line 73
    return-void

    :cond_0
    move-object v0, v1

    .line 71
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 72
    goto :goto_1
.end method


# virtual methods
.method public clone(Landroid/database/sqlite/SQLiteDatabase;)Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;
    .locals 6
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelection:Ljava/lang/String;

    iget-object v5, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 78
    :cond_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelection:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelection:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "selection":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;->mSelectionArgs:[Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->clone([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    .line 80
    .local v2, "selectionArgs":[Ljava/lang/String;
    :goto_1
    new-instance v3, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;

    invoke-direct {v3, v0, v1, v2}, Lnz/co/jsalibrary/android/database/JSACursorProxy$CloneableCursorProxy;-><init>(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3

    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    move-object v1, v3

    .line 78
    goto :goto_0

    .restart local v1    # "selection":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 79
    goto :goto_1
.end method
