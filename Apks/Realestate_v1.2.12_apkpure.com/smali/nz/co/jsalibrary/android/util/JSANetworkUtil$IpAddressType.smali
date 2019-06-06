.class public final enum Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;
.super Ljava/lang/Enum;
.source "JSANetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSANetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

.field public static final enum IPV4:Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

.field public static final enum IPV6:Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    const-string v1, "IPV4"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->IPV4:Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    new-instance v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    const-string v1, "IPV6"

    invoke-direct {v0, v1, v3}, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->IPV6:Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    sget-object v1, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->IPV4:Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->IPV6:Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    aput-object v1, v0, v3

    sput-object v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->$VALUES:[Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    return-object v0
.end method

.method public static values()[Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->$VALUES:[Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    invoke-virtual {v0}, [Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz/co/jsalibrary/android/util/JSANetworkUtil$IpAddressType;

    return-object v0
.end method
