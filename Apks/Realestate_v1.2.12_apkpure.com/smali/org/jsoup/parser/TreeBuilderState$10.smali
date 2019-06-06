.class final enum Lorg/jsoup/parser/TreeBuilderState$10;
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
    .line 902
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 9
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 904
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v6, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v6}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 915
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 916
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/parser/Token$Character;

    .line 917
    .local v1, "character":Lorg/jsoup/parser/Token$Character;
    invoke-static {v1}, Lorg/jsoup/parser/TreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 919
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 920
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "table"

    aput-object v7, v6, v3

    const-string v7, "tbody"

    aput-object v7, v6, v4

    const/4 v7, 0x2

    const-string v8, "tfoot"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "thead"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "tr"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 921
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->setFosterInserts(Z)V

    .line 922
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$10;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v1, v5}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    .line 923
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->setFosterInserts(Z)V

    goto :goto_0

    .line 906
    .end local v1    # "character":Lorg/jsoup/parser/Token$Character;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    .line 907
    .local v0, "c":Lorg/jsoup/parser/Token$Character;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/jsoup/parser/TreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 908
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 935
    .end local v0    # "c":Lorg/jsoup/parser/Token$Character;
    :goto_1
    return v3

    .line 911
    .restart local v0    # "c":Lorg/jsoup/parser/Token$Character;
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 935
    goto :goto_1

    .line 925
    .end local v0    # "c":Lorg/jsoup/parser/Token$Character;
    .restart local v1    # "character":Lorg/jsoup/parser/Token$Character;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v5, Lorg/jsoup/parser/TreeBuilderState$10;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v1, v5}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    goto :goto_0

    .line 928
    :cond_2
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 930
    .end local v1    # "character":Lorg/jsoup/parser/Token$Character;
    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->newPendingTableCharacters()V

    .line 932
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->originalState()Lorg/jsoup/parser/TreeBuilderState;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 933
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v3

    goto :goto_1

    .line 904
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
