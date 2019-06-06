.class public final Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;
.super Ljava/lang/Object;
.source "JSAFilterUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapItemMapFunction"
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
        "Ljava/util/Map",
        "<TS;TT;>;TT;>;"
    }
.end annotation


# instance fields
.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction<TS;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;->mKey:Ljava/lang/Object;

    .line 110
    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction<TS;TT;>;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;->map(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TS;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction<TS;TT;>;"
    .local p1, "item":Ljava/util/Map;, "Ljava/util/Map<TS;TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;->mKey:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
