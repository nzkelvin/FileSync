.class public final enum Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;
.super Ljava/lang/Enum;
.source "JSAPinEntryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinFailureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

.field public static final enum INVALID_PIN:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

.field public static final enum VALIDATION_FAILURE:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    const-string v1, "INVALID_PIN"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->INVALID_PIN:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    new-instance v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    const-string v1, "VALIDATION_FAILURE"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->VALIDATION_FAILURE:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    sget-object v1, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->INVALID_PIN:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->VALIDATION_FAILURE:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    aput-object v1, v0, v3

    sput-object v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->$VALUES:[Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->$VALUES:[Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;

    return-object v0
.end method
