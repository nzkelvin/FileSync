.class public abstract Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;
.super Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
.source "RESDbBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;
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
        "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase",
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
    .line 56
    .local p0, "this":Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase;, "Lnz/co/realestate/android/lib/eo/database/core/RESDbBase$SimpleDbBase<TT;>;"
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/database/core/RESDbBase;-><init>()V

    return-void
.end method
