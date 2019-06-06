.class public final Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
.super Ljava/lang/Object;
.source "JSAResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseConstraints"
.end annotation


# instance fields
.field private final mContraintMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->isConstrainedToExplicit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->isConstrainedToString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->isConstrainedToResourceId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->isConstrainedToInteger(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->isConstrainedToFloat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->isConstrainedToBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isConstrainedToBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 726
    sget-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->BOOLEAN:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isConstrainedToExplicit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isConstrainedToFloat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 718
    sget-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->FLOAT:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isConstrainedToInteger(Ljava/lang/String;)Z
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 722
    sget-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->INTEGER:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isConstrainedToResourceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 710
    sget-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->RESOURCE_ID:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isConstrainedToString(Ljava/lang/String;)Z
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 714
    sget-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->STRING:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public constrainToBoolean(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->BOOLEAN:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    return-object p0
.end method

.method public constrainToFloat(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->FLOAT:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-object p0
.end method

.method public constrainToInteger(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->INTEGER:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-object p0
.end method

.method public constrainToResourceId(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 639
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->RESOURCE_ID:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    return-object p0
.end method

.method public constrainToString(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 658
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->mContraintMap:Ljava/util/Map;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->STRING:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-object p0
.end method
