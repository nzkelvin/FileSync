.class public abstract Lnz/co/jsalibrary/android/database/JSADbBase;
.super Ljava/lang/Object;
.source "JSADbBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/database/JSADbBase$SimpleDbBase;,
        Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;,
        Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Q:",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "U:",
        "Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CHUNK_OPERATION_TIME:J = 0x3e8L

.field protected static final DEFAULT_CHUNK_SLEEP_TIME:J = 0x1f4L

.field protected static final MIN_CHUNK_OPERATION_TIME:J = 0x64L

.field protected static final MIN_CHUNK_SIZE:I = 0x1

.field protected static final MIN_CHUNK_SLEEP_TIME:J = 0x64L

.field protected static final PROCESS_INSERT:I = 0x0

.field protected static final PROCESS_INSERT_OR_IGNORE:I = 0x2

.field protected static final PROCESS_INSERT_OR_UPDATE:I = 0x1

.field protected static final PROCESS_UPDATE:I = 0x3

.field protected static final SQLITE_AUTOINCREMENT:Ljava/lang/String; = "AUTOINCREMENT"

.field protected static final SQLITE_BLOB:Ljava/lang/String; = "BLOB"

.field protected static final SQLITE_INTEGER:Ljava/lang/String; = "INTEGER"

.field protected static final SQLITE_NOT_NULL:Ljava/lang/String; = "NOT NULL"

.field protected static final SQLITE_PRIMARY_KEY:Ljava/lang/String; = "PRIMARY KEY"

.field protected static final SQLITE_REAL:Ljava/lang/String; = "REAL"

.field protected static final SQLITE_TEXT:Ljava/lang/String; = "TEXT"

.field protected static final SQLITE_UNIQUE:Ljava/lang/String; = "UNIQUE"


# instance fields
.field protected final mLogTimings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "logTimings"    # Z

    .prologue
    .line 68
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    .line 70
    return-void
.end method

