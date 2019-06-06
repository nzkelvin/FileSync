.class final Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;
.super Ljava/lang/Object;
.source "JSALoggedBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BroadcastLogInfo"
.end annotation


# instance fields
.field private final mLogStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;->mLogStartTime:J

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$1;

    .prologue
    .line 185
    invoke-direct {p0}, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;)J
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;

    .prologue
    .line 185
    iget-wide v0, p0, Lnz/co/jsalibrary/android/broadcast/JSALoggedBroadcastHandler$BroadcastLogInfo;->mLogStartTime:J

    return-wide v0
.end method
