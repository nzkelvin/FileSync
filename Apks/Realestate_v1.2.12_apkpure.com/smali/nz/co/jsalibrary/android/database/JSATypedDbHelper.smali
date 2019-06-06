.class public abstract Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
.super Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;
.source "JSATypedDbHelper.java"


# instance fields
.field protected final mTableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 66
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$DefaultConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "assetFileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "initialiseDatabase"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "initialiseDatabase"    # Z
    .param p6, "assetFileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper$ImportFromAssetsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V
    .locals 2
    .param p1, "config"    # Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;-><init>(Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;)V

    .line 71
    invoke-interface {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lnz/co/jsalibrary/android/util/JSASQLiteOpenHelperUtil$Config;->getVersion()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getTableMap(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    .line 72
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-static {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->isTableMapValid(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "table map must be non null and have matching class pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method private static getTableInternal(Lnz/co/jsalibrary/android/database/JSATypedDbHelper;Ljava/lang/Class;)Lnz/co/jsalibrary/android/database/JSATypedDbBase;
    .locals 4
    .param p0, "helper"    # Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnz/co/jsalibrary/android/database/JSATypedDbHelper;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 169
    .local v1, "tableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    .line 170
    .local v0, "table":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    .end local v0    # "table":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<*>;"
    .end local v1    # "tableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 171
    .restart local v0    # "table":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<*>;"
    .restart local v1    # "tableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 173
    .end local v0    # "table":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<*>;"
    .end local v1    # "tableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isTableMapValid(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "tableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lnz/co/jsalibrary/android/database/JSATypedDbBase<*>;>;"
    const/4 v2, 0x0

    .line 213
    if-nez p0, :cond_0

    move v1, v2

    .line 219
    :goto_0
    return v1

    .line 214
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 215
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 217
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    iget-object v1, v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 219
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getExternalDbHelpers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/database/JSATypedDbHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelper(Ljava/lang/Class;)Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lnz/co/jsalibrary/android/database/JSATypedDbHelper;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 137
    .local v0, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Lnz/co/jsalibrary/android/database/JSATypedDbHelper;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 149
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getTableInternal(Lnz/co/jsalibrary/android/database/JSATypedDbHelper;Ljava/lang/Class;)Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    move-result-object v3

    .line 150
    .local v3, "table":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    if-eqz v3, :cond_1

    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-direct {v4, p0, v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_0
    :goto_0
    return-object v4

    .line 152
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getExternalDbHelpers()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "helpers":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    .line 156
    .local v0, "helper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getTableInternal(Lnz/co/jsalibrary/android/database/JSATypedDbHelper;Ljava/lang/Class;)Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    move-result-object v2

    .line 157
    .local v2, "t":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    if-eqz v2, :cond_2

    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-direct {v4, v0, v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getTable(Ljava/lang/Class;)Lnz/co/jsalibrary/android/database/JSATypedDbBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 124
    .local v0, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getTableMap(Landroid/content/Context;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase",
            "<*>;>;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 182
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 185
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    invoke-virtual {v1, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 186
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 190
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSASQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 198
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 200
    :try_start_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 201
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    invoke-virtual {v1, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 202
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 206
    return-void
.end method

.method public recreateTables()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 240
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 242
    :try_start_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 243
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->mTableMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v1, v3, v7}, Lnz/co/jsalibrary/android/database/JSADbBase;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 247
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "error resetting database tables"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    aput-object v7, v4, v6

    invoke-static {v3, v2, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v5

    .line 253
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    return v3

    .line 244
    :cond_0
    :try_start_2
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 245
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v4

    .line 253
    goto :goto_1

    .line 250
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method