.method public static varargs buildCreateIndexSQL(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "indexName"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .param p3, "ifNotExists"    # Z
    .param p4, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1846
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    array-length v1, p4

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1847
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v1, "UNIQUE "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INDEX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_3

    const-string v1, "IF NOT EXISTS "

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {p4, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1847
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method public static varargs buildCreateIndexSQL(Ljava/lang/String;ZZ[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "unique"    # Z
    .param p2, "ifNotExists"    # Z
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1832
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1833
    :cond_1
    invoke-static {p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->getCreateIndexName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildCreateIndexSQL(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs buildDropIndexSQL(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ifExists"    # Z
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1882
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1883
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_2

    const-string v0, "IF EXISTS "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, " "

    goto :goto_0
.end method

.method public static varargs buildDropIndexSQL([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1872
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildDropIndexSQL(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 1433
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1434
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v1, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 1436
    aget-object v2, p2, v0

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1436
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1437
    :cond_3
    const-string v2, " AND "

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1625
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 1626
    return-void
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ifExists"    # Z

    .prologue
    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, " IF EXISTS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1640
    return-void

    .line 1639
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static emptyTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 1921
    const-string v2, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1923
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1924
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1925
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1923
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1928
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1930
    return-void
.end method

.method public static varargs getCreateIndexName([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-static {p0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCursorValues(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1380
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1381
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, "columnNames":[Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1384
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1385
    .local v2, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 1386
    .local v0, "columnName":Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1387
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1389
    .end local v2    # "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method public static getExistingTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1600
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "SELECT name FROM sqlite_master WHERE type = \'table\'"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1603
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1604
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1607
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public static isExistingColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 1568
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1569
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1571
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1572
    .local v0, "columnIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    .line 1574
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    .line 1572
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1574
    .end local v0    # "columnIndex":I
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static isExistingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1584
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1585
    :cond_1
    const-string v3, "SELECT name FROM sqlite_master WHERE type = \'table\' AND name = ?"

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1587
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1589
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_2
    move v1, v2

    .line 1587
    goto :goto_0

    .line 1589
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static printTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 1712
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 1713
    return-void
.end method

.method public static printTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnWidth"    # I
    .param p3, "columnGap"    # I

    .prologue
    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1719
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1, v0, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Ljava/lang/String;Landroid/database/Cursor;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1723
    :cond_0
    return-void

    .line 1721
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method public static printTable(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1727
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Ljava/lang/String;Landroid/database/Cursor;II)V

    .line 1728
    return-void
.end method

.method public static printTable(Ljava/lang/String;Landroid/database/Cursor;II)V
    .locals 1
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnWidth"    # I
    .param p3, "columnGap"    # I

    .prologue
    .line 1735
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Ljava/lang/String;Landroid/database/Cursor;Ljava/io/PrintStream;II)V

    .line 1736
    return-void
.end method

.method public static printTable(Ljava/lang/String;Landroid/database/Cursor;Ljava/io/PrintStream;II)V
    .locals 16
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "stream"    # Ljava/io/PrintStream;
    .param p3, "columnWidth"    # I
    .param p4, "columnGap"    # I

    .prologue
    .line 1763
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v9, 0x6

    move/from16 v0, p3

    if-lt v0, v9, :cond_0

    if-gez p4, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 1764
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    move/from16 v0, p4

    invoke-static {v10, v0}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, "columnFormat":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " columns"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1768
    .local v1, "columnCountString":Ljava/lang/String;
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rows"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1769
    .local v7, "rowCountString":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1772
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    .line 1773
    .local v6, "names":[Ljava/lang/String;
    array-length v10, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_5

    aget-object v5, v6, v9

    .line 1774
    .local v5, "name":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    move/from16 v0, p3

    if-le v13, v0, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v14, v14, p3

    add-int/lit8 v14, v14, 0x3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    aput-object v5, v11, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1773
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1767
    .end local v1    # "columnCountString":Ljava/lang/String;
    .end local v6    # "names":[Ljava/lang/String;
    .end local v7    # "rowCountString":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " column"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1768
    .restart local v1    # "columnCountString":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " row"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1775
    .restart local v6    # "names":[Ljava/lang/String;
    .restart local v7    # "rowCountString":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintStream;->println()V

    .line 1778
    const-string v9, "-"

    const/4 v10, 0x0

    array-length v11, v6

    add-int v12, p3, p4

    mul-int/2addr v11, v12

    sub-int v11, v11, p4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1781
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1782
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 1786
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1791
    .local v8, "string":Ljava/lang/String;
    :goto_5
    if-nez v8, :cond_6

    const-string v8, "[null]"

    .line 1792
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    move/from16 v0, p3

    if-le v9, v0, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    add-int/lit8 v11, p3, -0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1793
    :cond_7
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1782
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1787
    .end local v8    # "string":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1788
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .restart local v8    # "string":Ljava/lang/String;
    goto :goto_5

    .line 1795
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v8    # "string":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintStream;->println()V

    .line 1781
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 1797
    .end local v4    # "i":I
    :cond_9
    return-void
.end method


# virtual methods
.method protected varargs buildCreateIndexSQL(ZZ[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "unique"    # Z
    .param p2, "ifNotExists"    # Z
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1819
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1820
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildCreateIndexSQL(Ljava/lang/String;ZZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs buildCreateIndexSQL([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    .line 1808
    invoke-virtual {p0, v0, v0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildCreateIndexSQL(ZZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1450
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildCreateTableSQL(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected buildCreateTableSQL(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1504
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "primaryKeyColumnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildCreateTableSQL(Ljava/util/List;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected buildCreateTableSQL(Ljava/util/List;Ljava/util/List;Z)Ljava/lang/String;
    .locals 6
    .param p3, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1522
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "primaryKeyColumnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1523
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1524
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    const-string v4, "IF NOT EXISTS "

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    .local v2, "createTableCommand":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1527
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 1528
    .local v1, "column":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    const-string v4, " , "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1524
    .end local v1    # "column":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "createTableCommand":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    const-string v4, ""

    goto :goto_0

    .line 1531
    .restart local v2    # "createTableCommand":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", PRIMARY KEY ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-static {p2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "));"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected buildCreateTableSQL(Ljava/util/List;Z)Ljava/lang/String;
    .locals 6
    .param p2, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1460
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1461
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1462
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const-string v4, "IF NOT EXISTS "

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1463
    .local v2, "createTableCommand":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1465
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 1466
    .local v1, "column":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    const-string v4, " , "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1462
    .end local v1    # "column":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "createTableCommand":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    const-string v4, ""

    goto :goto_0

    .line 1469
    .restart local v2    # "createTableCommand":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_3
    const-string v4, ");"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected buildCreateTableSQL(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "primaryKeyColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1487
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildCreateTableSQL(Ljava/util/List;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public deleteAllRows(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    .line 1327
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public deleteItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1337
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1340
    :goto_0
    return v2

    .line 1338
    :cond_1
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 1339
    .local v1, "uniqueIds":[Ljava/lang/String;
    new-instance v2, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v2}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1340
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public deleteRow(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1271
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1272
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/database/JSADbBase;->deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    goto :goto_0
.end method

.method public deleteRows(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1286
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1289
    :goto_0
    return v1

    .line 1287
    :cond_1
    new-instance v1, Lnz/co/jsalibrary/android/database/JSADbBase$4;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/database/JSADbBase$4;-><init>(Lnz/co/jsalibrary/android/database/JSADbBase;)V

    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1289
    .local v0, "placeholders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-static {v0, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public deleteRows([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1281
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/database/JSADbBase;->deleteRows(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method public deleteSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1298
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1299
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1301
    :cond_1
    :goto_0
    return v1

    .line 1300
    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v1

    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1301
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v1

    invoke-direct {p0, v3, v4}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public deleteSelectedRowsIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1310
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1311
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1318
    :cond_2
    :goto_0
    return v3

    .line 1312
    :cond_3
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1314
    new-instance v3, Lnz/co/jsalibrary/android/database/JSADbBase$5;

    invoke-direct {v3, p0}, Lnz/co/jsalibrary/android/database/JSADbBase$5;-><init>(Lnz/co/jsalibrary/android/database/JSADbBase;)V

    invoke-static {p2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1316
    .local v2, "placeholders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Ljava/lang/String;

    invoke-static {p2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1317
    .local v0, "args":[Ljava/lang/String;
    const-string v3, ","

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, "placeholderString":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public exists(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 1349
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return v3

    .line 1350
    :cond_1
    const/4 v1, 0x0

    .line 1352
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 1353
    .local v2, "uniqueIds":[Ljava/lang/String;
    new-instance v4, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v4}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1354
    .local v0, "args":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnNames()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1355
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 1357
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "uniqueIds":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public exists(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1363
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v3

    .line 1370
    :cond_1
    :goto_0
    return v2

    .line 1364
    :cond_2
    const/4 v1, 0x0

    .line 1366
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    .line 1367
    .local v0, "args":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " =? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1368
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 1370
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1368
    goto :goto_1

    .line 1370
    .end local v0    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public getAllItems(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItems(Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllItems(Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p3, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 835
    :cond_1
    :goto_0
    return-object v1

    .line 830
    :cond_2
    const/4 v0, 0x0

    .line 832
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    .line 833
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 835
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public getAllItemsCount(Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "recursive"    # Z

    .prologue
    .line 845
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCount(Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)I

    move-result v0

    return v0
.end method

.method public getAllItemsCount(Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)I"
        }
    .end annotation

    .prologue
    .line 850
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p3, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 851
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "recursive"    # Z

    .prologue
    .line 863
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 871
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p3, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZ)Landroid/database/Cursor;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "includeRowId"    # Z
    .param p3, "recursive"    # Z

    .prologue
    .line 879
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "includeRowId"    # Z
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v1, 0x0

    .line 887
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-object v1

    .line 888
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "*, _ROWID_ as _id"

    .line 889
    .local v0, "selectColumns":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 888
    .end local v0    # "selectColumns":Ljava/lang/String;
    :cond_2
    const-string v0, "*"

    goto :goto_1
.end method

.method public getAllItemsItem(Landroid/database/sqlite/SQLiteDatabase;IZ)Ljava/lang/Object;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "position"    # I
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsItem(Landroid/database/sqlite/SQLiteDatabase;IZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemsItem(Landroid/database/sqlite/SQLiteDatabase;IZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "position"    # I
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "IZTQ;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v2, 0x0

    .line 903
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-object v2

    .line 904
    :cond_1
    const/4 v0, 0x0

    .line 906
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    .line 907
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 908
    .local v1, "success":Z
    if-nez v1, :cond_2

    .line 911
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 909
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0, p1, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 911
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getColumnNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v2, 0x0

    .line 1541
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1542
    :cond_1
    invoke-virtual {p0, p1, v2, v2}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZ)Landroid/database/Cursor;

    move-result-object v0

    .line 1544
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1546
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected abstract getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected abstract getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 1398
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 6
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "TU;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 1403
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p4, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    invoke-virtual {p0, p1, p2, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1404
    .local v3, "raw":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    .line 1405
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v4, Lnz/co/jsalibrary/android/database/JSADbBase$6;

    invoke-direct {v4, p0}, Lnz/co/jsalibrary/android/database/JSADbBase$6;-><init>(Lnz/co/jsalibrary/android/database/JSADbBase;)V

    invoke-static {v0, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1408
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1409
    .local v1, "key":Ljava/lang/String;
    invoke-static {p3, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1410
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 8
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v7, 0x0

    .line 666
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 669
    :goto_0
    return-object v0

    .line 667
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v6

    .line 668
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v7

    goto :goto_0

    .line 669
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v7, 0x0

    .line 647
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 650
    :goto_0
    return-object v0

    .line 648
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v6

    .line 649
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v7

    goto :goto_0

    .line 650
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCursor(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 8
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "includeRowId"    # Z
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v7, 0x0

    .line 710
    :cond_1
    :goto_0
    return-object v7

    .line 707
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v7

    .line 708
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method public getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z

    .prologue
    .line 678
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZ)Landroid/database/Cursor;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "includeRowId"    # Z
    .param p4, "recursive"    # Z

    .prologue
    .line 688
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "includeRowId"    # Z
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v7, 0x0

    .line 697
    :cond_1
    :goto_0
    return-object v7

    .line 694
    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v7

    .line 695
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method public getItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 7
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 740
    :cond_1
    :goto_0
    return-object v0

    .line 735
    :cond_2
    const/4 v6, 0x0

    .line 737
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v6

    .line 738
    invoke-virtual {p0, v6, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 740
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getItems([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItems([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 6
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZ)Landroid/database/Cursor;
    .locals 6
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "includeRowId"    # Z
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZ)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 801
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 6
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "includeRowId"    # Z
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 815
    :goto_0
    return-object v4

    .line 810
    :cond_1
    new-instance v4, Lnz/co/jsalibrary/android/database/JSADbBase$2;

    invoke-direct {v4, p0}, Lnz/co/jsalibrary/android/database/JSADbBase$2;-><init>(Lnz/co/jsalibrary/android/database/JSADbBase;)V

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 812
    .local v2, "placeholders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 813
    .local v0, "args":[Ljava/lang/String;
    const-string v4, ","

    invoke-static {v2, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "placeholderString":Ljava/lang/String;
    if-eqz p3, :cond_2

    const-string v3, "*, _ROWID_ as _id"

    .line 815
    .local v3, "selectColumns":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 814
    .end local v3    # "selectColumns":Ljava/lang/String;
    :cond_2
    const-string v3, "*"

    goto :goto_1
.end method

.method public getItemsCursor([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z

    .prologue
    .line 753
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCursor([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 6
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCursor([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZ)Landroid/database/Cursor;
    .locals 6
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "includeRowId"    # Z
    .param p4, "recursive"    # Z

    .prologue
    .line 769
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCursor([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 6
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "includeRowId"    # Z
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getItemsCursor(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 921
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 926
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItem([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 931
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItem([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 10
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)TT;"
        }
    .end annotation

    .prologue
    .line 936
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    array-length v1, p1

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 943
    :cond_1
    :goto_0
    return-object v0

    .line 937
    :cond_2
    const/4 v8, 0x0

    .line 939
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;

    move-result-object v8

    .line 940
    invoke-virtual {p0, v8, p3, p4, p5}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v9

    .line 941
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 943
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 941
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 943
    .end local v9    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 953
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .param p6, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 963
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItems(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 7
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItems(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 8
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItems(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;
    .locals 9
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .param p7, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1014
    :cond_1
    :goto_0
    return-object v0

    .line 1009
    :cond_2
    const/4 v8, 0x0

    .line 1011
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;

    move-result-object v8

    .line 1012
    invoke-virtual {p0, v8, p3, p5, p6}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1014
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 6
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 972
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 7
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 977
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItems([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;
    .locals 9
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .param p6, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 982
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    array-length v1, p1

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 988
    :cond_1
    :goto_0
    return-object v0

    .line 983
    :cond_2
    const/4 v8, 0x0

    .line 985
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;

    move-result-object v8

    .line 986
    invoke-virtual {p0, v8, p3, p4, p5}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 988
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getSelectedItemsCount(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1050
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCount(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result v0

    return v0
.end method

.method public getSelectedItemsCount(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z

    .prologue
    .line 1055
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCount(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)I

    move-result v0

    return v0
.end method

.method public getSelectedItemsCount(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1060
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 1063
    :goto_0
    return v2

    .line 1061
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    aput-object p2, v2, v4

    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1062
    .local v0, "args":[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v4

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-direct {p0, v2, v3}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "whereClause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0
.end method

.method public getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z

    .prologue
    .line 1075
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1083
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZ)Landroid/database/Cursor;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z

    .prologue
    .line 1091
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursor(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1099
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;
    .locals 7
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z

    .prologue
    .line 1141
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 8
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1149
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;
    .locals 4
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .param p7, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v3, -0x1

    .line 1165
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1169
    :goto_0
    return-object v2

    .line 1166
    :cond_1
    if-ge p7, v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "limit must either be a positive integer or -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1167
    :cond_2
    if-eqz p4, :cond_3

    const-string v1, "*, _ROWID_ as _id"

    .line 1168
    .local v1, "selectColumns":Ljava/lang/String;
    :goto_1
    if-eq p7, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "limitClause":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 1167
    .end local v0    # "limitClause":Ljava/lang/String;
    .end local v1    # "selectColumns":Ljava/lang/String;
    :cond_3
    const-string v1, "*"

    goto :goto_1

    .line 1168
    .restart local v1    # "selectColumns":Ljava/lang/String;
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method public getSelectedItemsCursor([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 8
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursor([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursor([Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;
    .locals 7
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .param p7, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v6, -0x1

    .line 1123
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    array-length v5, p1

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 1129
    :goto_0
    return-object v4

    .line 1124
    :cond_1
    if-ge p7, v6, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "limit must either be a positive integer or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1125
    :cond_2
    if-eqz p4, :cond_3

    const-string v2, "*, _ROWID_ as _id"

    .line 1126
    .local v2, "selectColumns":Ljava/lang/String;
    :goto_1
    new-instance v4, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v4}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {p2, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1127
    .local v0, "args":[Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1128
    .local v3, "whereClause":Ljava/lang/String;
    if-eq p7, v6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "limitClause":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 1125
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "limitClause":Ljava/lang/String;
    .end local v2    # "selectColumns":Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_3
    const-string v2, "*"

    goto :goto_1

    .line 1128
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "selectColumns":Ljava/lang/String;
    .restart local v3    # "whereClause":Ljava/lang/String;
    :cond_4
    const-string v1, ""

    goto :goto_2
.end method

.method public getSelectedItemsCursorIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Landroid/database/Cursor;
    .locals 8
    .param p1, "columnName"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1181
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursorIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsCursorIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .param p7, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v6, -0x1

    .line 1197
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 1205
    :goto_0
    return-object v5

    .line 1198
    :cond_1
    if-ge p7, v6, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "limit must either be a positive integer or -1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1199
    :cond_2
    new-instance v5, Lnz/co/jsalibrary/android/database/JSADbBase$3;

    invoke-direct {v5, p0}, Lnz/co/jsalibrary/android/database/JSADbBase$3;-><init>(Lnz/co/jsalibrary/android/database/JSADbBase;)V

    invoke-static {p2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1201
    .local v3, "placeholders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v5, Ljava/lang/String;

    invoke-static {p2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1202
    .local v0, "args":[Ljava/lang/String;
    const-string v5, ","

    invoke-static {v3, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1203
    .local v2, "placeholderString":Ljava/lang/String;
    if-eqz p4, :cond_3

    const-string v4, "*, _ROWID_ as _id"

    .line 1204
    .local v4, "selectColumns":Ljava/lang/String;
    :goto_1
    if-eq p7, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LIMIT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, "limitClause":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 1203
    .end local v1    # "limitClause":Ljava/lang/String;
    .end local v4    # "selectColumns":Ljava/lang/String;
    :cond_3
    const-string v4, "*"

    goto :goto_1

    .line 1204
    .restart local v4    # "selectColumns":Ljava/lang/String;
    :cond_4
    const-string v1, ""

    goto :goto_2
.end method

.method public getSelectedItemsIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1024
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 8
    .param p1, "columnName"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1029
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemsIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Ljava/util/List;
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "includeRowId"    # Z
    .param p5, "recursive"    # Z
    .param p7, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1040
    :cond_1
    :goto_0
    return-object v0

    .line 1035
    :cond_2
    const/4 v8, 0x0

    .line 1037
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->getSelectedItemsCursorIn(Ljava/lang/String;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;I)Landroid/database/Cursor;

    move-result-object v8

    .line 1038
    invoke-virtual {p0, v8, p3, p5, p6}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1040
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method protected abstract getUniqueColumnName()Ljava/lang/String;
.end method

.method protected getUniqueColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected abstract getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public insertChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJ)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJTU;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p7, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->processChunkedItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x1f4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 4
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")J"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)J
    .locals 4
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)J"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    .line 571
    :goto_0
    return-wide v2

    .line 570
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    .line 571
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public insertItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->processItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrIgnoreChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrIgnoreItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrIgnoreChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJ)Z"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrIgnoreChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrIgnoreChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJTU;)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p7, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->processChunkedItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrIgnoreChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x1f4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrIgnoreChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrIgnoreItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrIgnoreItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrIgnoreItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    .line 534
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSADbBase;->exists(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public insertOrIgnoreItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrIgnoreItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrIgnoreItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->processItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJ)Z"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJTU;)Z"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p7, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->processChunkedItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x1f4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrUpdateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 519
    :goto_0
    return v0

    .line 518
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSADbBase;->exists(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public insertOrUpdateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->processItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public isExistingColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v2, 0x0

    .line 1556
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1557
    :cond_1
    invoke-virtual {p0, p1, v2, v2}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;ZZ)Landroid/database/Cursor;

    move-result-object v1

    .line 1559
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1560
    .local v0, "columnIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v2, 0x1

    .line 1562
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    .end local v0    # "columnIndex":I
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;IZ)Ljava/lang/Object;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "position"    # I
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .line 1254
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;IZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;IZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "position"    # I
    .param p4, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "IZTQ;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v1, 0x0

    .line 1259
    if-eqz p1, :cond_0

    if-ltz p3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt p3, v2, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-object v1

    .line 1260
    :cond_1
    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 1261
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {p0, p1, p2, p4, p5}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)TT;"
        }
    .end annotation
.end method

.method public loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1214
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1219
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p4, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZZ)Ljava/util/List;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .param p4, "closeCursorAfterOperation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZ)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .param p4, "closeCursorAfterOperation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "ZZTQ;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1231
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p5, "queryParams":Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;, "TQ;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    .line 1233
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v1, :cond_3

    const-class v1, Lnz/co/jsalibrary/android/database/JSADbBase;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/Class;)V

    .line 1234
    :cond_3
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v1, :cond_4

    const-class v1, Lnz/co/jsalibrary/android/database/JSADbBase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item(s) from cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1236
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1238
    invoke-virtual {p0, p1, p2, p3, p5}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1244
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v1

    if-eqz p4, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 1240
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_6
    :try_start_2
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v1, :cond_7

    const-class v1, Lnz/co/jsalibrary/android/database/JSADbBase;

    const-string v2, "complete"

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1244
    :cond_7
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1652
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1653
    return-void
.end method

.method public printDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnWidth"    # I
    .param p3, "columnGap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1662
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintStream;II)V

    .line 1663
    return-void
.end method

.method public printDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintStream;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "stream"    # Ljava/io/PrintStream;
    .param p3, "columnWidth"    # I
    .param p4, "columnGap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1672
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintStream;II)V

    .line 1673
    return-void
.end method

.method public printTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1681
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1682
    return-void
.end method

.method public printTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnWidth"    # I
    .param p3, "columnGap"    # I

    .prologue
    .line 1689
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v0, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintStream;II)V

    .line 1690
    return-void
.end method

.method public printTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintStream;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "stream"    # Ljava/io/PrintStream;
    .param p3, "columnWidth"    # I
    .param p4, "columnGap"    # I

    .prologue
    .line 1697
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-lt p3, v1, :cond_0

    if-gez p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1698
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getAllItemsCursor(Landroid/database/sqlite/SQLiteDatabase;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1700
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->printTable(Ljava/lang/String;Landroid/database/Cursor;Ljava/io/PrintStream;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1704
    :cond_2
    return-void

    .line 1702
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method protected processChunkedItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;IJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)I
    .locals 13
    .param p1, "process"    # I
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "start"    # I
    .param p5, "maxTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "IJTU;)I"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p7, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v8, -0x1

    .line 502
    :goto_0
    return v8

    .line 462
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 463
    .local v4, "itemCount":I
    if-nez v4, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    .line 464
    :cond_2
    if-ltz p4, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, p4

    if-ge v0, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-gez v8, :cond_4

    :cond_3
    const/4 v8, -0x1

    goto :goto_0

    .line 465
    :cond_4
    iget-boolean v8, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v8, :cond_5

    const-class v8, Lnz/co/jsalibrary/android/database/JSADbBase;

    invoke-static {v8}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/Class;)V

    .line 466
    :cond_5
    iget-boolean v8, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v8, :cond_6

    const-class v8, Lnz/co/jsalibrary/android/database/JSADbBase;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processing chunked items for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v10}, Lnz/co/jsalibrary/android/util/JSATimeUtil;->humanReadableDuration(JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 467
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 468
    .local v6, "startTime":J
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 472
    move/from16 v3, p4

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 473
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long v8, v8, p5

    if-ltz v8, :cond_9

    .line 494
    :cond_7
    iget-boolean v8, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v8, :cond_8

    const-class v8, Lnz/co/jsalibrary/android/database/JSADbBase;

    const-string v9, "complete"

    invoke-static {v8, v9}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 495
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    sub-int v8, v3, p4

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 474
    :cond_9
    const/4 v5, 0x0

    .line 476
    .local v5, "success":Z
    packed-switch p1, :pswitch_data_0

    .line 491
    :goto_2
    if-nez v5, :cond_a

    :try_start_1
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error processing chunked item: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-static {v10, v11}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    .end local v5    # "success":Z
    :catch_0
    move-exception v2

    .line 499
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "error processing chunked items"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lnz/co/jsalibrary/android/database/JSADbBase;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v2, v9}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    const/4 v8, -0x1

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 478
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v5    # "success":Z
    :pswitch_0
    :try_start_3
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-virtual {p0, v8, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v5

    .line 479
    goto :goto_2

    .line 481
    :pswitch_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-virtual {p0, v8, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v5

    .line 482
    goto :goto_2

    .line 484
    :pswitch_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-virtual {p0, v8, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrIgnoreItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v5

    .line 485
    goto :goto_2

    .line 487
    :pswitch_3
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-virtual {p0, v8, v0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    goto :goto_2

    .line 472
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 502
    .end local v5    # "success":Z
    :catchall_0
    move-exception v8

    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected processChunkedItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 12
    .param p1, "process"    # I
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "chunkOperationTime"    # J
    .param p6, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJTU;)Z"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p8, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 456
    :goto_0
    return v3

    .line 444
    :cond_1
    const-wide/16 v4, 0x64

    move-wide/from16 v0, p4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 445
    const-wide/16 v4, 0x64

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p6

    .line 446
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    .line 447
    .local v11, "itemCount":I
    if-nez v11, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 448
    :cond_2
    const/4 v7, 0x0

    .local v7, "processed":I
    :goto_1
    if-ge v7, v11, :cond_4

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p8

    .line 449
    invoke-virtual/range {v3 .. v10}, Lnz/co/jsalibrary/android/database/JSADbBase;->processChunkedItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;IJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)I

    move-result v2

    .line 450
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    .line 451
    :cond_3
    add-int/2addr v7, v2

    .line 453
    :try_start_0
    invoke-static/range {p6 .. p7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 454
    :catch_0
    move-exception v3

    goto :goto_1

    .line 456
    .end local v2    # "count":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected processItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 8
    .param p1, "process"    # I
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p4, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 397
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 433
    :cond_1
    :goto_0
    return v3

    .line 398
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    iget-boolean v5, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v5, :cond_3

    const-class v5, Lnz/co/jsalibrary/android/database/JSADbBase;

    invoke-static {v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->resetTime(Ljava/lang/Class;)V

    .line 400
    :cond_3
    iget-boolean v5, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v5, :cond_4

    const-class v5, Lnz/co/jsalibrary/android/database/JSADbBase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 401
    :cond_4
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 404
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 405
    .local v1, "item":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 407
    .local v2, "success":Z
    packed-switch p1, :pswitch_data_0

    .line 422
    :goto_1
    if-nez v2, :cond_5

    new-instance v3, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error processing item: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 430
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "error processing items"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lnz/co/jsalibrary/android/database/JSADbBase;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v0, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v4

    goto/16 :goto_0

    .line 409
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v1    # "item":Ljava/lang/Object;, "TT;"
    .restart local v2    # "success":Z
    :pswitch_0
    :try_start_2
    invoke-virtual {p0, v1, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    .line 410
    goto :goto_1

    .line 412
    :pswitch_1
    invoke-virtual {p0, v1, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    .line 413
    goto :goto_1

    .line 415
    :pswitch_2
    invoke-virtual {p0, v1, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertOrIgnoreItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    .line 416
    goto :goto_1

    .line 418
    :pswitch_3
    invoke-virtual {p0, v1, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v2

    goto :goto_1

    .line 425
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "success":Z
    :cond_6
    iget-boolean v5, p0, Lnz/co/jsalibrary/android/database/JSADbBase;->mLogTimings:Z

    if-eqz v5, :cond_7

    const-class v5, Lnz/co/jsalibrary/android/database/JSADbBase;

    const-string v6, "complete"

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSALogUtil;->logTime(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 426
    :cond_7
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJ)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJ)Z"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "chunkOperationTime"    # J
    .param p5, "chunkSleepTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJTU;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p7, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->processChunkedItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 9
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x1f4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateChunkedItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;JJLnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 7
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 585
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, v4

    .line 589
    :cond_1
    :goto_0
    return v3

    .line 586
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v1

    .line 587
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "uniqueIds":[Ljava/lang/String;
    new-instance v5, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 589
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 7
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p4, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 599
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, v4

    .line 603
    :cond_1
    :goto_0
    return v3

    .line 600
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;

    move-result-object v1

    .line 601
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueIds(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "uniqueIds":[Ljava/lang/String;
    new-instance v5, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v2, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 603
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lnz/co/jsalibrary/android/database/JSADbBase;->buildWhereClauseForEqualColumns([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public updateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/database/JSADbBase;->updateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TU;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p3, "updateParams":Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;, "TU;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->processItems(ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    move-result v0

    return v0
.end method

.method public updateRow(Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 612
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 613
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {p3, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public updateSelectedRows(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    const/4 v0, 0x0

    .line 632
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v0

    invoke-virtual {p4, v1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public updateSelectedRows(Ljava/util/List;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase<TT;TQ;TU;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 627
    :goto_0
    return v3

    .line 623
    :cond_1
    new-instance v3, Lnz/co/jsalibrary/android/database/JSADbBase$1;

    invoke-direct {v3, p0}, Lnz/co/jsalibrary/android/database/JSADbBase$1;-><init>(Lnz/co/jsalibrary/android/database/JSADbBase;)V

    invoke-static {p1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 625
    .local v2, "placeholders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 626
    .local v0, "args":[Ljava/lang/String;
    const-string v3, ","

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "placeholderString":Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, p2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public abstract upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
