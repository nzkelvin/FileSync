.class final enum Lorg/jsoup/parser/TreeBuilderState$18;
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
    .line 1312
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 3
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    const/4 v0, 0x0

    .line 1314
    invoke-static {p1}, Lorg/jsoup/parser/TreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1315
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState$18;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v0

    .line 1337
    :goto_0
    return v0

    .line 1316
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1317
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 1337
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1318
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1319
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 1321
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1322
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState$18;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilderState;)Z

    move-result v0

    goto :goto_0

    .line 1323
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1324
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->isFragmentParsing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1325
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_0

    .line 1328
    :cond_5
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState$18;->AfterAfterBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    goto :goto_1

    .line 1330
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1333
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/TreeBuilder;->error(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 1334
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState$18;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 1335
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
.end method
