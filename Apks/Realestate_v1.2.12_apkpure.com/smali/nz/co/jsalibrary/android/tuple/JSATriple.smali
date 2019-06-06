.class public Lnz/co/jsalibrary/android/tuple/JSATriple;
.super Ljava/lang/Object;
.source "JSATriple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


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

.field protected mC:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;TU;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    .local p1, "a":Ljava/lang/Object;, "TS;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    .local p3, "c":Ljava/lang/Object;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    .line 17
    iput-object p3, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    new-instance v0, Lnz/co/jsalibrary/android/tuple/JSATriple;

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

    iget-object v2, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    iget-object v3, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/tuple/JSATriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    const/4 v1, 0x0

    .line 37
    instance-of v2, p1, Lnz/co/jsalibrary/android/tuple/JSATriple;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 38
    check-cast v0, Lnz/co/jsalibrary/android/tuple/JSATriple;

    .line 39
    .local v0, "triple":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<***>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

    iget-object v3, v0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    iget-object v3, v0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

    iget-object v3, v0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

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
    .line 21
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

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
    .line 25
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    return-object v0
.end method

.method public getC()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    const/4 v0, 0x0

    .line 48
    .local v0, "code":I
    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lnz/co/jsalibrary/android/tuple/JSATriple;, "Lnz/co/jsalibrary/android/tuple/JSATriple<TS;TT;TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mA:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mB:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/tuple/JSATriple;->mC:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
