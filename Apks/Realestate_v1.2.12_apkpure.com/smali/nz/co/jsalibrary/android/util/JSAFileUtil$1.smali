.class final Lnz/co/jsalibrary/android/util/JSAFileUtil$1;
.super Ljava/lang/Object;
.source "JSAFileUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSAFileUtil;->getNextNonExistentFileInSequence(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$extension:Ljava/lang/String;

.field final synthetic val$indexDigitCount:I

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->val$prefix:Ljava/lang/String;

    iput p2, p0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->val$indexDigitCount:I

    iput-object p3, p0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->val$extension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic generate(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->generate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->val$prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->val$indexDigitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->val$extension:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAFileUtil$1;->val$extension:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
