.class public Lnz/co/jsalibrary/android/util/JSAReflectionUtil;
.super Ljava/lang/Object;
.source "JSAReflectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMethodNameOnStack(I)Ljava/lang/String;
    .locals 2
    .param p0, "depth"    # I

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 16
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
