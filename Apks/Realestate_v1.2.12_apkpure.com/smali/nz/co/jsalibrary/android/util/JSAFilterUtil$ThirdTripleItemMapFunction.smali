.class public Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction;
.super Ljava/lang/Object;
.source "JSAFilterUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThirdTripleItemMapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/jsalibrary/android/tuple/JSATriple",
        "<TS;TT;TU;>;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction<TS;TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction<TS;TT;TU;>;"
    check-cast p1, Lnz/co/jsalibrary/android/tuple/JSATriple;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction;->map(Lnz/co/jsalibrary/android/tuple/JSATriple;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/jsalibrary/android/tuple/JSATriple;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATriple",
            "<TS;TT;TU;>;)TU;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$ThirdTripleItemMapFunction<TS;TT;TU;>;"
    .local p1, "item":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATriple;->getC()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
