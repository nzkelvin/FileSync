.class Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;
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
    name = "DescendingIterator"
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
    .line 647
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DescendingIterator;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$300(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    .line 654
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$200(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->fence:I

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/util/JSAArrayDeque;Lnz/co/jsalibrary/android/util/JSAArrayDeque$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/util/JSAArrayDeque$1;

    .prologue
    .line 647
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;-><init>(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 658
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->fence:I

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
    .line 662
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DescendingIterator;"
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 663
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 664
    :cond_0
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$400(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    .line 665
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$400(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v1, v2

    .line 666
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$200(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v1

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 667
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 668
    :cond_2
    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->lastRet:I

    .line 669
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 673
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;, "Lnz/co/jsalibrary/android/util/JSAArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 675
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->lastRet:I

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$500(Lnz/co/jsalibrary/android/util/JSAArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$400(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->cursor:I

    .line 677
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->this$0:Lnz/co/jsalibrary/android/util/JSAArrayDeque;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayDeque;->access$200(Lnz/co/jsalibrary/android/util/JSAArrayDeque;)I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->fence:I

    .line 679
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/jsalibrary/android/util/JSAArrayDeque$DescendingIterator;->lastRet:I

    .line 680
    return-void
.end method
