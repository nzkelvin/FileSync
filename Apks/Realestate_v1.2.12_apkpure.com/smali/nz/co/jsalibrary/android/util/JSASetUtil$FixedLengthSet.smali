.class public Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;
.super Ljava/util/LinkedHashSet;
.source "JSASetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSASetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedLengthSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x220a917e0f98ed0bL


# instance fields
.field protected final mMaxCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxCapacity"    # I

    .prologue
    .line 20
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;, "Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    iput p1, p0, Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;->mMaxCapacity:I

    .line 22
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;, "Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 25
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    .local v0, "added":Z
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 34
    :cond_0
    :goto_0
    return v2

    .line 27
    :cond_1
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;->size()I

    move-result v3

    iget v4, p0, Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;->mMaxCapacity:I

    if-le v3, v4, :cond_0

    .line 29
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lnz/co/jsalibrary/android/util/JSASetUtil$FixedLengthSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
