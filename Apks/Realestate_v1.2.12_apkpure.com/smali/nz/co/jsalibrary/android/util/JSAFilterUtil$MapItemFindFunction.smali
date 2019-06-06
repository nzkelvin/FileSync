.class public final Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;
.super Ljava/lang/Object;
.source "JSAFilterUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapItemFindFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction",
        "<",
        "Ljava/util/Map",
        "<TS;TT;>;>;"
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

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction<TS;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TS;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;->mKey:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;->mValue:Ljava/lang/Object;

    .line 155
    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction<TS;TT;>;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;->matches(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TS;TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction<TS;TT;>;"
    .local p1, "item":Ljava/util/Map;, "Ljava/util/Map<TS;TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;->mKey:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemFindFunction;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
