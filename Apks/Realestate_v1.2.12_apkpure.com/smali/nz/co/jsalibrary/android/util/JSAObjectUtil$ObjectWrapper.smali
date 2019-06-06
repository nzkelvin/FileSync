.class public Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;
.super Ljava/lang/Object;
.source "JSAObjectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAObjectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;, "Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;, "Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    .line 266
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 281
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;, "Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper<TT;>;"
    instance-of v1, p1, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 283
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 282
    check-cast v0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;

    .line 283
    .local v0, "wrapper":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;
    iget-object v1, v0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;, "Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;, "Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->safeHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;, "Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;, "Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper<TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAObjectUtil$ObjectWrapper;->mObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
