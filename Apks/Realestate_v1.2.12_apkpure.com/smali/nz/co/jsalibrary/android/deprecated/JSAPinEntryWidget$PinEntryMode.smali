.class public final enum Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;
.super Ljava/lang/Enum;
.source "JSAPinEntryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinEntryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

.field public static final enum CONFIRM:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

.field public static final enum CREATION:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

.field public static final enum ENTRY:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    const-string v1, "ENTRY"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->ENTRY:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    const-string v1, "CREATION"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->CREATION:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    new-instance v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v4}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->CONFIRM:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    sget-object v1, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->ENTRY:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->CREATION:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    aput-object v1, v0, v3

    sget-object v1, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->CONFIRM:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    aput-object v1, v0, v4

    sput-object v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->$VALUES:[Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->$VALUES:[Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinEntryMode;

    return-object v0
.end method
