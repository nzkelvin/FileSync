.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lorg/jsoup/parser/TreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    .line 24
    .local v0, "treeBuilder":Lorg/jsoup/parser/TreeBuilder;
    invoke-virtual {v0, p0, p1}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 9
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 52
    .local v2, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 53
    .local v1, "body":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v1, p1}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/jsoup/nodes/Node;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/jsoup/nodes/Node;

    .line 55
    .local v7, "nodes":[Lorg/jsoup/nodes/Node;
    move-object v0, v7

    .local v0, "arr$":[Lorg/jsoup/nodes/Node;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 56
    .local v5, "node":Lorg/jsoup/nodes/Node;
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v5    # "node":Lorg/jsoup/nodes/Node;
    :cond_0
    return-object v2
.end method

.method public static parseBodyFragmentRelaxed(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "fragmentHtml"    # Ljava/lang/String;
    .param p1, "context"    # Lorg/jsoup/nodes/Element;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lorg/jsoup/parser/TreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    .line 39
    .local v0, "treeBuilder":Lorg/jsoup/parser/TreeBuilder;
    invoke-virtual {v0, p0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
