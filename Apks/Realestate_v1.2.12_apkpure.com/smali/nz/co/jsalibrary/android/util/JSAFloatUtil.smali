.class public Lnz/co/jsalibrary/android/util/JSAFloatUtil;
.super Ljava/lang/Object;
.source "JSAFloatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static toValidFloatOrDefault(Ljava/lang/String;F)F
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 43
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 41
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "exception":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toValidFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 29
    :goto_0
    return-object v1

    .line 27
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "exception":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
