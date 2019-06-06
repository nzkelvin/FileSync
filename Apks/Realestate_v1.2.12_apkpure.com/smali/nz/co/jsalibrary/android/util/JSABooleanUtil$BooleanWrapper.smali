.class public Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;
.super Ljava/lang/Object;
.source "JSABooleanUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSABooleanUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanWrapper"
.end annotation


# instance fields
.field private mValue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;-><init>(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    .line 55
    return-void
.end method


# virtual methods
.method public andValue(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 71
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    .line 72
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 90
    instance-of v2, p1, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;

    if-nez v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 91
    check-cast v0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;

    .line 92
    .local v0, "wrapper":Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;
    iget-boolean v2, v0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    iget-boolean v3, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getValue()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public notValue()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    .line 82
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public orValue(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 66
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    .line 67
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xorValue(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 76
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    xor-int/2addr v0, p1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    .line 77
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->mValue:Z

    return v0
.end method
