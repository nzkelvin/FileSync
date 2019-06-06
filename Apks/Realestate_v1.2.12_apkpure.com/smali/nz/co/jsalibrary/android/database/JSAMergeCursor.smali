.class public Lnz/co/jsalibrary/android/database/JSAMergeCursor;
.super Landroid/database/AbstractCursor;
.source "JSAMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/database/Cursor;",
        ">",
        "Landroid/database/AbstractCursor;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mCursors:[Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    .local p1, "cursors":[Landroid/database/Cursor;, "[TT;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 26
    new-instance v1, Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/database/JSAMergeCursor$1;-><init>(Lnz/co/jsalibrary/android/database/JSAMergeCursor;)V

    iput-object v1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 37
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    .line 38
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 45
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lnz/co/jsalibrary/android/database/JSAMergeCursor;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSAMergeCursor;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lnz/co/jsalibrary/android/database/JSAMergeCursor;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSAMergeCursor;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 139
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 140
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 141
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 140
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 144
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 145
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 129
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 130
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 131
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 136
    return-void
.end method

.method public getActiveCursor()Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 117
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 48
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    const/4 v0, 0x0

    .line 49
    .local v0, "count":I
    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 50
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 51
    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return v0
.end method

.method public getCursorPosition(I)I
    .locals 5
    .param p1, "cursorIndex"    # I

    .prologue
    .line 259
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    if-ltz p1, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 263
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 264
    if-ne v0, p1, :cond_2

    .line 268
    .end local v1    # "position":I
    :goto_1
    return v1

    .line 265
    .restart local v1    # "position":I
    :cond_2
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCursors()[Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 105
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 101
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 93
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 97
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 89
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 85
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 113
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 6
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 60
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "cursorStartPos":I
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v4

    .line 63
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 64
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    if-ge p2, v4, :cond_2

    .line 69
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    iput-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 77
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    .line 78
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int v5, p2, v0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    .line 81
    :goto_2
    return v3

    .line 73
    :cond_2
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 81
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 148
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 149
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 150
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 166
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 167
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 168
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 184
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 185
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 186
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    const/4 v2, 0x0

    .line 195
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 157
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 158
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 159
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 175
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSAMergeCursor;, "Lnz/co/jsalibrary/android/database/JSAMergeCursor<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 176
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 177
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSAMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method
