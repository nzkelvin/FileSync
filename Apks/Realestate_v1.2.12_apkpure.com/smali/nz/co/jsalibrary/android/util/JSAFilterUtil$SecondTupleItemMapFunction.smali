.class public Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;
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
    name = "SecondTupleItemMapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Lnz/co/jsalibrary/android/tuple/JSATuple",
        "<TS;TT;>;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction<TS;TT;>;"
    check-cast p1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;->map(Lnz/co/jsalibrary/android/tuple/JSATuple;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public map(Lnz/co/jsalibrary/android/tuple/JSATuple;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<TS;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$SecondTupleItemMapFunction<TS;TT;>;"
    .local p1, "item":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
