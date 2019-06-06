.class public Lnz/co/jsalibrary/android/tuple/JSATuple;
.super Ljava/lang/Object;
.source "JSATuple.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnz/co/jsalibrary/android/tuple/JSATuple",
        "<TS;TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4d17ae90b45842f2L


# instance fields
.field protected mA:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected mB:Ljava/lang/Object;
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
    .line 17
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TS;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 42
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    new-instance v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    iget-object v2, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    check-cast p1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->compareTo(Lnz/co/jsalibrary/android/tuple/JSATuple;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnz/co/jsalibrary/android/tuple/JSATuple;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<TS;TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    .local p1, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    :goto_0
    return v7

    .line 65
    :cond_1
    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Comparable;

    if-nez v6, :cond_2

    iget-object v6, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Comparable;

    if-eqz v6, :cond_4

    :cond_2
    move v3, v8

    .line 66
    .local v3, "isFirstComparable":Z
    :goto_1
    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Comparable;

    if-nez v6, :cond_3

    iget-object v6, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Comparable;

    if-eqz v6, :cond_5

    :cond_3
    move v4, v8

    .line 67
    .local v4, "isSecondComparable":Z
    :goto_2
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "types of tuple are not comparable"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v3    # "isFirstComparable":Z
    .end local v4    # "isSecondComparable":Z
    :cond_4
    move v3, v7

    .line 65
    goto :goto_1

    .restart local v3    # "isFirstComparable":Z
    :cond_5
    move v4, v7

    .line 66
    goto :goto_2

    .line 69
    .restart local v4    # "isSecondComparable":Z
    :cond_6
    if-eqz v3, :cond_8

    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Comparable;

    move-object v0, v6

    .line 70
    .local v0, "cA":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TS;>;"
    :goto_3
    if-eqz v4, :cond_7

    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Comparable;

    move-object v1, v6

    .line 71
    .local v1, "cB":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    :cond_7
    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    iget-object v10, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    invoke-static {v6, v10}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v7

    .line 72
    .local v2, "firstCompare":I
    :goto_4
    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    iget-object v10, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    invoke-static {v6, v10}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v5, v7

    .line 73
    .local v5, "secondCompare":I
    :goto_5
    if-eqz v2, :cond_f

    .end local v2    # "firstCompare":I
    :goto_6
    move v7, v2

    goto :goto_0

    .end local v0    # "cA":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TS;>;"
    .end local v1    # "cB":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    .end local v5    # "secondCompare":I
    :cond_8
    move-object v0, v1

    .line 69
    goto :goto_3

    .line 71
    .restart local v0    # "cA":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TS;>;"
    .restart local v1    # "cB":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    :cond_9
    if-eqz v0, :cond_a

    iget-object v6, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    if-eqz v6, :cond_a

    iget-object v6, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    invoke-interface {v0, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    if-nez v6, :cond_b

    move v2, v9

    goto :goto_4

    :cond_b
    move v2, v8

    goto :goto_4

    .line 72
    .restart local v2    # "firstCompare":I
    :cond_c
    if-eqz v1, :cond_d

    iget-object v6, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    if-eqz v6, :cond_d

    iget-object v6, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    invoke-interface {v1, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_5

    :cond_d
    iget-object v6, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    if-nez v6, :cond_e

    move v5, v9

    goto :goto_5

    :cond_e
    move v5, v8

    goto :goto_5

    .restart local v5    # "secondCompare":I
    :cond_f
    move v2, v5

    .line 73
    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    const/4 v1, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    instance-of v2, p1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 38
    .local v0, "tuple":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<**>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    iget-object v3, v0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    iget-object v3, v0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getA()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    return-object v0
.end method

.method public getB()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    const/4 v0, 0x0

    .line 47
    .local v0, "code":I
    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mA:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATuple;->mB:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
