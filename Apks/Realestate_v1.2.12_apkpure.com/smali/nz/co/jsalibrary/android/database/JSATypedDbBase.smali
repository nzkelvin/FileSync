.class public abstract Lnz/co/jsalibrary/android/database/JSATypedDbBase;
.super Lnz/co/jsalibrary/android/database/JSADbBase;
.source "JSATypedDbBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;,
        Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/database/JSADbBase",
        "<TT;",
        "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
        "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLUMN_TYPE_INTEGER:Ljava/lang/String; = "INTEGER"

.field public static final COLUMN_TYPE_REAL:Ljava/lang/String; = "REAL"

.field public static final COLUMN_TYPE_TEXT:Ljava/lang/String; = "TEXT"

.field protected static final DATE_DECODING_FORMATS:[Ljava/lang/String;

.field protected static final DATE_ENCODING_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmssSSSZ"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_CURRENT_DATE:Ljava/lang/String; = "CURRENT_DATE"

.field public static final DEFAULT_CURRENT_TIME:Ljava/lang/String; = "CURRENT_TIME"

.field public static final DEFAULT_CURRENT_TIMESTAMP:Ljava/lang/String; = "CURRENT_TIMESTAMP"


# instance fields
.field protected final mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mColumnFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCurrentVersion:I

.field protected final mDerivedValueFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHelper:Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

.field protected final mLookupFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLookupManyToManyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPrimaryKeyField:Ljava/lang/reflect/Field;

.field protected final mPrimaryKeyIsRowId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 342
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyyMMddHHmmssSSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyyMMddHHmmssZ"

    aput-object v2, v0, v1

    sput-object v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->DATE_DECODING_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/database/JSATypedDbHelper;Ljava/lang/Class;I)V
    .locals 3
    .param p1, "helper"    # Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .param p3, "currentVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/database/JSATypedDbHelper;",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;-><init>()V

    .line 355
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 356
    :cond_1
    invoke-static {p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnFields(Ljava/lang/Class;I)Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    move-result-object v0

    .line 357
    .local v0, "fields":Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    iput p3, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCurrentVersion:I

    .line 358
    invoke-static {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    .line 359
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnType(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyIsRowId:Z

    .line 360
    invoke-static {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$100(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mColumnFields:Ljava/util/List;

    .line 361
    invoke-static {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$200(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mLookupFields:Ljava/util/List;

    .line 362
    invoke-static {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$300(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mLookupManyToManyFields:Ljava/util/List;

    .line 363
    invoke-static {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$400(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mDerivedValueFields:Ljava/util/List;

    .line 364
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mHelper:Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    .line 365
    iput-object p2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    .line 366
    return-void

    .line 359
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getDatabaseColumnFields(Ljava/lang/Class;I)Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    .locals 13
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v1, "columnFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v6, "lookupFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v8, "lookupManyToManyFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v3, "derivedValueFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v9, 0x0

    .line 949
    .local v9, "unique":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredAndInheritedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 950
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v12, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 951
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    const-class v12, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;

    .line 952
    .local v5, "lookup":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;
    const-class v12, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;

    .line 953
    .local v7, "lookupManyToMany":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;
    const-class v12, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;

    .line 955
    .local v2, "derivedValue":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->fromVersion()I

    move-result v12

    if-lt p1, v12, :cond_3

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->toVersion()I

    move-result v12

    if-gt p1, v12, :cond_3

    .line 956
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isPrimaryKey()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isPrimaryKeyAutoIncremented()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    move-object v9, v4

    .line 957
    :cond_2
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 958
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    :cond_3
    if-eqz v5, :cond_4

    .line 960
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 961
    :cond_4
    if-eqz v7, :cond_5

    .line 962
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 963
    :cond_5
    if-eqz v2, :cond_0

    .line 964
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 968
    .end local v0    # "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    .end local v2    # "derivedValue":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "lookup":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;
    .end local v7    # "lookupManyToMany":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;
    :cond_6
    new-instance v10, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;-><init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$1;)V

    .line 969
    .local v10, "wrapper":Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    invoke-static {v10, v9}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$1202(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 970
    invoke-static {v10, v1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$1302(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;

    .line 971
    invoke-static {v10, v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$1402(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;

    .line 972
    invoke-static {v10, v8}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$1502(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;

    .line 973
    invoke-static {v10, v3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$1602(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;

    .line 974
    return-object v10
.end method

.method private getItemColumnFieldValueFromCursor(Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;
    .locals 9
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "columnPrefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "recursive"    # Z
    .param p6, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v4, 0x0

    .line 645
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "databaseColumnName":Ljava/lang/String;
    if-eqz p4, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "databaseColumnName":Ljava/lang/String;
    :cond_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 649
    .local v0, "columnIndex":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    .line 676
    :cond_1
    :goto_0
    return-object v4

    .line 652
    :cond_2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, "object":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 658
    iget-object v7, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mHelper:Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v3

    .line 659
    .local v3, "foreignHelperTableTuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;*>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    move-object v2, v7

    .line 660
    .local v2, "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :goto_1
    if-eqz v3, :cond_4

    .line 661
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    move-object v5, v7

    .line 664
    .local v5, "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :goto_2
    if-nez v5, :cond_5

    invoke-virtual {p0, p1, v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->decodeColumnField(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .end local v2    # "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .end local v5    # "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :cond_3
    move-object v2, v4

    .line 659
    goto :goto_1

    .restart local v2    # "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :cond_4
    move-object v5, v4

    .line 661
    goto :goto_2

    .line 667
    .restart local v5    # "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :cond_5
    if-eqz p5, :cond_1

    invoke-static {p6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 670
    invoke-static {p6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$800(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->get(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 673
    .local v4, "foreignObject":Ljava/lang/Object;, "TF;"
    if-nez v4, :cond_1

    .line 676
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {p6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$1000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    move-result-object v8

    invoke-virtual {v5, v6, v7, p5, v8}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getItem(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method private setItemColumnFieldFromCursor(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V
    .locals 8
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p5, "columnPrefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "recursive"    # Z
    .param p7, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getItemColumnFieldValueFromCursor(Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;

    move-result-object v7

    .line 620
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v7}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setItemColumnFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 621
    return-void
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_1
    iget v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCurrentVersion:I

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getCreateTableColumns(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method protected final decodeColumnField(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const-class v3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 775
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->decodingMethodName()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "decodingMethodName":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->decodeColumnFieldWithMethod(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 783
    :cond_0
    :goto_0
    return-object v1

    .line 777
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->decodeColumnFieldDate(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->decodeColumnFieldCalendar(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 780
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_0

    .line 781
    :cond_5
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->decodeColumnFieldCustom(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 782
    .local v1, "custom":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 783
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p2, v3}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->decodeString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected decodeColumnFieldCalendar(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 804
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    sget-object v4, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->DATE_DECODING_FORMATS:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 806
    .local v2, "format":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 807
    .local v1, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 808
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "format":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 810
    .restart local v2    # "format":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 804
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 812
    .end local v2    # "format":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected decodeColumnFieldCustom(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 820
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected decodeColumnFieldDate(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 791
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    sget-object v2, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->DATE_DECODING_FORMATS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 793
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 796
    .end local v0    # "format":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 794
    .restart local v0    # "format":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected decodeColumnFieldWithMethod(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 825
    const-class v2, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 826
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->decodingMethodName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 827
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 828
    const/4 v2, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public deleteItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1185
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1186
    :cond_0
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSADbBase;->deleteItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method public deleteItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1201
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 1207
    :goto_0
    return v1

    .line 1202
    :cond_2
    new-instance v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;

    invoke-direct {v1, p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$2;-><init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase;)V

    invoke-static {p1, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1207
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->deleteRows(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    goto :goto_0
.end method

.method public deleteItems([Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->deleteItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method protected final encodeColumnField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const-class v4, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 485
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->encodingMethodName()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "encodingMethodName":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->encodeColumnFieldWithMethod(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 494
    :cond_0
    :goto_0
    return-object v1

    .line 487
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 488
    .local v3, "object":Ljava/lang/Object;
    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 489
    :cond_2
    instance-of v4, v3, Ljava/util/Date;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmssSSSZ"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/util/Date;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 490
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v4, v3, Ljava/util/Calendar;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmssSSSZ"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/util/Calendar;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 491
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v4, v3, Ljava/lang/Enum;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/Enum;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 492
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->encodeColumnFieldCustom(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "custom":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 494
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected encodeColumnFieldCustom(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected encodeColumnFieldWithMethod(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 507
    const-class v5, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 508
    .local v2, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 509
    .local v4, "object":Ljava/lang/Object;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    .line 514
    :goto_0
    return-object v5

    .line 510
    :cond_0
    invoke-interface {v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->encodingMethodArgumentType()Ljava/lang/Class;

    move-result-object v1

    .line 511
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 512
    .local v0, "argumentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->encodingMethodName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Class;

    aput-object v0, v7, v9

    invoke-static {v5, v6, v7}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 513
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 514
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v9

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .end local v0    # "argumentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    move-object v0, v1

    .line 511
    goto :goto_1
.end method

.method protected getAddColumnCommand(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 9
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1040
    const-class v7, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 1042
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v4, "modifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "databaseColumnName":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnType(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isPrimaryKey()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isPrimaryKeyAutoIncremented()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isUnique()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "upgrade column cannot be primary or unique"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1050
    :cond_1
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CURRENT_DATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "upgrade column cannot have CURRENT_DATE default"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1052
    :cond_2
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CURRENT_TIME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "upgrade column cannot have CURRENT_TIME default"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1054
    :cond_3
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CURRENT_TIMESTAMP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "upgrade column cannot have CURRENT_TIMESTAMP default"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1057
    :cond_4
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isNonNull()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "non-null upgrade column must have default"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1060
    :cond_5
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isNonNull()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "NOT NULL"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_6
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEFAULT \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_7
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    move v3, v5

    .line 1064
    .local v3, "hasForeignKeyTable":Z
    :goto_0
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableColumnName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    move v2, v5

    .line 1065
    .local v2, "hasForeignKeyColumn":Z
    :goto_1
    if-eqz v2, :cond_a

    if-nez v3, :cond_a

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "column: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " declares foreign key column: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1066
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not foreign key table"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "hasForeignKeyColumn":Z
    .end local v3    # "hasForeignKeyTable":Z
    :cond_8
    move v3, v6

    .line 1063
    goto :goto_0

    .restart local v3    # "hasForeignKeyTable":Z
    :cond_9
    move v2, v6

    .line 1064
    goto :goto_1

    .line 1067
    .restart local v2    # "hasForeignKeyColumn":Z
    :cond_a
    if-eqz v2, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REFERENCES "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_b
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ALTER TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ADD COLUMN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-static {v4, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1069
    :cond_c
    if-eqz v3, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REFERENCES "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected getColumnField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 833
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mColumnFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 834
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 835
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    .end local v0    # "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContentValueForInsertOrUpdate(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/tuple/JSATuple;
    .locals 10
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;",
            ")",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 452
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 453
    .local v6, "object":Ljava/lang/Object;, "TF;"
    iget-object v7, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mHelper:Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v2

    .line 454
    .local v2, "foreignHelperTableTuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;*>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    move-object v1, v7

    .line 455
    .local v1, "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :goto_0
    if-eqz v2, :cond_2

    .line 456
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    move-object v4, v7

    .line 459
    .local v4, "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :goto_1
    if-eqz v4, :cond_0

    if-nez v6, :cond_5

    .line 460
    :cond_0
    if-eqz v6, :cond_3

    new-instance v7, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p2, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->encodeColumnField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :goto_2
    return-object v7

    .end local v1    # "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .end local v4    # "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :cond_1
    move-object v1, v8

    .line 454
    goto :goto_0

    .restart local v1    # "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :cond_2
    move-object v4, v8

    .line 456
    goto :goto_1

    .line 461
    .restart local v4    # "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :cond_3
    const-class v7, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p2, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 462
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v8

    goto :goto_2

    .line 463
    :cond_4
    new-instance v7, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v8}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 475
    .end local v0    # "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    :cond_5
    invoke-virtual {v4, v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "foreignUniqueId":Ljava/lang/String;
    invoke-static {p4}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->access$500(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->contains(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/String;)Z

    move-result v3

    .line 477
    .local v3, "foreignObjectUpdated":Z
    if-nez v3, :cond_6

    invoke-static {p4}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->access$600(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)I

    move-result v7

    if-eqz v7, :cond_6

    .line 478
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {p4}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->access$700(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    move-result-object v8

    .line 477
    invoke-virtual {v4, v6, v7, v8}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->insertOrUpdateItem(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Z

    .line 479
    :cond_6
    new-instance v7, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected bridge synthetic getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    check-cast p3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getContentValuesForInsertOrUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForInsertOrUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Landroid/content/ContentValues;
    .locals 8
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v0, "cv":Landroid/content/ContentValues;
    if-nez p3, :cond_0

    new-instance p3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    .end local p3    # "params":Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    invoke-direct {p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;-><init>()V

    .line 428
    .restart local p3    # "params":Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    :cond_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    invoke-static {p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->access$500(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    move-result-object v4

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;->add(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/String;)V

    .line 431
    :cond_1
    :try_start_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mColumnFields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 432
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0, p1, v2, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getContentValueForInsertOrUpdate(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v3

    .line 433
    .local v3, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 434
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 437
    .local v1, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error get content items for insert or update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    aput-object v7, v5, v6

    invoke-static {v4, v1, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 438
    const/4 v0, 0x0

    .line 441
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_3
    return-object v0
.end method

.method protected bridge synthetic getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    check-cast p3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getContentValuesForUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Landroid/content/ContentValues;
    .locals 1
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getContentValuesForInsertOrUpdate(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getCreateTableColumns(I)Ljava/util/List;
    .locals 13
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 852
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v10, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mColumnFields:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 855
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "databaseColumnName":Ljava/lang/String;
    const-class v11, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 857
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v6, "modifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnType(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isPrimaryKey()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isPrimaryKeyAutoIncremented()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_0
    move v7, v8

    .line 861
    .local v7, "pk":Z
    :goto_1
    if-eqz v7, :cond_6

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isPrimaryKeyAutoIncremented()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "PRIMARY KEY AUTOINCREMENT"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_1
    :goto_2
    if-nez v7, :cond_2

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isUnique()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "UNIQUE"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_2
    if-nez v7, :cond_3

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->isNonNull()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "NOT NULL"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_3
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DEFAULT \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_4
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    move v5, v8

    .line 869
    .local v5, "hasForeignKeyTable":Z
    :goto_3
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableColumnName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    move v4, v8

    .line 870
    .local v4, "hasForeignKeyColumn":Z
    :goto_4
    if-eqz v4, :cond_9

    if-nez v5, :cond_9

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "column: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " declares foreign key column: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 871
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableColumnName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but not foreign key table"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v4    # "hasForeignKeyColumn":Z
    .end local v5    # "hasForeignKeyTable":Z
    .end local v7    # "pk":Z
    :cond_5
    move v7, v9

    .line 860
    goto/16 :goto_1

    .line 862
    .restart local v7    # "pk":Z
    :cond_6
    if-eqz v7, :cond_1

    const-string v11, "PRIMARY KEY"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    move v5, v9

    .line 868
    goto :goto_3

    .restart local v5    # "hasForeignKeyTable":Z
    :cond_8
    move v4, v9

    .line 869
    goto :goto_4

    .line 872
    .restart local v4    # "hasForeignKeyColumn":Z
    :cond_9
    if-eqz v4, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "REFERENCES "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableColumnName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_a
    :goto_5
    new-instance v11, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v12, " "

    invoke-static {v6, v12}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v2, v12}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 874
    :cond_b
    if-eqz v5, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "REFERENCES "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->foreignKeyTableName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 879
    .end local v0    # "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    .end local v2    # "databaseColumnName":Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "hasForeignKeyColumn":Z
    .end local v5    # "hasForeignKeyTable":Z
    .end local v6    # "modifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pk":Z
    :cond_c
    return-object v1
.end method

.method protected getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 929
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const-class v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 930
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->name()Ljava/lang/String;

    move-result-object v1

    .line 931
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected final getDatabaseColumnType(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 7
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 884
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 885
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "TEXT"

    .line 907
    :cond_0
    :goto_0
    return-object v2

    .line 886
    :cond_1
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAIntegerUtil;->isInteger(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "INTEGER"

    goto :goto_0

    .line 887
    :cond_2
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAIntegerUtil;->isFloatingPoint(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "REAL"

    goto :goto_0

    .line 888
    :cond_3
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSABooleanUtil;->isBoolean(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "TEXT"

    goto :goto_0

    .line 889
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v2, "TEXT"

    goto :goto_0

    .line 891
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "foreign key has no unique id to reference"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 893
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "unique id cannot reference itself as a foreign key"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 895
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnType(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 897
    :cond_8
    iget v5, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCurrentVersion:I

    invoke-static {v0, v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnFields(Ljava/lang/Class;I)Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    move-result-object v3

    .line 898
    .local v3, "fields":Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    invoke-static {v3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->access$000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnType(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 900
    :cond_9
    const-class v5, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 901
    .local v1, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->encodingMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->decodingMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v2, "TEXT"

    goto/16 :goto_0

    .line 903
    :cond_a
    const-class v5, Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v2, "TEXT"

    goto/16 :goto_0

    .line 904
    :cond_b
    const-class v5, Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-class v5, Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    const-string v2, "TEXT"

    goto/16 :goto_0

    .line 906
    :cond_d
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnTypeCustom(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "custom":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 909
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "field column type cannot be resolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", use simple type or provide encodingMethodName and decodingMethodName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 911
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected getDatabaseColumnTypeCustom(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 919
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemColumnFieldValueFromCursor(Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;
    .locals 7
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .param p5, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getItemColumnFieldValueFromCursor(Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-string v0, "_ROWID_"

    .line 384
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 394
    :try_start_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return-object v1

    .line 395
    :cond_0
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v2, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->encodeColumnField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error retrieving unique id for item on table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected getUpgradeTableCommands(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/util/List;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mColumnFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 1032
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getDatabaseColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->isExistingColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getAddColumnCommand(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1035
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)J
    .locals 2

    .prologue
    .line 313
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    check-cast p3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)J
    .locals 8
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;",
            ")J"
        }
    .end annotation

    .prologue
    .line 1084
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    const-wide/16 v2, -0x1

    .line 1095
    :cond_0
    :goto_0
    return-wide v2

    .line 1085
    :cond_1
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "oldId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setDefaultValuesOnInsert(Ljava/lang/Object;)V

    .line 1087
    invoke-super {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSADbBase;->insertItemReturningRowId(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;)J

    move-result-wide v2

    .line 1088
    .local v2, "newId":J
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyIsRowId:Z

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1090
    :try_start_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->decodeColumnField(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error setting new id on item insert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;
    .locals 13
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "columnPrefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "recursive"    # Z
    .param p5, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v8, 0x0

    .line 606
    :cond_1
    :goto_0
    return-object v8

    .line 553
    :cond_2
    const/4 v11, 0x0

    .line 556
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-nez p5, :cond_3

    new-instance p5, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    .end local p5    # "params":Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    invoke-direct/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;-><init>()V

    .line 566
    .restart local p5    # "params":Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    :cond_3
    :try_start_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    .line 567
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getItemColumnFieldValueFromCursor(Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;

    move-result-object v11

    .line 568
    invoke-static/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$800(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    move-result-object v3

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, p0, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->get(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 569
    .local v8, "cachedItem":Ljava/lang/Object;, "TT;"
    if-nez v8, :cond_1

    .line 573
    .end local v8    # "cachedItem":Ljava/lang/Object;, "TT;"
    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    :cond_4
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCls:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 574
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 575
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 580
    .local v1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_5

    .line 581
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1, v0, v11}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setItemColumnFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 582
    invoke-static/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$800(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;->add(Lnz/co/jsalibrary/android/database/JSATypedDbBase;Ljava/lang/Object;)V

    .line 586
    :cond_5
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mColumnFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .local v2, "field":Ljava/lang/reflect/Field;
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 587
    invoke-direct/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setItemColumnFieldFromCursor(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 604
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v10

    .line 605
    .local v10, "exception":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading item from cursor: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    aput-object v5, v3, v4

    invoke-static {v0, v10, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 606
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 568
    .end local v10    # "exception":Ljava/lang/Exception;
    .restart local v11    # "primaryKeyValue":Ljava/lang/Object;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 590
    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v1    # "item":Ljava/lang/Object;, "TT;"
    .restart local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_7
    if-eqz p4, :cond_8

    :try_start_1
    invoke-static/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mLookupFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .restart local v2    # "field":Ljava/lang/reflect/Field;
    move-object v0, p0

    move-object v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 591
    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setItemLookupField(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V

    goto :goto_3

    .line 594
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_8
    if-eqz p4, :cond_9

    invoke-static/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mLookupManyToManyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .restart local v2    # "field":Ljava/lang/reflect/Field;
    move-object v0, p0

    move-object v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 595
    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setItemLookupManyToManyField(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V

    goto :goto_4

    .line 598
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_9
    if-eqz p4, :cond_a

    invoke-static/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mDerivedValueFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .restart local v2    # "field":Ljava/lang/reflect/Field;
    move-object v0, p0

    move-object v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 599
    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setItemDerivedValueField(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_a
    move-object v8, v1

    .line 602
    goto/16 :goto_0
.end method

.method public bridge synthetic loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    check-cast p4, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/util/List;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "columnPrefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "recursive"    # Z
    .param p5, "closeCursorAfterOperation"    # Z
    .param p6, "queryParams"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "ZZ",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    if-eqz p5, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v6

    .line 526
    :cond_2
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    .line 528
    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->loadItemFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 531
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    if-eqz p5, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    if-eqz p5, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    check-cast p4, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "recursive"    # Z
    .param p4, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    if-nez p4, :cond_0

    new-instance p4, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    .end local p4    # "params":Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    invoke-direct {p4}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;-><init>()V

    .line 538
    .restart local p4    # "params":Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/database/JSADbBase;->loadItemsFromCursor(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected setDefaultValueWithMethod(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 8
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1112
    const-class v3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;

    .line 1113
    .local v0, "column":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;->defaultValueMethodName()Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "defaultValueMethodName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v1, v4}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1117
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1118
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1119
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setDefaultValuesOnInsert(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mColumnFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 1102
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setDefaultValueWithMethod(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error setting default value on item on insert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0

    .line 1108
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    return-void
.end method

.method protected setItemColumnFieldFromCursor(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V
    .locals 8
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p5, "recursive"    # Z
    .param p6, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/Cursor;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->setItemColumnFieldFromCursor(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V

    .line 614
    return-void
.end method

.method protected setItemColumnFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setItemDerivedValueField(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V
    .locals 10
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .param p5, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 758
    if-eqz p4, :cond_0

    invoke-static {p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I

    move-result v3

    if-nez v3, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    const-class v3, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;

    .line 762
    .local v0, "annotation":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseDerivedValue;->methodName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v8

    const-class v6, Landroid/database/sqlite/SQLiteDatabase;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->getDeclaredOrInheritedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 764
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 765
    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v8

    aput-object p3, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 768
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 769
    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setItemLookupField(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V
    .locals 10
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .param p5, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 684
    if-eqz p4, :cond_0

    invoke-static {p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I

    move-result v1

    if-nez v1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const-class v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;

    .line 688
    .local v9, "lookup":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;
    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mHelper:Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    invoke-interface {v9}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;->cls()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v7

    .line 689
    .local v7, "foreignHelperTableTuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;*>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    move-object v6, v1

    .line 690
    .local v6, "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :goto_1
    if-eqz v7, :cond_2

    .line 691
    invoke-virtual {v7}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    move-object v0, v1

    .line 694
    .local v0, "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :cond_2
    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 697
    invoke-interface {v9}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookup;->column()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 698
    invoke-static {p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$1000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    move-result-object v5

    .line 697
    invoke-virtual/range {v0 .. v5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getSelectedItems(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v8

    .line 699
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 700
    invoke-virtual {p2, p1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    .end local v6    # "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    move-object v6, v0

    .line 689
    goto :goto_1
.end method

.method protected setItemLookupManyToManyField(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)V
    .locals 18
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "recursive"    # Z
    .param p5, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Field;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 708
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p4, :cond_0

    invoke-static/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I

    move-result v13

    if-nez v13, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const-class v13, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;

    .line 714
    .local v11, "lookup":Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mHelper:Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    invoke-interface {v11}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;->joinTableItemClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v8

    .line 715
    .local v8, "joinHelperTableTuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;*>;"
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    move-object v7, v13

    .line 716
    .local v7, "joinHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :goto_1
    if-eqz v8, :cond_4

    .line 717
    invoke-virtual {v8}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    move-object v9, v13

    .line 718
    .local v9, "joinTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :goto_2
    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    .line 721
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mHelper:Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    invoke-interface {v11}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;->itemClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getHelperTableTuple(Ljava/lang/Class;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v4

    .line 722
    .local v4, "foreignHelperTableTuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;*>;"
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;

    move-object v3, v13

    .line 723
    .local v3, "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :goto_3
    if-eqz v4, :cond_6

    .line 724
    invoke-virtual {v4}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnz/co/jsalibrary/android/database/JSATypedDbBase;

    move-object v5, v13

    .line 725
    .local v5, "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :goto_4
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 728
    invoke-virtual {v7}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 729
    invoke-interface {v11}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;->joinTableItemColumn()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AS id FROM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 730
    invoke-interface {v11}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseLookupManyToMany;->joinTableMatchColumn()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = ?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p1}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUniqueId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 728
    invoke-virtual {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 733
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 735
    .local v12, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getCursorValues(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 737
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 741
    :cond_2
    new-instance v13, Lnz/co/jsalibrary/android/database/JSATypedDbBase$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$1;-><init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase;)V

    invoke-static {v12, v13}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v6

    .line 748
    .local v6, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/database/JSATypedDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static/range {p5 .. p5}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->access$1000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    move-result-object v15

    invoke-virtual {v5, v6, v13, v14, v15}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getItems(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ZLnz/co/jsalibrary/android/database/JSADbBase$QueryParams;)Ljava/util/List;

    move-result-object v10

    .line 749
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 750
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 715
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .end local v4    # "foreignHelperTableTuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;*>;"
    .end local v5    # "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    .end local v6    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "joinHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    .end local v9    # "joinTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v12    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 717
    .restart local v7    # "joinHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 722
    .restart local v4    # "foreignHelperTableTuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/jsalibrary/android/database/JSATypedDbHelper;*>;"
    .restart local v9    # "joinTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 724
    .restart local v3    # "foreignHelper":Lnz/co/jsalibrary/android/database/JSATypedDbHelper;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 737
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "foreignTable":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TF;>;"
    .restart local v12    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v13

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v13
.end method

.method public upgradeTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1017
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSATypedDbBase;, "Lnz/co/jsalibrary/android/database/JSATypedDbBase<TT;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->isExistingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1018
    iget v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->mCurrentVersion:I

    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getCreateTableColumns(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->buildCreateTableSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1026
    :cond_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/database/JSATypedDbBase;->getUpgradeTableCommands(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/util/List;

    move-result-object v1

    .line 1024
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1025
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
