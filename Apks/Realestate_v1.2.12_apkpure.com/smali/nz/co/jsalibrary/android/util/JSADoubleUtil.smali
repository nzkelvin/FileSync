.class public Lnz/co/jsalibrary/android/util/JSADoubleUtil;
.super Ljava/lang/Object;
.source "JSADoubleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static toValidDoubleOrDefault(Ljava/lang/String;D)D
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 43
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 41
    .restart local p1    # "defaultValue":D
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "exception":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toValidDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
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
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
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
