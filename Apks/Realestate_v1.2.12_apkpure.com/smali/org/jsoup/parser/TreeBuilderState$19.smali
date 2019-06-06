.class final enum Lorg/jsoup/parser/TreeBuilderState$19;
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
    .line 1340
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 6
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1342
    invoke-static {p1}, Lorg/jsoup/parser/TreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1343
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    :cond_0
    :goto_0
    move v2, v3

    .line 1383
    :goto_1
    return v2

    .line 1344
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1345
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    .line 1346
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1347
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_1

    .line 1349
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1350
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v1

    .line 1351
    .local v1, "start":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "name":Ljava/lang/String;
    const-string v4, "html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1353
    sget-object v2, Lorg/jsoup/parser/TreeBuilderState$19;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v1, v2}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v2

    goto :goto_1

    .line 1354
    :cond_4
    const-string v4, "frameset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1355
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 1356
    :cond_5
    const-string v4, "frame"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1357
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 1358
    :cond_6
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1359
    sget-object v2, Lorg/jsoup/parser/TreeBuilderState$19;->InHead:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v1, v2}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v2

    goto :goto_1

    .line 1361
    :cond_7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_1

    .line 1364
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "start":Lorg/jsoup/parser/Token$StartTag;
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "frameset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1365
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1366
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_1

    .line 1369
    :cond_9
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1370
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->isFragmentParsing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "frameset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1371
    sget-object v2, Lorg/jsoup/parser/TreeBuilderState$19;->AfterFrameset:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_0

    .line 1374
    :cond_a
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1375
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "html"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1376
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    move v2, v3

    .line 1377
    goto/16 :goto_1

    .line 1380
    :cond_b
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_1
.end method