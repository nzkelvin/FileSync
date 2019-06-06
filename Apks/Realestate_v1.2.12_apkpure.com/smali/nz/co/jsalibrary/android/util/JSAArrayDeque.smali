.class public Lnz/co/jsalibrary/android/util/JSAArrayDeque;
.super Ljava/util/AbstractCollection;
.source "JSAArrayDeque.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSADeque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;,
        Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lnz/co/jsalibrary/android/util/JSADeque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 178
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    .prologue
    .line 187
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 188
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->allocateElements(I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 202
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->allocateElements(I)V

    .line 203
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 204
    return-void
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    .prologue
    .line 75
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    return v0
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    .prologue
    .line 75
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    return v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    .prologue
    .line 75
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/util/JSAArrayDeque;I)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    .prologue
    .line 117
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/16 v0, 0x8

    .line 120
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_0

    .line 121
    move v0, p1

    .line 122
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 123
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 124
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 125
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 126
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 129
    if-gez v0, :cond_0

    .line 130
    ushr-int/lit8 v0, v0, 0x1

    .line 132
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    .line 133
    return-void
.end method

.method private checkInvariants()V
    .locals 0

    .prologue
    .line 514
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 163
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    :cond_0
    :goto_0
    return-object p1

    .line 165
    :cond_1
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    if-le v1, v2, :cond_0

    .line 166
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    sub-int v0, v1, v2

    .line 167
    .local v0, "headPortionLen":I
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    invoke-static {v1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    .line 529
    .local v1, "elements":[Ljava/lang/Object;
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .line 530
    .local v4, "mask":I
    iget v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 531
    .local v3, "h":I
    iget v5, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    .line 532
    .local v5, "t":I
    sub-int v8, p1, v3

    and-int v2, v8, v4

    .line 533
    .local v2, "front":I
    sub-int v8, v5, p1

    and-int v0, v8, v4

    .line 536
    .local v0, "back":I
    sub-int v8, v5, v3

    and-int/2addr v8, v4

    if-lt v2, v8, :cond_0

    .line 537
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 540
    :cond_0
    if-ge v2, v0, :cond_2

    .line 541
    if-gt v3, p1, :cond_1

    .line 542
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    :goto_0
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 549
    add-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v4

    iput v7, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 561
    :goto_1
    return v6

    .line 544
    :cond_1
    invoke-static {v1, v6, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    aget-object v7, v1, v4

    aput-object v7, v1, v6

    .line 546
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v4, v3

    invoke-static {v1, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 552
    :cond_2
    if-ge p1, v5, :cond_3

    .line 553
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    :goto_2
    move v6, v7

    .line 561
    goto :goto_1

    .line 556
    :cond_3
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v4, p1

    invoke-static {v1, v8, v1, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    aget-object v8, v1, v6

    aput-object v8, v1, v4

    .line 558
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    goto :goto_2
.end method

.method private doubleCapacity()V
    .locals 7

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/4 v6, 0x0

    .line 141
    iget v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 142
    .local v3, "p":I
    iget-object v5, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 143
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 144
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 145
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    .line 146
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 147
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 148
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v5, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    .line 151
    iput v6, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 152
    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    .line 153
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 854
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 857
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 858
    .local v1, "size":I
    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->allocateElements(I)V

    .line 859
    const/4 v2, 0x0

    iput v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 860
    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    .line 863
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 864
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 841
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 844
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 845
    .local v1, "mask":I
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    if-eq v0, v2, :cond_0

    .line 846
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 845
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_0

    .line 847
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 220
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    .line 221
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->doubleCapacity()V

    .line 222
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 236
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    .line 237
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->doubleCapacity()V

    .line 238
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 727
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 728
    .local v0, "h":I
    iget v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    .line 729
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    .line 730
    const/4 v4, 0x0

    iput v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    iput v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 731
    move v1, v0

    .line 732
    .local v1, "i":I
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 734
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 735
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 736
    if-ne v1, v3, :cond_0

    .line 738
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->clone()Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnz/co/jsalibrary/android/util/JSAArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/util/JSAArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    .line 816
    .local v1, "result":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return-object v1

    .line 819
    .end local v1    # "result":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 692
    if-nez p1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v3

    .line 694
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 695
    .local v1, "mask":I
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 697
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 699
    const/4 v3, 0x1

    goto :goto_0

    .line 700
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;-><init>(Lnz/co/jsalibrary/android/util/JSAArrayDeque;Lnz/co/jsalibrary/android/util/JSAArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 310
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 311
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 312
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 321
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 322
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 323
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 582
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;-><init>(Lnz/co/jsalibrary/android/util/JSAArrayDeque;Lnz/co/jsalibrary/android/util/JSAArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 329
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 335
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 285
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 286
    .local v0, "h":I
    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 288
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    move-object v1, v2

    .line 292
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    .line 290
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 291
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 296
    iget v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v1, v3, v4

    .line 297
    .local v1, "t":I
    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 298
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v2

    .line 302
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 300
    .restart local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 301
    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 719
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 270
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 271
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 351
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v3

    .line 353
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 354
    .local v1, "mask":I
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    .line 356
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 358
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->delete(I)Z

    .line 359
    const/4 v3, 0x1

    goto :goto_0

    .line 361
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 280
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 281
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 379
    if-nez p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v3

    .line 381
    :cond_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 382
    .local v1, "mask":I
    iget v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    add-int/lit8 v4, v4, -0x1

    and-int v0, v4, v1

    .line 384
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->delete(I)Z

    .line 387
    const/4 v3, 0x1

    goto :goto_0

    .line 389
    :cond_2
    add-int/lit8 v4, v0, -0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 573
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->tail:I

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 754
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->size()I

    move-result v0

    .line 796
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 797
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 799
    :cond_0
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 800
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 801
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 802
    :cond_1
    return-object p1
.end method
