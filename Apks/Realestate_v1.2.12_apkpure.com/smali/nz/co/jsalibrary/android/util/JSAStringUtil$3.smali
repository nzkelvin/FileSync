.class final Lnz/co/jsalibrary/android/util/JSAStringUtil$3;
.super Ljava/lang/Object;
.source "JSAStringUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAStringUtil;->stringToEnumArray(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)[Ljava/lang/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$defaultItemValue:Ljava/lang/Enum;


# direct methods
.method constructor <init>(Ljava/lang/Enum;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAStringUtil$3;->val$defaultItemValue:Ljava/lang/Enum;

    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAStringUtil$3;->val$cls:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAStringUtil$3;->val$defaultItemValue:Ljava/lang/Enum;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAStringUtil$3;->val$cls:Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->stringToEnum(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAStringUtil$3;->map(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
