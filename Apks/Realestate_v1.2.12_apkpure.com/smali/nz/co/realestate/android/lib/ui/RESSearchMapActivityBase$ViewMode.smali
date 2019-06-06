.class final enum Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;
.super Ljava/lang/Enum;
.source "RESSearchMapActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

.field public static final enum LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

.field public static final enum MAP_THEN_LIST:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    const-string v1, "MAP_THEN_LIST"

    invoke-direct {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->MAP_THEN_LIST:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    .line 87
    new-instance v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    const-string v1, "LIST_ONLY"

    invoke-direct {v0, v1, v3}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    sget-object v1, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->MAP_THEN_LIST:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->LIST_ONLY:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->$VALUES:[Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    return-object v0
.end method

.method public static values()[Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->$VALUES:[Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    invoke-virtual {v0}, [Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$ViewMode;

    return-object v0
.end method
