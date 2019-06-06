.class final enum Lorg/jsoup/parser/TreeBuilderState$9;
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
    .line 804
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 890
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 891
    const/4 v0, 0x1

    .line 892
    .local v0, "processed":Z
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "tfoot"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "thead"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "tr"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/TreeBuilder;->setFosterInserts(Z)V

    .line 894
    sget-object v1, Lorg/jsoup/parser/TreeBuilderState$9;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v0

    .line 895
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->setFosterInserts(Z)V

    .line 899
    :goto_0
    return v0

    .line 897
    :cond_0
    sget-object v1, Lorg/jsoup/parser/TreeBuilderState$9;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v0

    goto :goto_0
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 11
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 806
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 807
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->newPendingTableCharacters()V

    .line 808
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->markInsertionMode()V

    .line 809
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$9;->InTableText:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 810
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    .line 886
    :cond_0
    :goto_0
    return v5

    .line 811
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 812
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 886
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v5

    goto :goto_0

    .line 813
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 814
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 816
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 817
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v4

    .line 818
    .local v4, "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v4}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "name":Ljava/lang/String;
    const-string v7, "caption"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 820
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->clearStackToTableContext()V

    .line 821
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->insertMarkerToFormattingElements()V

    .line 822
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 823
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$9;->InCaption:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_1

    .line 824
    :cond_5
    const-string v7, "colgroup"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 825
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->clearStackToTableContext()V

    .line 826
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 827
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$9;->InColumnGroup:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_1

    .line 828
    :cond_6
    const-string v7, "col"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 829
    new-instance v5, Lorg/jsoup/parser/Token$StartTag;

    const-string v6, "colgroup"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 830
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    goto :goto_0

    .line 831
    :cond_7
    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "tbody"

    aput-object v8, v7, v5

    const-string v8, "tfoot"

    aput-object v8, v7, v6

    const-string v8, "thead"

    aput-object v8, v7, v9

    invoke-static {v2, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 832
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->clearStackToTableContext()V

    .line 833
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 834
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$9;->InTableBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_1

    .line 835
    :cond_8
    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "td"

    aput-object v8, v7, v5

    const-string v8, "th"

    aput-object v8, v7, v6

    const-string v8, "tr"

    aput-object v8, v7, v9

    invoke-static {v2, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 836
    new-instance v5, Lorg/jsoup/parser/Token$StartTag;

    const-string v6, "tbody"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 837
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    goto/16 :goto_0

    .line 838
    :cond_9
    const-string v7, "table"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 839
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 840
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    const-string v6, "table"

    invoke-direct {v5, v6}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v3

    .line 841
    .local v3, "processed":Z
    if-eqz v3, :cond_2

    .line 842
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    goto/16 :goto_0

    .line 843
    .end local v3    # "processed":Z
    :cond_a
    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "style"

    aput-object v8, v7, v5

    const-string v8, "script"

    aput-object v8, v7, v6

    invoke-static {v2, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 844
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$9;->InHead:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, p1, v5}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v5

    goto/16 :goto_0

    .line 845
    :cond_b
    const-string v6, "input"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 846
    iget-object v5, v4, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 847
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v5

    goto/16 :goto_0

    .line 849
    :cond_c
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_1

    .line 851
    :cond_d
    const-string v6, "form"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 852
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 853
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-nez v6, :cond_0

    .line 856
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 857
    .local v1, "form":Lorg/jsoup/nodes/Element;
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_1

    .line 860
    .end local v1    # "form":Lorg/jsoup/nodes/Element;
    :cond_e
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v5

    goto/16 :goto_0

    .line 862
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 863
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    .line 864
    .local v0, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v2

    .line 866
    .restart local v2    # "name":Ljava/lang/String;
    const-string v7, "table"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 867
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 868
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_0

    .line 871
    :cond_10
    const-string v5, "table"

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->resetInsertionMode()V

    goto/16 :goto_1

    .line 874
    :cond_11
    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "body"

    aput-object v8, v7, v5

    const-string v8, "caption"

    aput-object v8, v7, v6

    const-string v6, "col"

    aput-object v6, v7, v9

    const-string v6, "colgroup"

    aput-object v6, v7, v10

    const/4 v6, 0x4

    const-string v8, "html"

    aput-object v8, v7, v6

    const/4 v6, 0x5

    const-string v8, "tbody"

    aput-object v8, v7, v6

    const/4 v6, 0x6

    const-string v8, "td"

    aput-object v8, v7, v6

    const/4 v6, 0x7

    const-string v8, "tfoot"

    aput-object v8, v7, v6

    const/16 v6, 0x8

    const-string v8, "th"

    aput-object v8, v7, v6

    const/16 v6, 0x9

    const-string v8, "thead"

    aput-object v8, v7, v6

    const/16 v6, 0xa

    const-string v8, "tr"

    aput-object v8, v7, v6

    invoke-static {v2, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 876
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto/16 :goto_0

    .line 879
    :cond_12
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v5

    goto/16 :goto_0

    .line 881
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v2    # "name":Ljava/lang/String;
    :cond_13
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 882
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "html"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 883
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    :cond_14
    move v5, v6

    .line 884
    goto/16 :goto_0
.end method
