.class public Lnz/co/jsalibrary/android/database/JSASubsetCursor;
.super Landroid/database/CursorWrapper;
.source "JSASubsetCursor.java"


# instance fields
.field private final mCount:I

.field private final mStart:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 65
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 66
    .local v0, "cursorCount":I
    if-le p2, p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start cannot be larger than end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    if-gez p2, :cond_1

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid start index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    if-le p2, v0, :cond_2

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid start index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    if-le p3, v0, :cond_3

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid end index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_3
    iput p2, p0, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->mStart:I

    .line 72
    sub-int v1, p3, p2

    iput v1, p0, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->mCount:I

    .line 73
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getCount()I

    move-result v0

    .line 137
    .local v0, "count":I
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getPosition()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->mCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget v0, p0, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->mCount:I

    if-gt p1, v0, :cond_0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->mStart:I

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSASubsetCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 216
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 192
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requery()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can never be requested to requery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 228
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 204
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method
