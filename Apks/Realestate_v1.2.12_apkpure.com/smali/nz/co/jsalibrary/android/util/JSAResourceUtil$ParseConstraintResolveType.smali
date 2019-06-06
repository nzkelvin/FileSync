.class final enum Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;
.super Ljava/lang/Enum;
.source "JSAResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParseConstraintResolveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

.field public static final enum BOOLEAN:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

.field public static final enum FLOAT:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

.field public static final enum INTEGER:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

.field public static final enum RESOURCE_ID:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

.field public static final enum STRING:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 742
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    const-string v1, "RESOURCE_ID"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->RESOURCE_ID:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    .line 743
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->STRING:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    .line 744
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->INTEGER:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    .line 745
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v5}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->FLOAT:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    .line 746
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v6}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->BOOLEAN:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    .line 738
    const/4 v0, 0x5

    new-array v0, v0, [Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->RESOURCE_ID:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->STRING:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->INTEGER:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    aput-object v1, v0, v4

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->FLOAT:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    aput-object v1, v0, v5

    sget-object v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->BOOLEAN:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    aput-object v1, v0, v6

    sput-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->$VALUES:[Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 738
    const-class v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;
    .locals 1

    .prologue
    .line 738
    sget-object v0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->$VALUES:[Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;

    return-object v0
.end method
