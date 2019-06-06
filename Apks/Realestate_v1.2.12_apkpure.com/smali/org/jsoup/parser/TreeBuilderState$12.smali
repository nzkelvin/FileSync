.class final enum Lorg/jsoup/parser/TreeBuilderState$12;
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
    .line 973
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 3
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    .line 1022
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    const-string v2, "colgroup"

    invoke-direct {v1, v2}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    .line 1023
    .local v0, "processed":Z
    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    .line 1025
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 6
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    const/4 v3, 0x1

    .line 975
    invoke-static {p1}, Lorg/jsoup/parser/TreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 976
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 1018
    :cond_0
    :goto_0
    return v3

    .line 979
    :cond_1
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v5, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v5}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1016
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v3

    goto :goto_0

    .line 981
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    .line 984
    :pswitch_2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 987
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    .line 988
    .local v2, "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "name":Ljava/lang/String;
    const-string v4, "html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 990
    sget-object v3, Lorg/jsoup/parser/TreeBuilderState$12;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, p1, v3}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v3

    goto :goto_0

    .line 991
    :cond_2
    const-string v4, "col"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 992
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 994
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v3

    goto :goto_0

    .line 997
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    .line 998
    .local v0, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v1

    .line 999
    .restart local v1    # "name":Ljava/lang/String;
    const-string v4, "colgroup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1000
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1001
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 1002
    const/4 v3, 0x0

    goto :goto_0

    .line 1004
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1005
    sget-object v4, Lorg/jsoup/parser/TreeBuilderState$12;->InTable:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 1008
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v3

    goto :goto_0

    .line 1011
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1014
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v3

    goto/16 :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
