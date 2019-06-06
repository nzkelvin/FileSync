.class public Lnz/co/jsalibrary/android/util/JSAMapUtil;
.super Ljava/lang/Object;
.source "JSAMapUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAMapUtil$MapKeyFunction;,
        Lnz/co/jsalibrary/android/util/JSAMapUtil$MapValueFunction;,
        Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;,
        Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashItem;,
        Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;,
        Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapKeys(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAMapUtil$MapValueFunction;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$MapValueFunction",
            "<TS;TT;>;)",
            "Ljava/util/HashMap",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "mapValueFunction":Lnz/co/jsalibrary/android/util/JSAMapUtil$MapValueFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$MapValueFunction<TS;TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "keys cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "function cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TS;TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "key":Ljava/lang/Object;, "TS;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAMapUtil$MapValueFunction;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    .end local v0    # "key":Ljava/lang/Object;, "TS;"
    :cond_2
    return-object v1
.end method

.method public static mapValues(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAMapUtil$MapKeyFunction;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$MapKeyFunction",
            "<TS;TT;>;)",
            "Ljava/util/HashMap",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "mapKeyFunction":Lnz/co/jsalibrary/android/util/JSAMapUtil$MapKeyFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$MapKeyFunction<TS;TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "function cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TS;TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$MapKeyFunction;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v0
.end method

.method public static toHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TS;TT;>;)",
            "Ljava/util/HashMap",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TS;TT;>;"
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 156
    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TS;TT;>;"
    :goto_0
    return-object p0

    .line 155
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TS;TT;>;"
    :cond_0
    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/HashMap;

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0
.end method
