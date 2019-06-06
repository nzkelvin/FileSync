.class Lorg/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private baseUri:Ljava/lang/String;

.field private contextElement:Lorg/jsoup/nodes/Element;

.field private currentToken:Lorg/jsoup/parser/Token;

.field private doc:Lorg/jsoup/nodes/Document;

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/parser/ParseError;",
            ">;"
        }
    .end annotation
.end field

.field private formElement:Lorg/jsoup/nodes/Element;

.field private formattingElements:Lorg/jsoup/helper/DescendableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private fosterInserts:Z

.field private fragmentParsing:Z

.field private framesetOk:Z

.field private headElement:Lorg/jsoup/nodes/Element;

.field private originalState:Lorg/jsoup/parser/TreeBuilderState;

.field private pendingTableCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/parser/Token$Character;",
            ">;"
        }
    .end annotation
.end field

.field reader:Lorg/jsoup/parser/CharacterReader;

.field private stack:Lorg/jsoup/helper/DescendableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lorg/jsoup/parser/TreeBuilderState;

.field tokeniser:Lorg/jsoup/parser/Tokeniser;

.field private trackErrors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jsoup/parser/TreeBuilder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {v0}, Lorg/jsoup/helper/DescendableLinkedList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->framesetOk:Z

    .line 34
    iput-boolean v1, p0, Lorg/jsoup/parser/TreeBuilder;->fosterInserts:Z

    .line 35
    iput-boolean v1, p0, Lorg/jsoup/parser/TreeBuilder;->fragmentParsing:Z

    .line 37
    iput-boolean v1, p0, Lorg/jsoup/parser/TreeBuilder;->trackErrors:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->errors:Ljava/util/List;

    .line 40
    return-void
.end method

