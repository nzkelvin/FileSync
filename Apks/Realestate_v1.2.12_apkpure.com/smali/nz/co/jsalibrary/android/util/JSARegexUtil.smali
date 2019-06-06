.class public Lnz/co/jsalibrary/android/util/JSARegexUtil;
.super Ljava/lang/Object;
.source "JSARegexUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileMatchWordsPattern(Ljava/util/List;)Ljava/util/regex/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lnz/co/jsalibrary/android/util/JSARegexUtil$1;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/util/JSARegexUtil$1;-><init>()V

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-static {p0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static compileMatchWordsPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "words"    # [Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSARegexUtil;->compileMatchWordsPattern(Ljava/util/List;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
