.class abstract Lorg/jsoup/select/CombiningEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/CombiningEvaluator$Or;,
        Lorg/jsoup/select/CombiningEvaluator$And;
    }
.end annotation


# instance fields
.field final evaluators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/List;

    .line 20
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/select/Evaluator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/select/Evaluator;>;"
    invoke-direct {p0}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    .line 24
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    return-void
.end method
