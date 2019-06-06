.class public final enum Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
.super Ljava/lang/Enum;
.source "RESApplicationModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapAppearance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

.field public static final enum HYBRID:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

.field public static final enum MAP:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->MAP:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    new-instance v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    const-string v1, "HYBRID"

    invoke-direct {v0, v1, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->HYBRID:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    sget-object v1, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->MAP:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->HYBRID:Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    aput-object v1, v0, v3

    sput-object v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->$VALUES:[Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    return-object v0
.end method

.method public static values()[Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->$VALUES:[Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    invoke-virtual {v0}, [Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/realestate/android/lib/model/RESApplicationModelBase$MapAppearance;

    return-object v0
.end method