.method private varargs clearStackToContext([Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeNames"    # [Ljava/lang/String;

    .prologue
    .line 340
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 341
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 343
    .local v1, "next":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void

    .line 346
    .restart local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    .prologue
    .line 431
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetNames"    # [Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 436
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 438
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "elName":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 440
    const/4 v3, 0x1

    .line 447
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 441
    .restart local v0    # "el":Lorg/jsoup/nodes/Element;
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_2
    invoke-static {v1, p2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    if-eqz p3, :cond_0

    invoke-static {v1, p3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 446
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_3
    const-string v4, "Should not be reachable"

    invoke-static {v4}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialiseParse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 44
    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 45
    new-instance v0, Lorg/jsoup/parser/Tokeniser;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/CharacterReader;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 46
    new-instance v0, Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {v0}, Lorg/jsoup/helper/DescendableLinkedList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    .line 47
    iput-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private insertNode(Lorg/jsoup/nodes/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->isFosterInserts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0
.end method

.method private isElementInQueue(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/Element;)Z
    .locals 3
    .param p2, "element"    # Lorg/jsoup/nodes/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/Element;",
            ">;",
            "Lorg/jsoup/nodes/Element;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "queue":Lorg/jsoup/helper/DescendableLinkedList;, "Lorg/jsoup/helper/DescendableLinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {p1}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 259
    .local v1, "next":Lorg/jsoup/nodes/Element;
    if-ne v1, p2, :cond_0

    .line 260
    const/4 v2, 0x1

    .line 263
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSameFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2
    .param p1, "a"    # Lorg/jsoup/nodes/Element;
    .param p2, "b"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 581
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceInQueue(Ljava/util/LinkedList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 2
    .param p2, "out"    # Lorg/jsoup/nodes/Element;
    .param p3, "in"    # Lorg/jsoup/nodes/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/jsoup/nodes/Element;",
            ">;",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/jsoup/nodes/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 374
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 375
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-virtual {p1, v0, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 377
    return-void

    .line 374
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runParser()V
    .locals 3

    .prologue
    .line 101
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tokeniser;->read()Lorg/jsoup/parser/Token;

    move-result-object v0

    .line 102
    .local v0, "token":Lorg/jsoup/parser/Token;
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 104
    iget-object v1, v0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_0

    .line 107
    return-void
.end method


# virtual methods
.method aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 3
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 351
    sget-boolean v2, Lorg/jsoup/parser/TreeBuilder;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 352
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 355
    .local v1, "next":Lorg/jsoup/nodes/Element;
    if-ne v1, p1, :cond_1

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 359
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method clearFormattingElementsToLastMarker()V
    .locals 2

    .prologue
    .line 626
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 628
    .local v0, "el":Lorg/jsoup/nodes/Element;
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->removeLast()Ljava/lang/Object;

    .line 629
    if-nez v0, :cond_0

    .line 632
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_1
    return-void
.end method

.method clearStackToTableBodyContext()V
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thead"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method clearStackToTableContext()V
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method clearStackToTableRowContext()V
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tr"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method currentElement()Lorg/jsoup/nodes/Element;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method error(Lorg/jsoup/parser/TreeBuilderState;)V
    .locals 5
    .param p1, "state"    # Lorg/jsoup/parser/TreeBuilderState;

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->trackErrors:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->errors:Ljava/util/List;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    const-string v2, "Unexpected token"

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v4}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v4

    invoke-direct {v1, v2, p1, v3, v4}, Lorg/jsoup/parser/ParseError;-><init>(Ljava/lang/String;Lorg/jsoup/parser/TreeBuilderState;Lorg/jsoup/parser/Token;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-void
.end method

.method framesetOk(Z)V
    .locals 0
    .param p1, "framesetOk"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/jsoup/parser/TreeBuilder;->framesetOk:Z

    .line 137
    return-void
.end method

.method framesetOk()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->framesetOk:Z

    return v0
.end method

.method generateImpliedEndTags()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method generateImpliedEndTags(Ljava/lang/String;)V
    .locals 4
    .param p1, "excludeTag"    # Ljava/lang/String;

    .prologue
    .line 536
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "li"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "option"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "optgroup"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rp"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "rt"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 539
    :cond_0
    return-void
.end method

.method getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 650
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 651
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 653
    .local v1, "next":Lorg/jsoup/nodes/Element;
    if-nez v1, :cond_2

    .line 658
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 655
    .restart local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_2
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method getBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method getDocument()Lorg/jsoup/nodes/Document;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method getFormElement()Lorg/jsoup/nodes/Element;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->formElement:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 268
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 270
    .local v1, "next":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHeadElement()Lorg/jsoup/nodes/Element;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->headElement:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method getPendingTableCharacters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/parser/Token$Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->pendingTableCharacters:Ljava/util/List;

    return-object v0
.end method

.method getStack()Lorg/jsoup/helper/DescendableLinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    return-object v0
.end method

.method inButtonScope(Ljava/lang/String;)Z
    .locals 3
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "button"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inListItemScope(Ljava/lang/String;)Z
    .locals 3
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 465
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ul"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inScope(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inScope(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 459
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "caption"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "table"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "marquee"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "object"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/parser/TreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inScope([Ljava/lang/String;)Z
    .locals 3
    .param p1, "targetNames"    # [Ljava/lang/String;

    .prologue
    .line 451
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "caption"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "table"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "marquee"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "object"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inSelectScope(Ljava/lang/String;)Z
    .locals 7
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 477
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 478
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 479
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 480
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "elName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    .end local v1    # "elName":Ljava/lang/String;
    :goto_0
    return v3

    .line 483
    .restart local v0    # "el":Lorg/jsoup/nodes/Element;
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "optgroup"

    aput-object v6, v5, v4

    const-string v6, "option"

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 484
    goto :goto_0

    .line 486
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_2
    const-string v3, "Should not be reachable"

    invoke-static {v3}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    move v3, v4

    .line 487
    goto :goto_0
.end method

.method inTableScope(Ljava/lang/String;)Z
    .locals 3
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 473
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "table"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method insert(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3
    .param p1, "startTagName"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 188
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/nodes/Element;)V

    .line 189
    return-object v0
.end method

.method insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 5
    .param p1, "startTag"    # Lorg/jsoup/parser/Token$StartTag;

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/parser/Tag;->isKnownTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 177
    .local v0, "el":Lorg/jsoup/nodes/Element;
    new-instance v2, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-object v1, v0

    .line 183
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    .local v1, "el":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 181
    .end local v1    # "el":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v4, p1, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0, v2, v3, v4}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 182
    .restart local v0    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/nodes/Element;)V

    move-object v1, v0

    .line 183
    .restart local v1    # "el":Ljava/lang/Object;
    goto :goto_0
.end method

.method insert(Lorg/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    .line 194
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$Character;)V
    .locals 5
    .param p1, "characterToken"    # Lorg/jsoup/parser/Token$Character;

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "script"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "style"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Lorg/jsoup/nodes/DataNode;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v0, "node":Lorg/jsoup/nodes/Node;
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 222
    return-void

    .line 220
    .end local v0    # "node":Lorg/jsoup/nodes/Node;
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "node":Lorg/jsoup/nodes/Node;
    goto :goto_0
.end method

.method insert(Lorg/jsoup/parser/Token$Comment;)V
    .locals 3
    .param p1, "commentToken"    # Lorg/jsoup/parser/Token$Comment;

    .prologue
    .line 210
    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v0, "comment":Lorg/jsoup/nodes/Comment;
    invoke-direct {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    .line 212
    return-void
.end method

.method insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 4
    .param p1, "startTag"    # Lorg/jsoup/parser/Token$StartTag;

    .prologue
    .line 198
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    .line 199
    .local v1, "tag":Lorg/jsoup/parser/Tag;
    new-instance v0, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 200
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-direct {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    .line 201
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v2}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 203
    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->setSelfClosing()Lorg/jsoup/parser/Tag;

    .line 206
    :cond_0
    return-object v0
.end method

.method insertInFosterParent(Lorg/jsoup/nodes/Node;)V
    .locals 5
    .param p1, "in"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "fosterParent":Lorg/jsoup/nodes/Element;
    const-string v3, "table"

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/TreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 672
    .local v2, "lastTable":Lorg/jsoup/nodes/Element;
    const/4 v1, 0x0

    .line 673
    .local v1, "isLastTableParent":Z
    if-eqz v2, :cond_1

    .line 674
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 675
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 676
    const/4 v1, 0x1

    .line 683
    :goto_0
    if-eqz v1, :cond_2

    .line 684
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 685
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Element;->before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 689
    :goto_1
    return-void

    .line 678
    :cond_0
    invoke-virtual {p0, v2}, Lorg/jsoup/parser/TreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_0

    .line 680
    :cond_1
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fosterParent":Lorg/jsoup/nodes/Element;
    check-cast v0, Lorg/jsoup/nodes/Element;

    .restart local v0    # "fosterParent":Lorg/jsoup/nodes/Element;
    goto :goto_0

    .line 688
    :cond_2
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1
.end method

.method insertMarkerToFormattingElements()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 667
    return-void
.end method

.method insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 3
    .param p1, "after"    # Lorg/jsoup/nodes/Element;
    .param p2, "in"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 363
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1, p1}, Lorg/jsoup/helper/DescendableLinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 364
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 365
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Lorg/jsoup/helper/DescendableLinkedList;->add(ILjava/lang/Object;)V

    .line 366
    return-void

    .line 364
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isFosterInserts()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->fosterInserts:Z

    return v0
.end method

.method isFragmentParsing()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->fragmentParsing:Z

    return v0
.end method

.method isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z
    .locals 1
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 646
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/TreeBuilder;->isElementInQueue(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    return v0
.end method

.method isSpecial(Lorg/jsoup/nodes/Element;)Z
    .locals 4
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 548
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x4f

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "applet"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "area"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "article"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "aside"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "base"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "basefont"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "bgsound"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "blockquote"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "body"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "br"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "button"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "caption"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "col"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "colgroup"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "command"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "details"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "dir"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "div"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "dl"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "embed"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "fieldset"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "figcaption"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "figure"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "footer"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "form"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "frame"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "frameset"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "h1"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "h2"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "h3"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "h4"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "h5"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "h6"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "head"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "header"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "hgroup"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "hr"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "html"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "iframe"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "img"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "input"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "isindex"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "li"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "link"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "listing"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "marquee"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "menu"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "meta"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "nav"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "noembed"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "noframes"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "noscript"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "object"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "ol"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "p"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "param"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "plaintext"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "pre"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "script"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "section"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "select"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "style"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "summary"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "table"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "tbody"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "td"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "textarea"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "tfoot"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "th"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "thead"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "tr"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "ul"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "wbr"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "xmp"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method markInsertionMode()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->state:Lorg/jsoup/parser/TreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->originalState:Lorg/jsoup/parser/TreeBuilderState;

    .line 129
    return-void
.end method

.method newPendingTableCharacters()V
    .locals 1

    .prologue
    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 516
    return-void
.end method

.method onStack(Lorg/jsoup/nodes/Element;)Z
    .locals 1
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 252
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/TreeBuilder;->isElementInQueue(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    return v0
.end method

.method originalState()Lorg/jsoup/parser/TreeBuilderState;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->originalState:Lorg/jsoup/parser/TreeBuilderState;

    return-object v0
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState;->Initial:Lorg/jsoup/parser/TreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->state:Lorg/jsoup/parser/TreeBuilderState;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    .line 54
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "inputFragment"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/jsoup/nodes/Element;
    .param p3, "baseUri"    # Ljava/lang/String;
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
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-direct {p0, p1, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 61
    iput-boolean v4, p0, Lorg/jsoup/parser/TreeBuilder;->fragmentParsing:Z

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "root":Lorg/jsoup/nodes/Element;
    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Document;->quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    .line 69
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "contextTag":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "textarea"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 83
    :goto_0
    new-instance v1, Lorg/jsoup/nodes/Element;

    .end local v1    # "root":Lorg/jsoup/nodes/Element;
    const-string v2, "html"

    invoke-static {v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 84
    .restart local v1    # "root":Lorg/jsoup/nodes/Element;
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Document;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 85
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2, v1}, Lorg/jsoup/helper/DescendableLinkedList;->push(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->resetInsertionMode()V

    .line 90
    .end local v0    # "contextTag":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    .line 91
    if-eqz p2, :cond_7

    .line 92
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v2

    .line 94
    :goto_1
    return-object v2

    .line 72
    .restart local v0    # "contextTag":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "iframe"

    aput-object v3, v2, v5

    const-string v3, "noembed"

    aput-object v3, v2, v4

    const-string v3, "noframes"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v4, "style"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "xmp"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v2, "script"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v2, "noscript"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 78
    :cond_5
    const-string v2, "plaintext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 79
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 81
    :cond_6
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 94
    .end local v0    # "contextTag":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method pop()Lorg/jsoup/nodes/Element;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 236
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "td"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->state:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilderState;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-string v0, "pop td not in cell"

    invoke-static {v2, v0}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "popping html!"

    invoke-static {v2, v0}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method popStackToBefore(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 317
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 319
    .local v1, "next":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void

    .line 322
    .restart local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method popStackToClose(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 293
    .local v1, "next":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 300
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void

    .line 297
    .restart local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method varargs popStackToClose([Ljava/lang/String;)V
    .locals 3
    .param p1, "elNames"    # [Ljava/lang/String;

    .prologue
    .line 303
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 304
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 306
    .local v1, "next":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 313
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void

    .line 310
    .restart local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method process(Lorg/jsoup/parser/Token;)Z
    .locals 1
    .param p1, "token"    # Lorg/jsoup/parser/Token;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 111
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->state:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/TreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    return v0
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z
    .locals 1
    .param p1, "token"    # Lorg/jsoup/parser/Token;
    .param p2, "state"    # Lorg/jsoup/parser/TreeBuilderState;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 116
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/TreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    return v0
.end method

.method push(Lorg/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V
    .locals 4
    .param p1, "in"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 561
    const/4 v2, 0x0

    .line 562
    .local v2, "numSeen":I
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v3}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 563
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 565
    .local v0, "el":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_2

    .line 576
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v3, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    .line 577
    return-void

    .line 568
    .restart local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->isSameFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 569
    add-int/lit8 v2, v2, 0x1

    .line 571
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 572
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method reconstructFormattingElements()V
    .locals 7

    .prologue
    .line 588
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v3

    .line 589
    .local v3, "size":I
    if-eqz v3, :cond_0

    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v5}, Lorg/jsoup/parser/TreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 593
    .local v0, "entry":Lorg/jsoup/nodes/Element;
    add-int/lit8 v2, v3, -0x1

    .line 594
    .local v2, "pos":I
    const/4 v4, 0x0

    .line 596
    .local v4, "skip":Z
    :cond_2
    if-nez v2, :cond_5

    .line 597
    const/4 v4, 0x1

    .line 605
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 606
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lorg/jsoup/nodes/Element;
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 607
    .restart local v0    # "entry":Lorg/jsoup/nodes/Element;
    :cond_4
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 610
    const/4 v4, 0x0

    .line 611
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jsoup/parser/TreeBuilder;->insert(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 613
    .local v1, "newEl":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 616
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5, v2, v1}, Lorg/jsoup/helper/DescendableLinkedList;->add(ILjava/lang/Object;)V

    .line 617
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lorg/jsoup/helper/DescendableLinkedList;->remove(I)Ljava/lang/Object;

    .line 620
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_3

    goto :goto_0

    .line 600
    .end local v1    # "newEl":Lorg/jsoup/nodes/Element;
    :cond_5
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lorg/jsoup/nodes/Element;
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 601
    .restart local v0    # "entry":Lorg/jsoup/nodes/Element;
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1
.end method

.method removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V
    .locals 3
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 635
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 636
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 638
    .local v1, "next":Lorg/jsoup/nodes/Element;
    if-ne v1, p1, :cond_0

    .line 639
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 643
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :cond_1
    return-void
.end method

.method removeFromStack(Lorg/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 278
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v2}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 281
    .local v1, "next":Lorg/jsoup/nodes/Element;
    if-ne v1, p1, :cond_0

    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 283
    const/4 v2, 0x1

    .line 286
    .end local v1    # "next":Lorg/jsoup/nodes/Element;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "out"    # Lorg/jsoup/nodes/Element;
    .param p2, "in"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 662
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->formattingElements:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->replaceInQueue(Ljava/util/LinkedList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 663
    return-void
.end method

.method replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "out"    # Lorg/jsoup/nodes/Element;
    .param p2, "in"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 369
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->replaceInQueue(Ljava/util/LinkedList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 370
    return-void
.end method

.method resetInsertionMode()V
    .locals 5

    .prologue
    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "last":Z
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 382
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 384
    .local v3, "node":Lorg/jsoup/nodes/Element;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 385
    const/4 v1, 0x1

    .line 386
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 388
    :cond_1
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "name":Ljava/lang/String;
    const-string v4, "select"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InSelect:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 427
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "node":Lorg/jsoup/nodes/Element;
    :cond_2
    :goto_0
    return-void

    .line 392
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "node":Lorg/jsoup/nodes/Element;
    :cond_3
    const-string v4, "td"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "td"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    .line 393
    :cond_4
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InCell:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 395
    :cond_5
    const-string v4, "tr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 396
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InRow:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 398
    :cond_6
    const-string v4, "tbody"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "thead"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "tfoot"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 399
    :cond_7
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InTableBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 401
    :cond_8
    const-string v4, "caption"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 402
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InCaption:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 404
    :cond_9
    const-string v4, "colgroup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 405
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 407
    :cond_a
    const-string v4, "table"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 408
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InTable:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 410
    :cond_b
    const-string v4, "head"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 411
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 413
    :cond_c
    const-string v4, "body"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 414
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_0

    .line 416
    :cond_d
    const-string v4, "frameset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 417
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InFrameset:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_0

    .line 419
    :cond_e
    const-string v4, "html"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 420
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->BeforeHead:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_0

    .line 422
    :cond_f
    if-eqz v1, :cond_0

    .line 423
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_0
.end method

.method setBaseUri(Lorg/jsoup/nodes/Element;)V
    .locals 2
    .param p1, "base"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 156
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Document;->setBaseUri(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method setFormElement(Lorg/jsoup/nodes/Element;)V
    .locals 0
    .param p1, "formElement"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 511
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->formElement:Lorg/jsoup/nodes/Element;

    .line 512
    return-void
.end method

.method setFosterInserts(Z)V
    .locals 0
    .param p1, "fosterInserts"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lorg/jsoup/parser/TreeBuilder;->fosterInserts:Z

    .line 504
    return-void
.end method

.method setHeadElement(Lorg/jsoup/nodes/Element;)V
    .locals 0
    .param p1, "headElement"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 491
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->headElement:Lorg/jsoup/nodes/Element;

    .line 492
    return-void
.end method

.method setPendingTableCharacters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/parser/Token$Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "pendingTableCharacters":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/parser/Token$Character;>;"
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 524
    return-void
.end method

.method state()Lorg/jsoup/parser/TreeBuilderState;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->state:Lorg/jsoup/parser/TreeBuilderState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeBuilder{currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->state:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transition(Lorg/jsoup/parser/TreeBuilderState;)V
    .locals 0
    .param p1, "state"    # Lorg/jsoup/parser/TreeBuilderState;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->state:Lorg/jsoup/parser/TreeBuilderState;

    .line 121
    return-void
.end method
