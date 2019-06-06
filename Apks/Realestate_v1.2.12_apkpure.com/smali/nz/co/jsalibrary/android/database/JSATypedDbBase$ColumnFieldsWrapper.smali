.class final Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
.super Ljava/lang/Object;
.source "JSATypedDbBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSATypedDbBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ColumnFieldsWrapper"
.end annotation


# instance fields
.field private mColumnFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mDerivedValueFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupManyToManyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryKeyField:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$1;

    .prologue
    .line 981
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    .prologue
    .line 981
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->getPrimaryKeyField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    .prologue
    .line 981
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->getColumnFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    .param p1, "x1"    # Ljava/lang/reflect/Field;

    .prologue
    .line 981
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    return-object p1
.end method

.method static synthetic access$1302(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 981
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mColumnFields:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1402(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 981
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mLookupFields:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1502(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 981
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mLookupManyToManyFields:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1602(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 981
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mDerivedValueFields:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    .prologue
    .line 981
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->getLookupFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    .prologue
    .line 981
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->getLookupManyToManyFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;

    .prologue
    .line 981
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->getDerivedValueFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getColumnFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mColumnFields:Ljava/util/List;

    return-object v0
.end method

.method private getDerivedValueFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mDerivedValueFields:Ljava/util/List;

    return-object v0
.end method

.method private getLookupFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mLookupFields:Ljava/util/List;

    return-object v0
.end method

.method private getLookupManyToManyFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mLookupManyToManyFields:Ljava/util/List;

    return-object v0
.end method

.method private getPrimaryKeyField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$ColumnFieldsWrapper;->mPrimaryKeyField:Ljava/lang/reflect/Field;

    return-object v0
.end method
