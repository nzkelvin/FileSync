.class final enum Lorg/jsoup/parser/TreeBuilderState$1;
.super Lorg/jsoup/parser/TreeBuilderState;
.source "TreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-static {p1}, Lorg/jsoup/parser/TreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    :goto_0
    return v2

    .line 18
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asDoctype()Lorg/jsoup/parser/Token$Doctype;

    move-result-object v0

    .line 24
    .local v0, "d":Lorg/jsoup/parser/Token$Doctype;
    new-instance v1, Lorg/jsoup/nodes/DocumentType;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .local v1, "doctype":Lorg/jsoup/nodes/DocumentType;
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 26
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->isForceQuirks()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v3

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Document;->quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    .line 28
    :cond_2
    sget-object v3, Lorg/jsoup/parser/TreeBuilderState$1;->BeforeHtml:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 31
    .end local v0    # "d":Lorg/jsoup/parser/Token$Doctype;
    .end local v1    # "doctype":Lorg/jsoup/nodes/DocumentType;
    :cond_3
    sget-object v2, Lorg/jsoup/parser/TreeBuilderState$1;->BeforeHtml:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 32
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v2

    goto :goto_0
.end method
