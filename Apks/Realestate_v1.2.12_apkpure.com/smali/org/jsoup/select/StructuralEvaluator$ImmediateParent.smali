.class Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateParent"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0
    .param p1, "evaluator"    # Lorg/jsoup/select/Evaluator;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/jsoup/select/StructuralEvaluator;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 75
    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    const/4 v1, 0x0

    .line 78
    if-ne p1, p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 82
    .local v0, "parent":Lorg/jsoup/nodes/Element;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v2, p1, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
