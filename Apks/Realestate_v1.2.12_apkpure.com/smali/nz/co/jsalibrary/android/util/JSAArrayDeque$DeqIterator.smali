.class Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "JSAArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)V
    .locals 1

    .prologue
    .line 601
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DeqIterator;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$200(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    .line 611
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$300(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->fence:I

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/util/JSAArrayDeque;Lnz/co/jsalibrary/android/util/JSAArrayDeque$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque$1;

    .prologue
    .line 601
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DeqIterator;"
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;-><init>(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 620
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DeqIterator;"
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 625
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 626
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$400(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    aget-object v0, v1, v2

    .line 629
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$300(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v1

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 630
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 631
    :cond_2
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->lastRet:I

    .line 632
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$400(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    .line 633
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 637
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 639
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->lastRet:I

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$500(Lnz/co/jsalibrary/android/util/JSAArrayDeque;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$400(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->cursor:I

    .line 641
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$300(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->fence:I

    .line 643
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DeqIterator;->lastRet:I

    .line 644
    return-void
.end method
