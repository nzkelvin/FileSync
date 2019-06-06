.class Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "QueryParser.java"


# static fields
.field private static final combinators:[Ljava/lang/String;


# instance fields
.field private evals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private tq:Lorg/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "+"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "~"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 27
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 28
    return-void
.end method

.method private allElements()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method private byAttribute()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 178
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "cq":Lorg/jsoup/parser/TokenQueue;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "="

    aput-object v3, v2, v7

    const-string v3, "!="

    aput-object v3, v2, v6

    const-string v3, "^="

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "$="

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "*="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "~="

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 183
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeStarting;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$Attribute;

    invoke-direct {v3, v1}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    const-string v2, "="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_2
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_3
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_4
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_5
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_6
    const-string v2, "~="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 207
    :cond_7
    new-instance v2, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v3, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private byClass()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Class;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private byId()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Id;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method private byTag()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 171
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "|"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Tag;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private combinator(C)V
    .locals 8
    .param p1, "combinator"    # C

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 83
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeSubQuery()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "subQuery":Ljava/lang/String;
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 87
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    .line 90
    .local v0, "e":Lorg/jsoup/select/Evaluator;
    :goto_0
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 91
    invoke-static {v2}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v1

    .line 93
    .local v1, "f":Lorg/jsoup/select/Evaluator;
    const/16 v3, 0x3e

    if-ne p1, v3, :cond_1

    .line 94
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v4, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v5, v5, [Lorg/jsoup/select/Evaluator;

    aput-object v1, v5, v6

    new-instance v6, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;

    invoke-direct {v6, v0}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_1
    return-void

    .line 89
    .end local v0    # "e":Lorg/jsoup/select/Evaluator;
    .end local v1    # "f":Lorg/jsoup/select/Evaluator;
    :cond_0
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v0, v3}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "e":Lorg/jsoup/select/Evaluator;
    goto :goto_0

    .line 95
    .restart local v1    # "f":Lorg/jsoup/select/Evaluator;
    :cond_1
    const/16 v3, 0x20

    if-ne p1, v3, :cond_2

    .line 96
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v4, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v5, v5, [Lorg/jsoup/select/Evaluator;

    aput-object v1, v5, v6

    new-instance v6, Lorg/jsoup/select/StructuralEvaluator$Parent;

    invoke-direct {v6, v0}, Lorg/jsoup/select/StructuralEvaluator$Parent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_2
    const/16 v3, 0x2b

    if-ne p1, v3, :cond_3

    .line 98
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v4, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v5, v5, [Lorg/jsoup/select/Evaluator;

    aput-object v1, v5, v6

    new-instance v6, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    invoke-direct {v6, v0}, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_3
    const/16 v3, 0x7e

    if-ne p1, v3, :cond_4

    .line 100
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v4, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v5, v5, [Lorg/jsoup/select/Evaluator;

    aput-object v1, v5, v6

    new-instance v6, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    invoke-direct {v6, v0}, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_4
    new-instance v3, Lorg/jsoup/select/Selector$SelectorParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown combinator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private consumeIndex()I
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "indexS":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private consumeSubQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sq":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x28

    const/16 v4, 0x29

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    :cond_3
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private contains(Z)V
    .locals 4
    .param p1, "own"    # Z

    .prologue
    .line 244
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "searchText":Ljava/lang/String;
    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-eqz p1, :cond_1

    .line 248
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_1
    return-void

    .line 244
    .end local v0    # "searchText":Ljava/lang/String;
    :cond_0
    const-string v1, ":contains"

    goto :goto_0

    .line 250
    .restart local v0    # "searchText":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private findElements()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byId()V

    .line 152
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byClass()V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byTag()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byAttribute()V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->allElements()V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexLessThan()V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexGreaterThan()V

    goto :goto_0

    .line 135
    :cond_6
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexEquals()V

    goto :goto_0

    .line 137
    :cond_7
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->has()V

    goto :goto_0

    .line 139
    :cond_8
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto :goto_0

    .line 141
    :cond_9
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":containsOwn("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 142
    invoke-direct {p0, v5}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_0

    .line 143
    :cond_a
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":matches("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_0

    .line 145
    :cond_b
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":matchesOwn("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    invoke-direct {p0, v5}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_0

    .line 147
    :cond_c
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":not("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->not()V

    goto/16 :goto_0

    .line 150
    :cond_d
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private has()V
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ":has"

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Has;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/StructuralEvaluator$Has;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method private indexEquals()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method private indexGreaterThan()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method private indexLessThan()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method private matches(Z)V
    .locals 4
    .param p1, "own"    # Z

    .prologue
    .line 255
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "regex":Ljava/lang/String;
    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_1

    .line 260
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$MatchesOwn;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :goto_1
    return-void

    .line 255
    .end local v0    # "regex":Ljava/lang/String;
    :cond_0
    const-string v1, ":matches"

    goto :goto_0

    .line 262
    .restart local v0    # "regex":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Matches;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private not()V
    .locals 4

    .prologue
    .line 267
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ":not"

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Not;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/StructuralEvaluator$Not;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lorg/jsoup/select/QueryParser;

    invoke-direct {v0, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "p":Lorg/jsoup/select/QueryParser;
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->parse()Lorg/jsoup/select/Evaluator;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method parse()Lorg/jsoup/select/Evaluator;
    .locals 5

    .prologue
    .line 45
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 47
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v4, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v4, Lorg/jsoup/select/StructuralEvaluator$Root;

    invoke-direct {v4}, Lorg/jsoup/select/StructuralEvaluator$Root;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v3

    invoke-direct {p0, v3}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    .line 54
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 56
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    move-result v1

    .line 58
    .local v1, "seenWhite":Z
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v4, ","

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v0, v3}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v0, "or":Lorg/jsoup/select/CombiningEvaluator$Or;
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 61
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_1
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v4, ","

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "subQuery":Ljava/lang/String;
    invoke-static {v2}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    goto :goto_1

    .line 51
    .end local v0    # "or":Lorg/jsoup/select/CombiningEvaluator$Or;
    .end local v1    # "seenWhite":Z
    .end local v2    # "subQuery":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->findElements()V

    goto :goto_0

    .line 66
    .restart local v1    # "seenWhite":Z
    :cond_2
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v4, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v3

    invoke-direct {p0, v3}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 68
    :cond_3
    if-eqz v1, :cond_4

    .line 69
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->findElements()V

    goto :goto_0

    .line 75
    .end local v1    # "seenWhite":Z
    :cond_5
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 76
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/select/Evaluator;

    .line 78
    :goto_2
    return-object v3

    :cond_6
    new-instance v3, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v4, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    goto :goto_2
.end method
