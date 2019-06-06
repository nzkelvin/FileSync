.class public Lnz/co/jsalibrary/android/util/JSABooleanUtil$SynchronisedBooleanWrapper;
.super Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;
.source "JSABooleanUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSABooleanUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronisedBooleanWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;-><init>()V

    .line 115
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;-><init>(Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public andValue(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->andValue(Z)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notValue()Z
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    invoke-super {p0}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->notValue()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public orValue(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->orValue(Z)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->setValue(Z)V

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public xorValue(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/util/JSABooleanUtil$BooleanWrapper;->xorValue(Z)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
