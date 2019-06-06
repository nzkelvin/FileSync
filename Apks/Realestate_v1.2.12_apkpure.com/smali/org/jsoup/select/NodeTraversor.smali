.class public Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# instance fields
.field private visitor:Lorg/jsoup/select/NodeVisitor;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/NodeVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jsoup/select/NodeVisitor;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/jsoup/select/NodeTraversor;->visitor:Lorg/jsoup/select/NodeVisitor;

    .line 13
    return-void
.end method


# virtual methods
.method public traverse(Lorg/jsoup/nodes/Node;)V
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 16
    move-object v1, p1

    .line 17
    .local v1, "node":Lorg/jsoup/nodes/Node;
    const/4 v0, 0x0

    .line 19
    .local v0, "depth":I
    :goto_0
    if-eqz v1, :cond_2

    .line 20
    iget-object v2, p0, Lorg/jsoup/select/NodeTraversor;->visitor:Lorg/jsoup/select/NodeVisitor;

    invoke-interface {v2, v1, v0}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    .line 21
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 22
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v2

    if-nez v2, :cond_1

    if-lez v0, :cond_1

    .line 26
    iget-object v2, p0, Lorg/jsoup/select/NodeTraversor;->visitor:Lorg/jsoup/select/NodeVisitor;

    invoke-interface {v2, v1, v0}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 27
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 28
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 30
    :cond_1
    iget-object v2, p0, Lorg/jsoup/select/NodeTraversor;->visitor:Lorg/jsoup/select/NodeVisitor;

    invoke-interface {v2, v1, v0}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 31
    if-ne v1, p1, :cond_3

    .line 36
    :cond_2
    return-void

    .line 33
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_0
.end method
