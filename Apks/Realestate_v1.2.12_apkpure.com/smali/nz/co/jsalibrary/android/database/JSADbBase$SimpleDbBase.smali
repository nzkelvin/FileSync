.class public abstract Lnz/co/jsalibrary/android/database/JSADbBase$SimpleDbBase;
.super Lnz/co/jsalibrary/android/database/JSADbBase;
.source "JSADbBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSADbBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleDbBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/database/JSADbBase",
        "<TT;",
        "Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;",
        "Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1903
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$SimpleDbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase$SimpleDbBase<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "logTimings"    # Z

    .prologue
    .line 1905
    .local p0, "this":Lnz/co/jsalibrary/android/database/JSADbBase$SimpleDbBase;, "Lnz/co/jsalibrary/android/database/JSADbBase$SimpleDbBase<TT;>;"
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/database/JSADbBase;-><init>(Z)V

    .line 1906
    return-void
.end method
